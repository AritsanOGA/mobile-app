import 'package:equatable/equatable.dart';

class CountryResponseEntity extends Equatable {
  const CountryResponseEntity({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;

  @override
  List<Object?> get props => [id, name];
}
