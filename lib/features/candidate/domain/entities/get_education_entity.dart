import 'package:equatable/equatable.dart';

class GetEducationEntity extends Equatable {
  const GetEducationEntity({
     this.id,
     this.userId,
     this.title,
     this.purpose,
     this.degree,
     this.year,
     this.identity,
  });
  final int? id;
  final String? userId;
  final String? title;
  final String? degree;
  final String? purpose;
  final String? year;
  final String? identity;

  @override
  List<Object?> get props =>
      [id, userId, title, purpose, year, identity, degree];
}
