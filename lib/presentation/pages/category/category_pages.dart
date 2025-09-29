import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CategoryPages extends StatelessWidget {
  const CategoryPages({super.key});

  Future<List<Map<String, dynamic>>> _fetchCategories() async {
    final client = Supabase.instance.client;
    final response = await client.from('category').select();
    return List<Map<String, dynamic>>.from(response as List);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('دسته‌بندی‌ها')),
        body: FutureBuilder<List<Map<String, dynamic>>>(
          future: _fetchCategories(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              // حالت اسکلتون با Skeletonizer
              return Skeletonizer(
                child: _buildCategoryList(List.generate(
                  7,
                      (index) => {
                    'name': 'Item number $index as title',
                    'description': 'Subtitle here'
                  },
                )),
              );
            } else if (snapshot.hasError) {
              return Center(child: Text('خطا در دریافت داده: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Center(child: Text('دسته‌بندی‌ای یافت نشد.'));
            }

            // نمایش داده واقعی
            return _buildCategoryList(snapshot.data!);
          },
        ),
      ),
    );
  }

  Widget _buildCategoryList(List<Map<String, dynamic>> items) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Card(
          child: ListTile(
            title: Text(item['name'] ?? ''),
            subtitle: Text(item['description'] ?? ''),
            trailing: const Icon(Icons.ac_unit),
          ),
        );
      },
    );
  }
}
