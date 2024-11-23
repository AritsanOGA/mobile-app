import 'package:equatable/equatable.dart';

class CategoryResponseEntity extends Equatable {
  const CategoryResponseEntity({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;

  @override
  List<Object?> get props => [id, name];
}
