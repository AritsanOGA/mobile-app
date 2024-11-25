import 'package:equatable/equatable.dart';

class EmployerJobResponseEntity extends Equatable {
  const EmployerJobResponseEntity({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;

  @override
  List<Object?> get props => [id, name];
}
