import 'package:equatable/equatable.dart';

class PostJobEntity extends Equatable {
  const PostJobEntity({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;

  @override
  List<Object?> get props => [id, name];
}
