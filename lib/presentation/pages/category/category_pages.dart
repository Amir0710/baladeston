import 'package:baladeston/domain/entitys/category/category_entity.dart';
import 'package:baladeston/domain/filters/category_query_filter.dart';
import 'package:baladeston/presentation/providers/category_cubit/category_cubit.dart';
import 'package:baladeston/presentation/providers/category_cubit/category_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class CategoryListPage extends StatefulWidget {
  const CategoryListPage({super.key});

  @override
  State<CategoryListPage> createState() => _CategoryListPageState();
}

class _CategoryListPageState extends State<CategoryListPage> {
  final _titleController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<CategoryCubit>().loadAllCategories(
          CategoryQueryFilter(),
        );
  }

  @override
  void dispose() {
    _titleController.dispose();
    _passwordController.dispose();
    super.dispose();
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

    final newCategory = CategoryEntity(
      id: null,
      title: title,
      password: password,
      status: 'active',
      thumbnailUrl: null,
      createdAt: DateTime.now(),
      lastTransaction: DateTime.now(),
      ownerId: 1,
    );

    context.read<CategoryCubit>().addCategory(
          newCategory,
          CategoryQueryFilter(),
        );

    // پاک کردن فیلدها
    _titleController.clear();
    _passwordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('لیست دسته‌بندی‌ها'),
      ),
      body: Column(
        children: [
          _buildAddCategoryForm(),
          Expanded(
            child: BlocBuilder<CategoryCubit, CategoryState>(
              builder: (context, state) {
                return state.when(
                  initial: () =>
                      const Center(child: Text('هیچ داده‌ای موجود نیست')),
                  loading: () => _buildSkeletonList(),
                  success: (categories, count) => ListView.builder(
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      final category = categories[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 12),
                        child: ListTile(
                          title: Text(category.title,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          subtitle: Text('ID: ${category.id}'),
                          trailing: Text(
                            category.status ?? '',
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ),
                      );
                    },
                  ),
                  failure: (message) => Center(
                    child: Text(
                      'خطا: $message',
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
                );
              },
            ),
          ),
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
            child: ListTile(
              title: Container(
                height: 16,
                color: Colors.white,
                margin: const EdgeInsets.symmetric(vertical: 4),
              ),
              subtitle: Container(
                height: 14,
                color: Colors.white,
                margin: const EdgeInsets.symmetric(vertical: 4),
              ),
            ),
          ),
        );
      },
    );
  }
}
