import 'package:equatable/equatable.dart';

class AllJobResponseEntity extends Equatable {
  const AllJobResponseEntity({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;

  @override
  List<Object?> get props => [id, name];
}
