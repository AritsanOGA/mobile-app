import 'dart:io';

import 'package:equatable/equatable.dart';

class UploadIDCardEntity extends Equatable {
  final String candidateIdentity;

  final File card;

  UploadIDCardEntity({
    required this.candidateIdentity,
    required this.card,
  });

  @override
  List<Object?> get props => [candidateIdentity, card];
}
