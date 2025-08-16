import 'package:equatable/equatable.dart';

class GetAwardEntity extends Equatable {
  const GetAwardEntity({
    required this.id,
    required this.userId,
    required this.title,
    required this.certificate,
    required this.identity,
  });
  final int id;
  final String userId;
  final String title;
  final String certificate;
  final String identity;

  @override
  List<Object?> get props => [id, userId, title, certificate, identity];
}
