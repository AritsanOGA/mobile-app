// extension ResponsiveExtension on num {
//   double get width => w;
//   double get height => h;
//   double get fontSize => sp;
//   double get radius => r;
// }

// extension RouterExtension on BuildContext {
//   StackRouter get navigator => router;
//   void popUntilMain() => navigator.popUntil(
//         (route) => route.settings.name == MainRoute.name,
//       );
// }

// extension ThemeExtension on BuildContext {
//   ThemeData get theme => Theme.of(this);
//   TextTheme get textTheme => theme.textTheme;
// }

// extension ViewStateExtension on ViewState {
//   bool get isIdle => this == ViewState.idle;
//   bool get isProcessing => this == ViewState.processing;
//   bool get isSuccess => this == ViewState.success;
//   bool get isError => this == ViewState.error;
// }

// extension AuthStateStatusExtension on AuthStateStatus {
//   bool get isInitial => this == AuthStateStatus.initial;
//   bool get isExplore => this == AuthStateStatus.explore;
//   bool get isLogin => this == AuthStateStatus.login;
// }

// extension FixtureCardPositionExtension on FixtureCardPosition {
//   bool get isTopLeft => this == FixtureCardPosition.topLeft;
//   bool get isTopRight => this == FixtureCardPosition.topRight;
//   bool get isBottomLeft => this == FixtureCardPosition.bottomLeft;
//   bool get isBottomRight => this == FixtureCardPosition.bottomRight;
//   bool get isCenter => this == FixtureCardPosition.center;
// }

import 'package:artisan_oga/core/error/exceptions.dart';
import 'package:artisan_oga/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

extension RepositoryExtension<T> on Future<T> {
  Future<Either<Failure, T>> makeRequest() async {
    try {
      final data = await this;
      return Right(data);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    } catch (e, s) {
      debugPrint(s.toString());
      debugPrintStack();
      return const Left(ServerFailure());
    }
  }
}
