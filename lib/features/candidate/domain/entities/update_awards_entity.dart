

import 'package:equatable/equatable.dart';

class UpdateAwardEntity extends Equatable {
  const UpdateAwardEntity({
    this.title,
    this.identity,
  });

  final String? title;
  final String? identity;

  @override
  List<Object?> get props => [
        title,
        identity,
      ];
}
