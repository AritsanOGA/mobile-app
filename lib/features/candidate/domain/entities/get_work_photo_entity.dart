import 'package:equatable/equatable.dart';

class GetWorkPhotoEntity extends Equatable {
  const GetWorkPhotoEntity({
    required this.id,
    required this.userId,
    required this.name,
    required this.photo,
    required this.identity,
  });
  final int id;
  final int userId;
  final String name;
  final String photo;
  final String identity;

  @override
  List<Object?> get props => [
        id,
        userId,
        name,
        photo,
        identity,
      ];
}
