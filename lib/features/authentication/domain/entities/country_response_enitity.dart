import 'package:equatable/equatable.dart';

class CountryResponseEntity extends Equatable {
  const CountryResponseEntity({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;

  @override
  List<Object?> get props => [id, name];
}
