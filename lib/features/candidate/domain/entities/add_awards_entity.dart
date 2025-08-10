import 'dart:io';

import 'package:equatable/equatable.dart';

class AddAwardEntity extends Equatable {
  const AddAwardEntity({
     this.certificate,
     this.title,
     this.identity,
  });

  final File? certificate;
  final String? title;
  final String? identity;

  @override
  List<Object?> get props => [
        certificate,
        title,
        identity,
      ];
}
