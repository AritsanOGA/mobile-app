import 'package:equatable/equatable.dart';

class StateResponseEntity extends Equatable {
  const StateResponseEntity({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;

  @override
  List<Object?> get props => [id, name];
}
