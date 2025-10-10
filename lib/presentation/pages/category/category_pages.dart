import 'dart:io';
import 'dart:typed_data';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import 'package:baladeston/domain/entitys/category/category_entity.dart';
import 'package:baladeston/domain/filters/category_query_filter.dart';
import 'package:baladeston/presentation/providers/category_cubit/category_cubit.dart';
import 'package:baladeston/presentation/providers/category_cubit/category_state.dart';

class CategoryListPage extends StatefulWidget {
  const CategoryListPage({super.key});

  @override
  State<CategoryListPage> createState() => _CategoryListPageState();
}

class _CategoryListPageState extends State<CategoryListPage> {
  final _titleController = TextEditingController();
  final _passwordController = TextEditingController();

  // 📂 متغیر عکس انتخاب‌شده از FilePicker
  Uint8List? _pickedBytes; // برای Web و عمومی
  String? _pickedPath; // برای Android/Desktop

  @override
  void initState() {
    super.initState();
    context.read<CategoryCubit>().loadAllCategories(CategoryQueryFilter());
  }

  @override
  void dispose() {
    _titleController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // 📷 انتخاب عکس با FilePicker (سازگار با همه پلتفرم‌ها)
  Future<void> _pickImage() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: false,
      withData: true, // برای Web لازم است
    );

    if (result != null && result.files.isNotEmpty) {
      setState(() {
        _pickedBytes = result.files.single.bytes;
        _pickedPath = result.files.single.path;
      });
    } else {
      setState(() {
        _pickedBytes = null;
        _pickedPath = null;
      });
    }
  }

  void _addCategory() {
    final title = _titleController.text.trim();
    final password = _passwordController.text.trim();

    if (title.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('همه فیلدها الزامی هستند')),
      );
      return;
    }
    context.read<CategoryCubit>().addCategory(CategoryEntity(
        title: "hi",
        status: "active",
        password: password,
        createdAt: DateTime.now(),
        lastTransaction: DateTime.now(),
        ownerId: 1),
    );

    final newCategory = CategoryEntity(
      id: null,
      title: title,
      password: password,
      status: 'active',
      thumbnailUrl: null,
      // بعد از آپلود تعیین می‌شود
      createdAt: DateTime.now(),
      lastTransaction: DateTime.now(),
      ownerId: 1,
    );

    // ⚙️ آماده‌سازی داده عکس برای Cubit
    File? localFile;
    Uint8List? bytes;

    if (kIsWeb) {
      bytes = _pickedBytes;
    } else if (_pickedPath != null) {
      localFile = File(_pickedPath!);
    }
    context.read<CategoryCubit>().addImage(  kIsWeb
        ? _pickedBytes
        : File(_pickedPath!),
    );

    _titleController.clear();
    _passwordController.clear();
    setState(() {
      _pickedBytes = null;
      _pickedPath = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('لیست دسته‌بندی‌ها')),
      body: Column(
        children: [
          _buildAddCategoryForm(),
          Expanded(child: _buildCategoryList()),
        ],
      ),
    );
  }

  Widget _buildAddCategoryForm() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'افزودن دسته‌بندی جدید',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: _titleController,
                decoration: const InputDecoration(
                  labelText: 'عنوان',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'رمز',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 8),

              // 🖼 انتخاب عکس با FilePicker + پیش‌نمایش
              Row(
                children: [
                  ElevatedButton.icon(
                    icon: const Icon(Icons.photo_library),
                    label: const Text('انتخاب عکس'),
                    onPressed: _pickImage,
                  ),
                  const SizedBox(width: 12),
                  if (_pickedBytes != null)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.memory(
                        _pickedBytes!,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    )
                  else if (_pickedPath != null)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.file(
                        File(_pickedPath!),
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                ],
              ),

              const SizedBox(height: 12),
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text('افزودن'),
                onPressed: _addCategory,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryList() {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(child: Text('هیچ داده‌ای موجود نیست')),
          loading: _buildSkeletonList,
          success: (categories, count) => ListView.builder(
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final category = categories[index];
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                child: ListTile(
                  leading: category.thumbnailUrl != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.network(
                            category.thumbnailUrl!,
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        )
                      : const Icon(Icons.image_not_supported),
                  title: Text(
                    category.title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('ID: ${category.id}'),
                  trailing: Text(
                    category.status ?? '',
                    style: const TextStyle(color: Colors.grey),
                  ),
                ),
              );
            },
          ),
          failure: (msg) => Center(
            child: Text('خطا: $msg', style: const TextStyle(color: Colors.red)),
          ),
        );
      },
    );
  }

  Widget _buildSkeletonList() {
    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: const ListTile(
              title: SizedBox(height: 16),
              subtitle: SizedBox(height: 14),
            ),
          ),
        );
      },
    );
  }
}
