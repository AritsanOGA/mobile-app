import 'package:artisan_oga/features/authentication/domain/entities/user_activation_entity.dart';
import 'package:equatable/equatable.dart';


class UserEntity extends Equatable {
  const UserEntity({
    this.userActivation,
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.googleId,
    this.facebookId,
    this.image,
    this.favoriteTeams,
    this.favoriteLeagues,
    this.isUserVerified,
    this.createdAt,
    this.updatedAt,
    this.birthday,
    this.gender,
    this.phoneNumber,
    this.country,
    this.language,
  });

  final UserActivationEntity? userActivation;
  final String? id;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? googleId;
  final String? facebookId;
  final String? image;
  final List<String>? favoriteTeams;
  final List<String>? favoriteLeagues;
  final bool? isUserVerified;
  final String? createdAt;
  final String? updatedAt;
  final String? birthday;
  final String? gender;
  final String? phoneNumber;
  final String? country;
  final String? language;

  UserEntity copyWith({
    UserActivationEntity? userActivation,
    String? id,
    String? firstName,
    String? lastName,
    String? email,
    String? googleId,
    String? facebookId,
    String? image,
    List<String>? favoriteTeams,
    List<String>? favoriteLeagues,
    bool? isUserVerified,
    String? createdAt,
    String? updatedAt,
    String? birthday,
    String? gender,
    String? phoneNumber,
    String? country,
    String? language,
  }) =>
      UserEntity(
        userActivation: userActivation ?? this.userActivation,
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
        googleId: googleId ?? this.googleId,
        facebookId: facebookId ?? this.facebookId,
        image: image ?? this.image,
        favoriteLeagues: favoriteLeagues ?? this.favoriteLeagues,
        favoriteTeams: favoriteTeams ?? this.favoriteTeams,
        isUserVerified: isUserVerified ?? this.isUserVerified,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        birthday: birthday ?? this.birthday,
        gender: gender ?? this.gender,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        country: country ?? this.country,
        language: language ?? this.language,
      );

  @override
  List<Object?> get props => [
        userActivation,
        id,
        firstName,
        lastName,
        email,
        googleId,
        facebookId,
        image,
        favoriteTeams,
        favoriteLeagues,
        isUserVerified,
        createdAt,
        updatedAt,
        birthday,
        gender,
        phoneNumber,
        country,
        language,
      ];
}