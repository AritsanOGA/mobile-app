import 'package:equatable/equatable.dart';

class NoOfCandidateEntity extends Equatable {
  const NoOfCandidateEntity({
    required this.candidate,
  });
  final String candidate;

  @override
  List<Object> get props => [
        candidate,
      ];
}
