import 'dart:convert';

import 'package:artisan_oga/features/settings/domain/entities/notification_entity.dart';

class NotificationModel extends NotificationEntity {
  NotificationModel({
    required super.id,
    required super.jobIdentity,
    required super.userId,
    required super.title,
    required super.body,
    required super.status,
    required super.createdAt,
    required super.updatedAt,
  });

  factory NotificationModel.fromEntity(NotificationEntity entity) =>
      NotificationModel(
        jobIdentity: entity.jobIdentity,
        userId: entity.userId,
        id: entity.id,
        title: entity.title,
        body: entity.body,
        status: entity.status,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
      );

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      jobIdentity: json['job_identity'],
      id: json['id'],
      userId: json['user_id'],
      title: json['title'],
      body: json['body'],
      status: json['status'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "job_identity": jobIdentity,
      'id': id,
      'user_id': userId,
      'title': title,
      'body': body,
      'status': status,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }
}
