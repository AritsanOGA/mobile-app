import 'package:artisan_oga/di.dart';
import 'package:artisan_oga/features/authentication/data/data_source/auth_local_datasource.dart';
import 'package:artisan_oga/features/authentication/domain/entities/auth_result_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/user_entity.dart';

class UserService {
  factory UserService() {
    return _userService;
  }

  UserService._internal();
  AuthResultEntity? authData;

  static final UserService _userService = UserService._internal();

  Map<String, String> get authorizationHeader {
    return {
      'Authorization': 'Bearer ${authData?.user.token}',
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
  }

  Future<void> setUserData(UserEntity userEntity) async {
    final authLocal = locator<AuthLocalDataSource>();
    await authLocal.cacheUser(
      AuthResultEntity(
        user: userEntity,
      ),
    );
  }

  Future<void> getAuthResult() async {
    final authLocal = locator<AuthLocalDataSource>();
    authData = await authLocal.getUser();
  }

}
