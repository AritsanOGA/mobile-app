import 'package:equatable/equatable.dart';

class JobSeekerJobResponseEntity extends Equatable {
  const JobSeekerJobResponseEntity({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;

  @override
  List<Object?> get props => [id, name];
}
