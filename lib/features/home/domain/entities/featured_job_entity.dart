import 'package:equatable/equatable.dart';

class FeaturedJobResponseEntity extends Equatable {
  const FeaturedJobResponseEntity({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;

  @override
  List<Object?> get props => [id, name];
}
