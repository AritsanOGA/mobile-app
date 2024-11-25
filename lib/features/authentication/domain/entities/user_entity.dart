import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  const UserEntity({
    this.id,
    this.fullName,
    this.token,
    this.refreshToken,
    this.phoneNumber,
    this.role,
    this.isAdmin,
    this.status,
  });

  final int? id;
  final String? fullName;
  final String? token;
  final String? refreshToken;
  final String? phoneNumber;
  final String? role;
  final String? isAdmin;
  final String? status;

  UserEntity copyWith({
    int? id,
    String? fullName,
    String? token,
    String? refreshToken,
    String? phoneNumber,
    String? role,
    String? isAdmin,
    String? status,
  }) =>
      UserEntity(
          isAdmin: isAdmin ?? this.isAdmin,
          fullName: fullName ?? this.fullName,
          token: token ?? this.token,
          refreshToken: refreshToken ?? this.refreshToken,
          phoneNumber: phoneNumber ?? this.phoneNumber,
          role: role ?? this.role,
          status: status ?? this.status,
          id: id ?? this.id);

  @override
  List<Object?> get props => [
        id,
        isAdmin,
        fullName,
        phoneNumber,
        token,
        refreshToken,
        status,
        role,
      ];
}

