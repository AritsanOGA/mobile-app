import 'package:equatable/equatable.dart';

class ForgotPasswordEntity extends Equatable {
  const ForgotPasswordEntity({
    required this.email,
    
  });

  final String email;




  @override
  List<Object?> get props => [
        email,
    
      ];
}
