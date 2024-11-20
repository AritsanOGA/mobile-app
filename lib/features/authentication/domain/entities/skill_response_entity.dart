import 'package:equatable/equatable.dart';

class SkillResponseEntity extends Equatable {
  const SkillResponseEntity(
      {required this.id, required this.name, required this.categoryId});

  final int id;
  final String name;
  final int categoryId;

  @override
  List<Object?> get props => [id, name, categoryId];
}
