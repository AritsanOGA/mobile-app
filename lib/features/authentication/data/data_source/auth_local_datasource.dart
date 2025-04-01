import 'dart:convert';

import 'package:artisan_oga/core/error/exceptions.dart';
import 'package:artisan_oga/core/services/local_storage.dart';
import 'package:artisan_oga/features/authentication/data/model/auth_result_model.dart';
import 'package:artisan_oga/features/authentication/domain/entities/auth_result_entity.dart';

abstract class AuthLocalDataSource {
  Future<bool> cacheUser(AuthResultEntity authEvent);
  Future<AuthResultEntity> getUser();
  Future<bool> removeUser();
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  AuthLocalDataSourceImpl(this.localStorage);
  final LocalStorageService localStorage;

  @override
  Future<bool> cacheUser(AuthResultEntity authEvent) async {
    await localStorage.saveToDisk(
      'user',
      jsonEncode(AuthResultModel.fromEntity(authEvent)),
    );
    return true;
  }

  @override
  Future<AuthResultEntity> getUser() async {
    final result = localStorage.getFromDisk('user');
    if (result == null) {
      throw const CachedException(message: 'No User Data Found');
    }
    return AuthResultModel.fromJson(
      jsonDecode(result.toString()) as Map<String, dynamic>,
    );
  }

  @override
  Future<bool> removeUser() async {
    await localStorage.removeFromDisk(
      'user',
    );
    return true;
  }
}
