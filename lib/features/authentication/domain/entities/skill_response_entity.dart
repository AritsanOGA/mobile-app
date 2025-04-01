import 'package:equatable/equatable.dart';

class SkillResponseEntity extends Equatable {
  const SkillResponseEntity(
      { this.id,  this.name,  this.categoryId});

  final int? id;
  final String? name;
  final int? categoryId;

  @override
  List<Object?> get props => [id, name, categoryId];
}
