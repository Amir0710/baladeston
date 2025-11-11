

import 'package:baladeston/application/user/user_state_extensions.dart';
import 'package:baladeston/domain/entitys/user/user_entity.dart';
import 'package:baladeston/domain/filters/user_query_filter.dart';
import 'package:baladeston/presentation/providers/user_cubit/user_cubit.dart';
import 'package:baladeston/presentation/providers/user_cubit/user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestUserPage extends StatefulWidget {
  const TestUserPage({super.key});

  @override
  State<TestUserPage> createState() => _TestUserPageState();
}

class _TestUserPageState extends State<TestUserPage> {
  final _searchController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Load all users initially
    context.read<UserCubit>().loadUsers();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<UserCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("🧪 User Test Page"),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: cubit.refreshFilter,
          ),
        ],
      ),
      body: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          if (state.maybeWhen(loading: () => true, orElse: () => false)) {
            return const Center(child: CircularProgressIndicator());
          }


          if (state.isFailure) {
            return Center(
              child: Text(
                "❌ خطا: ${state}",
                style: const TextStyle(color: Colors.red),
              ),
            );
          }

          final users = state.whenOrNull(success: (user, _) => user) ?? [];

          return Column(
            children: [
              // 🔍 فیلتر بالا
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _searchController,
                        decoration: const InputDecoration(
                          labelText: 'جستجو...',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {
                        final filter = UserQueryFilter(
                          searchTerm: _searchController.text,
                        );
                        cubit.loadUsers(filter);
                      },
                    ),
                  ],
                ),
              ),

              Expanded(
                child: RefreshIndicator(
                  onRefresh: cubit.refreshFilter,
                  child: ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      final user = users[index];
                      return Card(
                        margin:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        child: ListTile(
                          title: Text(user.fullName ?? "—"),
                          subtitle: Text(
                            "${user.email ?? '-'} | ${user.phoneNumber ?? '-'}",
                          ),
                          trailing: PopupMenuButton<String>(
                            onSelected: (value) async {
                              if (value == 'edit') {
                                final updated = user.copyWith(
                                  fullName: "${user.fullName} ⭐",
                                );
                                await cubit.updateUser(updated);
                              } else if (value == 'delete') {
                                await cubit.deleteUserById(user.id!);
                              }
                            },
                            itemBuilder: (context) => [
                              const PopupMenuItem(
                                value: 'edit',
                                child: Text('✏️ ویرایش'),
                              ),
                              const PopupMenuItem(
                                value: 'delete',
                                child: Text('🗑️ حذف'),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          );
        },
      ),

      // ➕ FAB برای ساخت تستی
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newUser = UserEntity(
            fullName: "کاربر تست ${DateTime.now().millisecondsSinceEpoch}",
            email: "test${DateTime.now().millisecondsSinceEpoch}@baladeston.ir",
            phoneNumber: "09120000000",
            status: "active",
            password: "123456",
            createAt: DateTime.now(),
          );

          await cubit.createUser(newUser);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
