import 'package:equatable/equatable.dart';

class VerifyCodeEntity extends Equatable {
  const VerifyCodeEntity({
    required this.email,
    required this.code,
  });

  final String email;

  final String code;

  @override
  List<Object?> get props => [
        email,
        code,
      ];
}
