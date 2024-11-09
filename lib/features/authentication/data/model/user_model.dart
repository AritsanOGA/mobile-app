

import 'package:artisan_oga/features/authentication/data/model/user_activation_model.dart';
import 'package:artisan_oga/features/authentication/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    required UserActivationModel? userActivation,
    super.id,
    super.firstName,
    super.lastName,
    super.email,
    super.googleId,
    super.facebookId,
    super.image,
    super.favoriteTeams,
    super.favoriteLeagues,
    super.isUserVerified,
    super.createdAt,
    super.updatedAt,
    super.birthday,
    super.gender,
    super.phoneNumber,
    super.country,
    super.language,
  }) : super(userActivation: userActivation);

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['_id'] as String?,
        firstName: json['firstName'] as String?,
        lastName: json['lastName'] as String?,
        email: json['email'] as String?,
        googleId: json['googleId'] as String?,
        facebookId: json['facebookId'] as String?,
        image: json['image'] as String?,
        favoriteTeams: json['favoriteTeams'] == null ||
                (json['favoriteTeams'] as List).isEmpty
            ? null
            : (json['favoriteTeams'] as List<dynamic>).cast(),
        favoriteLeagues: json['favoriteLeagues'] == null ||
                (json['favoriteLeagues'] as List).isEmpty
            ? null
            : (json['favoriteLeagues'] as List<dynamic>).cast(),
        isUserVerified: json['isUserVerified'] as bool?,
        createdAt: json['createdAt'] as String?,
        updatedAt: json['updatedAt'] as String?,
        birthday: json['birthday'] as String?,
        gender: json['gender'] as String?,
        phoneNumber: json['phoneNumber'] as String?,
        country: json['country'] as String?,
        language: json['language'] as String?,
        userActivation: json['userActivation'] == null
            ? null
            : UserActivationModel.fromJson(
                json['userActivation'] as Map<String, dynamic>,
              ),
      );

  factory UserModel.fromEntity(UserEntity entity) => UserModel(
        userActivation: entity.userActivation == null
            ? null
            : UserActivationModel.fromEntity(entity.userActivation!),
        birthday: entity.birthday,
        country: entity.country,
        createdAt: entity.createdAt,
        email: entity.email,
        facebookId: entity.facebookId,
        favoriteLeagues: entity.favoriteLeagues,
        favoriteTeams: entity.favoriteTeams,
        firstName: entity.firstName,
        gender: entity.gender,
        googleId: entity.googleId,
        id: entity.id,
        image: entity.image,
        isUserVerified: entity.isUserVerified,
        language: entity.language,
        lastName: entity.language,
        phoneNumber: entity.phoneNumber,
        updatedAt: entity.updatedAt,
      );

  Map<String, dynamic> toJson() => {
        'userActivation': (userActivation as UserActivationModel?)?.toJson(),
        '_id': id,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'googleId': googleId,
        'facebookId': facebookId,
        'image': image,
        'favoriteTeams': favoriteTeams,
        'favoriteLeagues': favoriteLeagues,
        'isUserVerified': isUserVerified,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'birthday': birthday,
        'gender': gender,
        'phoneNumber': phoneNumber,
        'country': country,
        'language': language,
      };
}