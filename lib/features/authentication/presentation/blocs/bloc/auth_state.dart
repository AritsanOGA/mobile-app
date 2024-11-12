part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial({
    String? gender,
    String? country,
    String? state,
    String? city,
    File? file,
    @Default(false) bool isChecked,
    @Default(ViewState.idle) ViewState viewState,
  }) = _Initial;
}
