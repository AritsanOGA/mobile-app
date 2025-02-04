import 'package:equatable/equatable.dart';

class StateResponseEntity extends Equatable {
  const StateResponseEntity({
    this.id,
    this.name,
  });

  final int? id;
  final String? name;

  @override
  List<Object?> get props => [id, name];
}
