import 'package:artisan_oga/features/authentication/domain/entities/user_activation_entity.dart';
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

// import 'package:artisan_oga/features/authentication/domain/entities/user_activation_entity.dart';
// import 'package:equatable/equatable.dart';


// class UserEntity extends Equatable {
//   const UserEntity(this.token, this.refreshToken, this.phone, this.role, this.id, this.isAdmin, this.status, this.fullName, {


 
  
//   });


//   final String? token;
//   final String? refreshToken;
//   final String? phone;
//   final String? role;
//   final int? id;
//   final String? isAdmin;
//   final String? status;

//   final String? fullName;


//   UserEntity copyWith({
//        String? token,
//    String? refreshToken,
//    String? phone,
//    String? role,
//    int? id,
//    String? isAdmin,
//    String? status,

//    String? fullName;

//   }) =>
//       UserEntity(
   
//         id: id ?? this.id,
//         firstName: firstName ?? this.firstName,
//         lastName: lastName ?? this.lastName,
//         email: email ?? this.email,
//         googleId: googleId ?? this.googleId,
//         facebookId: facebookId ?? this.facebookId,
//         image: image ?? this.image,
//         favoriteLeagues: favoriteLeagues ?? this.favoriteLeagues,
//         favoriteTeams: favoriteTeams ?? this.favoriteTeams,
//         isUserVerified: isUserVerified ?? this.isUserVerified,
//         createdAt: createdAt ?? this.createdAt,
//         updatedAt: updatedAt ?? this.updatedAt,
//         birthday: birthday ?? this.birthday,
//         gender: gender ?? this.gender,
//         phoneNumber: phoneNumber ?? this.phoneNumber,
//         country: country ?? this.country,
//         language: language ?? this.language,
//       );

//   @override
//   List<Object?> get props => [
//         userActivation,
//         id,
//         firstName,
//         lastName,
//         email,
//         googleId,
//         facebookId,
//         image,
//         favoriteTeams,
//         favoriteLeagues,
//         isUserVerified,
//         createdAt,
//         updatedAt,
//         birthday,
//         gender,
//         phoneNumber,
//         country,
//         language,
//       ];
// }