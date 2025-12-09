import 'package:baladeston/data/datasources/remote/user_remote_datasource/user_api.dart';
import 'package:baladeston/data/mapper/entity/user_mapper.dart';
import 'package:baladeston/data/mapper/entity/verification_mapper.dart';
import 'package:baladeston/domain/entitys/user/user_entity.dart';
import 'package:baladeston/domain/entitys/verification/verification_entity.dart';
import 'package:baladeston/domain/filters/user_query_filter.dart';
import 'package:baladeston/domain/repositories/user_repository.dart';

class UserRepositoryImplementation implements UserRepository {
  final UserApi _api;

  UserRepositoryImplementation({required UserApi api}) : _api = api;

  @override
  Future<int> countUser({required UserQueryFilter filter}) async {
    try {
      return await _api.countUser(filter: filter);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<UserEntity> createUser({required UserEntity user}) async {
    try {
      final model = user.toModel();
      final resultModel = await _api.createUser(user: model);
      return resultModel.toEntity();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<void> deleteUserByFilter({required UserQueryFilter filter}) async {
    try {
      await _api.deleteUserByFilter(filter: filter);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<void> deleteUserById({required int id}) async {
    try {
      await _api.deleteUserById(id: id);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<UserEntity?> getUserById({required int id}) async {
    try {
      final resultModel = await _api.getUserById(id: id);
      return resultModel?.toEntity();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<List<UserEntity>?> getUsersByFilter(
      {required UserQueryFilter filter}) async {
    try {
      final resultModel = await _api.getUsersByFilter(filter: filter);
      return resultModel?.map((m) => m.toEntity()).toList();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<UserEntity> updateUser({required UserEntity user}) async {
    try {
      final model = user.toModel();
      final resultModel = await _api.updateUser(user: model);
      return resultModel.toEntity();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<bool> checkToken() async {
    try {
      final result = await _api.checkToken();
      return result;
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<void> login({required String phoneNumber, required String password}) async {
    try {
      await _api.login(phoneNumber: phoneNumber, password: password);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<bool> checkUserExists({required String phoneNumber}) async {
    try {
      final result = await _api.checkUserExists(phoneNumber: phoneNumber);
      return result;
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<VerificationEntity> sendOtp({required String phoneNumber}) async {
    try {
      final resultModel = await _api.sendOtp(phoneNumber: phoneNumber);
      return resultModel.toEntity();
    } catch (e) {
      throw ('error $e');
    }
  }
}
