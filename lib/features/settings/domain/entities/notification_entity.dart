import 'package:equatable/equatable.dart';

class NotificationEntity extends Equatable {
  final int id;
  final String jobIdentity;
  final int userId;
  final String title;
  final String body;
  final int status;
  final DateTime createdAt;
  final DateTime updatedAt;

  NotificationEntity({
    required this.jobIdentity,
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  List<Object?> get props =>
      [id, jobIdentity, userId, title, body, status, createdAt, updatedAt];
}
