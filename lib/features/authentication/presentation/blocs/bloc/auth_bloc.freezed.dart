// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) updateSelectedCountry,
    required TResult Function(String value) updateSelectedGender,
    required TResult Function(String value) updateSelectedState,
    required TResult Function(String value) updateSelectedCity,
    required TResult Function(File value) updateSelectedCompanyLogo,
    required TResult Function(bool value) updateSelectedIsChecked,
    required TResult Function(LoginEntity param) loginUser,
    required TResult Function() getCountries,
    required TResult Function() getState,
    required TResult Function(
            String fullName,
            String officeTitle,
            String companyName,
            String phoneNumber,
            String email,
            String pasword)
        registerUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? updateSelectedCountry,
    TResult? Function(String value)? updateSelectedGender,
    TResult? Function(String value)? updateSelectedState,
    TResult? Function(String value)? updateSelectedCity,
    TResult? Function(File value)? updateSelectedCompanyLogo,
    TResult? Function(bool value)? updateSelectedIsChecked,
    TResult? Function(LoginEntity param)? loginUser,
    TResult? Function()? getCountries,
    TResult? Function()? getState,
    TResult? Function(String fullName, String officeTitle, String companyName,
            String phoneNumber, String email, String pasword)?
        registerUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? updateSelectedCountry,
    TResult Function(String value)? updateSelectedGender,
    TResult Function(String value)? updateSelectedState,
    TResult Function(String value)? updateSelectedCity,
    TResult Function(File value)? updateSelectedCompanyLogo,
    TResult Function(bool value)? updateSelectedIsChecked,
    TResult Function(LoginEntity param)? loginUser,
    TResult Function()? getCountries,
    TResult Function()? getState,
    TResult Function(String fullName, String officeTitle, String companyName,
            String phoneNumber, String email, String pasword)?
        registerUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedCountry value)
        updateSelectedCountry,
    required TResult Function(_UpdateSelectedGender value) updateSelectedGender,
    required TResult Function(_UpdateSelectedState value) updateSelectedState,
    required TResult Function(_UpdateSelectedCity value) updateSelectedCity,
    required TResult Function(_UpdateSelectedCompanyLogo value)
        updateSelectedCompanyLogo,
    required TResult Function(_UpdateSelectedIsChecked value)
        updateSelectedIsChecked,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_GetCountries value) getCountries,
    required TResult Function(_GetState value) getState,
    required TResult Function(_RegisterUser value) registerUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedCountry value)? updateSelectedCountry,
    TResult? Function(_UpdateSelectedGender value)? updateSelectedGender,
    TResult? Function(_UpdateSelectedState value)? updateSelectedState,
    TResult? Function(_UpdateSelectedCity value)? updateSelectedCity,
    TResult? Function(_UpdateSelectedCompanyLogo value)?
        updateSelectedCompanyLogo,
    TResult? Function(_UpdateSelectedIsChecked value)? updateSelectedIsChecked,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_GetCountries value)? getCountries,
    TResult? Function(_GetState value)? getState,
    TResult? Function(_RegisterUser value)? registerUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedCountry value)? updateSelectedCountry,
    TResult Function(_UpdateSelectedGender value)? updateSelectedGender,
    TResult Function(_UpdateSelectedState value)? updateSelectedState,
    TResult Function(_UpdateSelectedCity value)? updateSelectedCity,
    TResult Function(_UpdateSelectedCompanyLogo value)?
        updateSelectedCompanyLogo,
    TResult Function(_UpdateSelectedIsChecked value)? updateSelectedIsChecked,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_GetCountries value)? getCountries,
    TResult Function(_GetState value)? getState,
    TResult Function(_RegisterUser value)? registerUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateSelectedCountryImplCopyWith<$Res> {
  factory _$$UpdateSelectedCountryImplCopyWith(
          _$UpdateSelectedCountryImpl value,
          $Res Function(_$UpdateSelectedCountryImpl) then) =
      __$$UpdateSelectedCountryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UpdateSelectedCountryImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateSelectedCountryImpl>
    implements _$$UpdateSelectedCountryImplCopyWith<$Res> {
  __$$UpdateSelectedCountryImplCopyWithImpl(_$UpdateSelectedCountryImpl _value,
      $Res Function(_$UpdateSelectedCountryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UpdateSelectedCountryImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateSelectedCountryImpl implements _UpdateSelectedCountry {
  const _$UpdateSelectedCountryImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'AuthEvent.updateSelectedCountry(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSelectedCountryImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSelectedCountryImplCopyWith<_$UpdateSelectedCountryImpl>
      get copyWith => __$$UpdateSelectedCountryImplCopyWithImpl<
          _$UpdateSelectedCountryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) updateSelectedCountry,
    required TResult Function(String value) updateSelectedGender,
    required TResult Function(String value) updateSelectedState,
    required TResult Function(String value) updateSelectedCity,
    required TResult Function(File value) updateSelectedCompanyLogo,
    required TResult Function(bool value) updateSelectedIsChecked,
    required TResult Function(LoginEntity param) loginUser,
    required TResult Function() getCountries,
    required TResult Function() getState,
    required TResult Function(
            String fullName,
            String officeTitle,
            String companyName,
            String phoneNumber,
            String email,
            String pasword)
        registerUser,
  }) {
    return updateSelectedCountry(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? updateSelectedCountry,
    TResult? Function(String value)? updateSelectedGender,
    TResult? Function(String value)? updateSelectedState,
    TResult? Function(String value)? updateSelectedCity,
    TResult? Function(File value)? updateSelectedCompanyLogo,
    TResult? Function(bool value)? updateSelectedIsChecked,
    TResult? Function(LoginEntity param)? loginUser,
    TResult? Function()? getCountries,
    TResult? Function()? getState,
    TResult? Function(String fullName, String officeTitle, String companyName,
            String phoneNumber, String email, String pasword)?
        registerUser,
  }) {
    return updateSelectedCountry?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? updateSelectedCountry,
    TResult Function(String value)? updateSelectedGender,
    TResult Function(String value)? updateSelectedState,
    TResult Function(String value)? updateSelectedCity,
    TResult Function(File value)? updateSelectedCompanyLogo,
    TResult Function(bool value)? updateSelectedIsChecked,
    TResult Function(LoginEntity param)? loginUser,
    TResult Function()? getCountries,
    TResult Function()? getState,
    TResult Function(String fullName, String officeTitle, String companyName,
            String phoneNumber, String email, String pasword)?
        registerUser,
    required TResult orElse(),
  }) {
    if (updateSelectedCountry != null) {
      return updateSelectedCountry(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedCountry value)
        updateSelectedCountry,
    required TResult Function(_UpdateSelectedGender value) updateSelectedGender,
    required TResult Function(_UpdateSelectedState value) updateSelectedState,
    required TResult Function(_UpdateSelectedCity value) updateSelectedCity,
    required TResult Function(_UpdateSelectedCompanyLogo value)
        updateSelectedCompanyLogo,
    required TResult Function(_UpdateSelectedIsChecked value)
        updateSelectedIsChecked,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_GetCountries value) getCountries,
    required TResult Function(_GetState value) getState,
    required TResult Function(_RegisterUser value) registerUser,
  }) {
    return updateSelectedCountry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedCountry value)? updateSelectedCountry,
    TResult? Function(_UpdateSelectedGender value)? updateSelectedGender,
    TResult? Function(_UpdateSelectedState value)? updateSelectedState,
    TResult? Function(_UpdateSelectedCity value)? updateSelectedCity,
    TResult? Function(_UpdateSelectedCompanyLogo value)?
        updateSelectedCompanyLogo,
    TResult? Function(_UpdateSelectedIsChecked value)? updateSelectedIsChecked,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_GetCountries value)? getCountries,
    TResult? Function(_GetState value)? getState,
    TResult? Function(_RegisterUser value)? registerUser,
  }) {
    return updateSelectedCountry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedCountry value)? updateSelectedCountry,
    TResult Function(_UpdateSelectedGender value)? updateSelectedGender,
    TResult Function(_UpdateSelectedState value)? updateSelectedState,
    TResult Function(_UpdateSelectedCity value)? updateSelectedCity,
    TResult Function(_UpdateSelectedCompanyLogo value)?
        updateSelectedCompanyLogo,
    TResult Function(_UpdateSelectedIsChecked value)? updateSelectedIsChecked,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_GetCountries value)? getCountries,
    TResult Function(_GetState value)? getState,
    TResult Function(_RegisterUser value)? registerUser,
    required TResult orElse(),
  }) {
    if (updateSelectedCountry != null) {
      return updateSelectedCountry(this);
    }
    return orElse();
  }
}

abstract class _UpdateSelectedCountry implements AuthEvent {
  const factory _UpdateSelectedCountry(final String value) =
      _$UpdateSelectedCountryImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$UpdateSelectedCountryImplCopyWith<_$UpdateSelectedCountryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSelectedGenderImplCopyWith<$Res> {
  factory _$$UpdateSelectedGenderImplCopyWith(_$UpdateSelectedGenderImpl value,
          $Res Function(_$UpdateSelectedGenderImpl) then) =
      __$$UpdateSelectedGenderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UpdateSelectedGenderImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateSelectedGenderImpl>
    implements _$$UpdateSelectedGenderImplCopyWith<$Res> {
  __$$UpdateSelectedGenderImplCopyWithImpl(_$UpdateSelectedGenderImpl _value,
      $Res Function(_$UpdateSelectedGenderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UpdateSelectedGenderImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateSelectedGenderImpl implements _UpdateSelectedGender {
  const _$UpdateSelectedGenderImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'AuthEvent.updateSelectedGender(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSelectedGenderImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSelectedGenderImplCopyWith<_$UpdateSelectedGenderImpl>
      get copyWith =>
          __$$UpdateSelectedGenderImplCopyWithImpl<_$UpdateSelectedGenderImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) updateSelectedCountry,
    required TResult Function(String value) updateSelectedGender,
    required TResult Function(String value) updateSelectedState,
    required TResult Function(String value) updateSelectedCity,
    required TResult Function(File value) updateSelectedCompanyLogo,
    required TResult Function(bool value) updateSelectedIsChecked,
    required TResult Function(LoginEntity param) loginUser,
    required TResult Function() getCountries,
    required TResult Function() getState,
    required TResult Function(
            String fullName,
            String officeTitle,
            String companyName,
            String phoneNumber,
            String email,
            String pasword)
        registerUser,
  }) {
    return updateSelectedGender(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? updateSelectedCountry,
    TResult? Function(String value)? updateSelectedGender,
    TResult? Function(String value)? updateSelectedState,
    TResult? Function(String value)? updateSelectedCity,
    TResult? Function(File value)? updateSelectedCompanyLogo,
    TResult? Function(bool value)? updateSelectedIsChecked,
    TResult? Function(LoginEntity param)? loginUser,
    TResult? Function()? getCountries,
    TResult? Function()? getState,
    TResult? Function(String fullName, String officeTitle, String companyName,
            String phoneNumber, String email, String pasword)?
        registerUser,
  }) {
    return updateSelectedGender?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? updateSelectedCountry,
    TResult Function(String value)? updateSelectedGender,
    TResult Function(String value)? updateSelectedState,
    TResult Function(String value)? updateSelectedCity,
    TResult Function(File value)? updateSelectedCompanyLogo,
    TResult Function(bool value)? updateSelectedIsChecked,
    TResult Function(LoginEntity param)? loginUser,
    TResult Function()? getCountries,
    TResult Function()? getState,
    TResult Function(String fullName, String officeTitle, String companyName,
            String phoneNumber, String email, String pasword)?
        registerUser,
    required TResult orElse(),
  }) {
    if (updateSelectedGender != null) {
      return updateSelectedGender(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedCountry value)
        updateSelectedCountry,
    required TResult Function(_UpdateSelectedGender value) updateSelectedGender,
    required TResult Function(_UpdateSelectedState value) updateSelectedState,
    required TResult Function(_UpdateSelectedCity value) updateSelectedCity,
    required TResult Function(_UpdateSelectedCompanyLogo value)
        updateSelectedCompanyLogo,
    required TResult Function(_UpdateSelectedIsChecked value)
        updateSelectedIsChecked,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_GetCountries value) getCountries,
    required TResult Function(_GetState value) getState,
    required TResult Function(_RegisterUser value) registerUser,
  }) {
    return updateSelectedGender(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedCountry value)? updateSelectedCountry,
    TResult? Function(_UpdateSelectedGender value)? updateSelectedGender,
    TResult? Function(_UpdateSelectedState value)? updateSelectedState,
    TResult? Function(_UpdateSelectedCity value)? updateSelectedCity,
    TResult? Function(_UpdateSelectedCompanyLogo value)?
        updateSelectedCompanyLogo,
    TResult? Function(_UpdateSelectedIsChecked value)? updateSelectedIsChecked,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_GetCountries value)? getCountries,
    TResult? Function(_GetState value)? getState,
    TResult? Function(_RegisterUser value)? registerUser,
  }) {
    return updateSelectedGender?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedCountry value)? updateSelectedCountry,
    TResult Function(_UpdateSelectedGender value)? updateSelectedGender,
    TResult Function(_UpdateSelectedState value)? updateSelectedState,
    TResult Function(_UpdateSelectedCity value)? updateSelectedCity,
    TResult Function(_UpdateSelectedCompanyLogo value)?
        updateSelectedCompanyLogo,
    TResult Function(_UpdateSelectedIsChecked value)? updateSelectedIsChecked,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_GetCountries value)? getCountries,
    TResult Function(_GetState value)? getState,
    TResult Function(_RegisterUser value)? registerUser,
    required TResult orElse(),
  }) {
    if (updateSelectedGender != null) {
      return updateSelectedGender(this);
    }
    return orElse();
  }
}

abstract class _UpdateSelectedGender implements AuthEvent {
  const factory _UpdateSelectedGender(final String value) =
      _$UpdateSelectedGenderImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$UpdateSelectedGenderImplCopyWith<_$UpdateSelectedGenderImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSelectedStateImplCopyWith<$Res> {
  factory _$$UpdateSelectedStateImplCopyWith(_$UpdateSelectedStateImpl value,
          $Res Function(_$UpdateSelectedStateImpl) then) =
      __$$UpdateSelectedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UpdateSelectedStateImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateSelectedStateImpl>
    implements _$$UpdateSelectedStateImplCopyWith<$Res> {
  __$$UpdateSelectedStateImplCopyWithImpl(_$UpdateSelectedStateImpl _value,
      $Res Function(_$UpdateSelectedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UpdateSelectedStateImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateSelectedStateImpl implements _UpdateSelectedState {
  const _$UpdateSelectedStateImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'AuthEvent.updateSelectedState(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSelectedStateImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSelectedStateImplCopyWith<_$UpdateSelectedStateImpl> get copyWith =>
      __$$UpdateSelectedStateImplCopyWithImpl<_$UpdateSelectedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) updateSelectedCountry,
    required TResult Function(String value) updateSelectedGender,
    required TResult Function(String value) updateSelectedState,
    required TResult Function(String value) updateSelectedCity,
    required TResult Function(File value) updateSelectedCompanyLogo,
    required TResult Function(bool value) updateSelectedIsChecked,
    required TResult Function(LoginEntity param) loginUser,
    required TResult Function() getCountries,
    required TResult Function() getState,
    required TResult Function(
            String fullName,
            String officeTitle,
            String companyName,
            String phoneNumber,
            String email,
            String pasword)
        registerUser,
  }) {
    return updateSelectedState(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? updateSelectedCountry,
    TResult? Function(String value)? updateSelectedGender,
    TResult? Function(String value)? updateSelectedState,
    TResult? Function(String value)? updateSelectedCity,
    TResult? Function(File value)? updateSelectedCompanyLogo,
    TResult? Function(bool value)? updateSelectedIsChecked,
    TResult? Function(LoginEntity param)? loginUser,
    TResult? Function()? getCountries,
    TResult? Function()? getState,
    TResult? Function(String fullName, String officeTitle, String companyName,
            String phoneNumber, String email, String pasword)?
        registerUser,
  }) {
    return updateSelectedState?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? updateSelectedCountry,
    TResult Function(String value)? updateSelectedGender,
    TResult Function(String value)? updateSelectedState,
    TResult Function(String value)? updateSelectedCity,
    TResult Function(File value)? updateSelectedCompanyLogo,
    TResult Function(bool value)? updateSelectedIsChecked,
    TResult Function(LoginEntity param)? loginUser,
    TResult Function()? getCountries,
    TResult Function()? getState,
    TResult Function(String fullName, String officeTitle, String companyName,
            String phoneNumber, String email, String pasword)?
        registerUser,
    required TResult orElse(),
  }) {
    if (updateSelectedState != null) {
      return updateSelectedState(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedCountry value)
        updateSelectedCountry,
    required TResult Function(_UpdateSelectedGender value) updateSelectedGender,
    required TResult Function(_UpdateSelectedState value) updateSelectedState,
    required TResult Function(_UpdateSelectedCity value) updateSelectedCity,
    required TResult Function(_UpdateSelectedCompanyLogo value)
        updateSelectedCompanyLogo,
    required TResult Function(_UpdateSelectedIsChecked value)
        updateSelectedIsChecked,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_GetCountries value) getCountries,
    required TResult Function(_GetState value) getState,
    required TResult Function(_RegisterUser value) registerUser,
  }) {
    return updateSelectedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedCountry value)? updateSelectedCountry,
    TResult? Function(_UpdateSelectedGender value)? updateSelectedGender,
    TResult? Function(_UpdateSelectedState value)? updateSelectedState,
    TResult? Function(_UpdateSelectedCity value)? updateSelectedCity,
    TResult? Function(_UpdateSelectedCompanyLogo value)?
        updateSelectedCompanyLogo,
    TResult? Function(_UpdateSelectedIsChecked value)? updateSelectedIsChecked,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_GetCountries value)? getCountries,
    TResult? Function(_GetState value)? getState,
    TResult? Function(_RegisterUser value)? registerUser,
  }) {
    return updateSelectedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedCountry value)? updateSelectedCountry,
    TResult Function(_UpdateSelectedGender value)? updateSelectedGender,
    TResult Function(_UpdateSelectedState value)? updateSelectedState,
    TResult Function(_UpdateSelectedCity value)? updateSelectedCity,
    TResult Function(_UpdateSelectedCompanyLogo value)?
        updateSelectedCompanyLogo,
    TResult Function(_UpdateSelectedIsChecked value)? updateSelectedIsChecked,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_GetCountries value)? getCountries,
    TResult Function(_GetState value)? getState,
    TResult Function(_RegisterUser value)? registerUser,
    required TResult orElse(),
  }) {
    if (updateSelectedState != null) {
      return updateSelectedState(this);
    }
    return orElse();
  }
}

abstract class _UpdateSelectedState implements AuthEvent {
  const factory _UpdateSelectedState(final String value) =
      _$UpdateSelectedStateImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$UpdateSelectedStateImplCopyWith<_$UpdateSelectedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSelectedCityImplCopyWith<$Res> {
  factory _$$UpdateSelectedCityImplCopyWith(_$UpdateSelectedCityImpl value,
          $Res Function(_$UpdateSelectedCityImpl) then) =
      __$$UpdateSelectedCityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UpdateSelectedCityImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateSelectedCityImpl>
    implements _$$UpdateSelectedCityImplCopyWith<$Res> {
  __$$UpdateSelectedCityImplCopyWithImpl(_$UpdateSelectedCityImpl _value,
      $Res Function(_$UpdateSelectedCityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UpdateSelectedCityImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateSelectedCityImpl implements _UpdateSelectedCity {
  const _$UpdateSelectedCityImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'AuthEvent.updateSelectedCity(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSelectedCityImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSelectedCityImplCopyWith<_$UpdateSelectedCityImpl> get copyWith =>
      __$$UpdateSelectedCityImplCopyWithImpl<_$UpdateSelectedCityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) updateSelectedCountry,
    required TResult Function(String value) updateSelectedGender,
    required TResult Function(String value) updateSelectedState,
    required TResult Function(String value) updateSelectedCity,
    required TResult Function(File value) updateSelectedCompanyLogo,
    required TResult Function(bool value) updateSelectedIsChecked,
    required TResult Function(LoginEntity param) loginUser,
    required TResult Function() getCountries,
    required TResult Function() getState,
    required TResult Function(
            String fullName,
            String officeTitle,
            String companyName,
            String phoneNumber,
            String email,
            String pasword)
        registerUser,
  }) {
    return updateSelectedCity(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? updateSelectedCountry,
    TResult? Function(String value)? updateSelectedGender,
    TResult? Function(String value)? updateSelectedState,
    TResult? Function(String value)? updateSelectedCity,
    TResult? Function(File value)? updateSelectedCompanyLogo,
    TResult? Function(bool value)? updateSelectedIsChecked,
    TResult? Function(LoginEntity param)? loginUser,
    TResult? Function()? getCountries,
    TResult? Function()? getState,
    TResult? Function(String fullName, String officeTitle, String companyName,
            String phoneNumber, String email, String pasword)?
        registerUser,
  }) {
    return updateSelectedCity?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? updateSelectedCountry,
    TResult Function(String value)? updateSelectedGender,
    TResult Function(String value)? updateSelectedState,
    TResult Function(String value)? updateSelectedCity,
    TResult Function(File value)? updateSelectedCompanyLogo,
    TResult Function(bool value)? updateSelectedIsChecked,
    TResult Function(LoginEntity param)? loginUser,
    TResult Function()? getCountries,
    TResult Function()? getState,
    TResult Function(String fullName, String officeTitle, String companyName,
            String phoneNumber, String email, String pasword)?
        registerUser,
    required TResult orElse(),
  }) {
    if (updateSelectedCity != null) {
      return updateSelectedCity(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedCountry value)
        updateSelectedCountry,
    required TResult Function(_UpdateSelectedGender value) updateSelectedGender,
    required TResult Function(_UpdateSelectedState value) updateSelectedState,
    required TResult Function(_UpdateSelectedCity value) updateSelectedCity,
    required TResult Function(_UpdateSelectedCompanyLogo value)
        updateSelectedCompanyLogo,
    required TResult Function(_UpdateSelectedIsChecked value)
        updateSelectedIsChecked,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_GetCountries value) getCountries,
    required TResult Function(_GetState value) getState,
    required TResult Function(_RegisterUser value) registerUser,
  }) {
    return updateSelectedCity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedCountry value)? updateSelectedCountry,
    TResult? Function(_UpdateSelectedGender value)? updateSelectedGender,
    TResult? Function(_UpdateSelectedState value)? updateSelectedState,
    TResult? Function(_UpdateSelectedCity value)? updateSelectedCity,
    TResult? Function(_UpdateSelectedCompanyLogo value)?
        updateSelectedCompanyLogo,
    TResult? Function(_UpdateSelectedIsChecked value)? updateSelectedIsChecked,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_GetCountries value)? getCountries,
    TResult? Function(_GetState value)? getState,
    TResult? Function(_RegisterUser value)? registerUser,
  }) {
    return updateSelectedCity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedCountry value)? updateSelectedCountry,
    TResult Function(_UpdateSelectedGender value)? updateSelectedGender,
    TResult Function(_UpdateSelectedState value)? updateSelectedState,
    TResult Function(_UpdateSelectedCity value)? updateSelectedCity,
    TResult Function(_UpdateSelectedCompanyLogo value)?
        updateSelectedCompanyLogo,
    TResult Function(_UpdateSelectedIsChecked value)? updateSelectedIsChecked,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_GetCountries value)? getCountries,
    TResult Function(_GetState value)? getState,
    TResult Function(_RegisterUser value)? registerUser,
    required TResult orElse(),
  }) {
    if (updateSelectedCity != null) {
      return updateSelectedCity(this);
    }
    return orElse();
  }
}

abstract class _UpdateSelectedCity implements AuthEvent {
  const factory _UpdateSelectedCity(final String value) =
      _$UpdateSelectedCityImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$UpdateSelectedCityImplCopyWith<_$UpdateSelectedCityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSelectedCompanyLogoImplCopyWith<$Res> {
  factory _$$UpdateSelectedCompanyLogoImplCopyWith(
          _$UpdateSelectedCompanyLogoImpl value,
          $Res Function(_$UpdateSelectedCompanyLogoImpl) then) =
      __$$UpdateSelectedCompanyLogoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File value});
}

/// @nodoc
class __$$UpdateSelectedCompanyLogoImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateSelectedCompanyLogoImpl>
    implements _$$UpdateSelectedCompanyLogoImplCopyWith<$Res> {
  __$$UpdateSelectedCompanyLogoImplCopyWithImpl(
      _$UpdateSelectedCompanyLogoImpl _value,
      $Res Function(_$UpdateSelectedCompanyLogoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UpdateSelectedCompanyLogoImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$UpdateSelectedCompanyLogoImpl implements _UpdateSelectedCompanyLogo {
  const _$UpdateSelectedCompanyLogoImpl(this.value);

  @override
  final File value;

  @override
  String toString() {
    return 'AuthEvent.updateSelectedCompanyLogo(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSelectedCompanyLogoImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSelectedCompanyLogoImplCopyWith<_$UpdateSelectedCompanyLogoImpl>
      get copyWith => __$$UpdateSelectedCompanyLogoImplCopyWithImpl<
          _$UpdateSelectedCompanyLogoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) updateSelectedCountry,
    required TResult Function(String value) updateSelectedGender,
    required TResult Function(String value) updateSelectedState,
    required TResult Function(String value) updateSelectedCity,
    required TResult Function(File value) updateSelectedCompanyLogo,
    required TResult Function(bool value) updateSelectedIsChecked,
    required TResult Function(LoginEntity param) loginUser,
    required TResult Function() getCountries,
    required TResult Function() getState,
    required TResult Function(
            String fullName,
            String officeTitle,
            String companyName,
            String phoneNumber,
            String email,
            String pasword)
        registerUser,
  }) {
    return updateSelectedCompanyLogo(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? updateSelectedCountry,
    TResult? Function(String value)? updateSelectedGender,
    TResult? Function(String value)? updateSelectedState,
    TResult? Function(String value)? updateSelectedCity,
    TResult? Function(File value)? updateSelectedCompanyLogo,
    TResult? Function(bool value)? updateSelectedIsChecked,
    TResult? Function(LoginEntity param)? loginUser,
    TResult? Function()? getCountries,
    TResult? Function()? getState,
    TResult? Function(String fullName, String officeTitle, String companyName,
            String phoneNumber, String email, String pasword)?
        registerUser,
  }) {
    return updateSelectedCompanyLogo?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? updateSelectedCountry,
    TResult Function(String value)? updateSelectedGender,
    TResult Function(String value)? updateSelectedState,
    TResult Function(String value)? updateSelectedCity,
    TResult Function(File value)? updateSelectedCompanyLogo,
    TResult Function(bool value)? updateSelectedIsChecked,
    TResult Function(LoginEntity param)? loginUser,
    TResult Function()? getCountries,
    TResult Function()? getState,
    TResult Function(String fullName, String officeTitle, String companyName,
            String phoneNumber, String email, String pasword)?
        registerUser,
    required TResult orElse(),
  }) {
    if (updateSelectedCompanyLogo != null) {
      return updateSelectedCompanyLogo(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedCountry value)
        updateSelectedCountry,
    required TResult Function(_UpdateSelectedGender value) updateSelectedGender,
    required TResult Function(_UpdateSelectedState value) updateSelectedState,
    required TResult Function(_UpdateSelectedCity value) updateSelectedCity,
    required TResult Function(_UpdateSelectedCompanyLogo value)
        updateSelectedCompanyLogo,
    required TResult Function(_UpdateSelectedIsChecked value)
        updateSelectedIsChecked,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_GetCountries value) getCountries,
    required TResult Function(_GetState value) getState,
    required TResult Function(_RegisterUser value) registerUser,
  }) {
    return updateSelectedCompanyLogo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedCountry value)? updateSelectedCountry,
    TResult? Function(_UpdateSelectedGender value)? updateSelectedGender,
    TResult? Function(_UpdateSelectedState value)? updateSelectedState,
    TResult? Function(_UpdateSelectedCity value)? updateSelectedCity,
    TResult? Function(_UpdateSelectedCompanyLogo value)?
        updateSelectedCompanyLogo,
    TResult? Function(_UpdateSelectedIsChecked value)? updateSelectedIsChecked,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_GetCountries value)? getCountries,
    TResult? Function(_GetState value)? getState,
    TResult? Function(_RegisterUser value)? registerUser,
  }) {
    return updateSelectedCompanyLogo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedCountry value)? updateSelectedCountry,
    TResult Function(_UpdateSelectedGender value)? updateSelectedGender,
    TResult Function(_UpdateSelectedState value)? updateSelectedState,
    TResult Function(_UpdateSelectedCity value)? updateSelectedCity,
    TResult Function(_UpdateSelectedCompanyLogo value)?
        updateSelectedCompanyLogo,
    TResult Function(_UpdateSelectedIsChecked value)? updateSelectedIsChecked,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_GetCountries value)? getCountries,
    TResult Function(_GetState value)? getState,
    TResult Function(_RegisterUser value)? registerUser,
    required TResult orElse(),
  }) {
    if (updateSelectedCompanyLogo != null) {
      return updateSelectedCompanyLogo(this);
    }
    return orElse();
  }
}

abstract class _UpdateSelectedCompanyLogo implements AuthEvent {
  const factory _UpdateSelectedCompanyLogo(final File value) =
      _$UpdateSelectedCompanyLogoImpl;

  File get value;
  @JsonKey(ignore: true)
  _$$UpdateSelectedCompanyLogoImplCopyWith<_$UpdateSelectedCompanyLogoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSelectedIsCheckedImplCopyWith<$Res> {
  factory _$$UpdateSelectedIsCheckedImplCopyWith(
          _$UpdateSelectedIsCheckedImpl value,
          $Res Function(_$UpdateSelectedIsCheckedImpl) then) =
      __$$UpdateSelectedIsCheckedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$UpdateSelectedIsCheckedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateSelectedIsCheckedImpl>
    implements _$$UpdateSelectedIsCheckedImplCopyWith<$Res> {
  __$$UpdateSelectedIsCheckedImplCopyWithImpl(
      _$UpdateSelectedIsCheckedImpl _value,
      $Res Function(_$UpdateSelectedIsCheckedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UpdateSelectedIsCheckedImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateSelectedIsCheckedImpl implements _UpdateSelectedIsChecked {
  const _$UpdateSelectedIsCheckedImpl(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'AuthEvent.updateSelectedIsChecked(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSelectedIsCheckedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSelectedIsCheckedImplCopyWith<_$UpdateSelectedIsCheckedImpl>
      get copyWith => __$$UpdateSelectedIsCheckedImplCopyWithImpl<
          _$UpdateSelectedIsCheckedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) updateSelectedCountry,
    required TResult Function(String value) updateSelectedGender,
    required TResult Function(String value) updateSelectedState,
    required TResult Function(String value) updateSelectedCity,
    required TResult Function(File value) updateSelectedCompanyLogo,
    required TResult Function(bool value) updateSelectedIsChecked,
    required TResult Function(LoginEntity param) loginUser,
    required TResult Function() getCountries,
    required TResult Function() getState,
    required TResult Function(
            String fullName,
            String officeTitle,
            String companyName,
            String phoneNumber,
            String email,
            String pasword)
        registerUser,
  }) {
    return updateSelectedIsChecked(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? updateSelectedCountry,
    TResult? Function(String value)? updateSelectedGender,
    TResult? Function(String value)? updateSelectedState,
    TResult? Function(String value)? updateSelectedCity,
    TResult? Function(File value)? updateSelectedCompanyLogo,
    TResult? Function(bool value)? updateSelectedIsChecked,
    TResult? Function(LoginEntity param)? loginUser,
    TResult? Function()? getCountries,
    TResult? Function()? getState,
    TResult? Function(String fullName, String officeTitle, String companyName,
            String phoneNumber, String email, String pasword)?
        registerUser,
  }) {
    return updateSelectedIsChecked?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? updateSelectedCountry,
    TResult Function(String value)? updateSelectedGender,
    TResult Function(String value)? updateSelectedState,
    TResult Function(String value)? updateSelectedCity,
    TResult Function(File value)? updateSelectedCompanyLogo,
    TResult Function(bool value)? updateSelectedIsChecked,
    TResult Function(LoginEntity param)? loginUser,
    TResult Function()? getCountries,
    TResult Function()? getState,
    TResult Function(String fullName, String officeTitle, String companyName,
            String phoneNumber, String email, String pasword)?
        registerUser,
    required TResult orElse(),
  }) {
    if (updateSelectedIsChecked != null) {
      return updateSelectedIsChecked(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedCountry value)
        updateSelectedCountry,
    required TResult Function(_UpdateSelectedGender value) updateSelectedGender,
    required TResult Function(_UpdateSelectedState value) updateSelectedState,
    required TResult Function(_UpdateSelectedCity value) updateSelectedCity,
    required TResult Function(_UpdateSelectedCompanyLogo value)
        updateSelectedCompanyLogo,
    required TResult Function(_UpdateSelectedIsChecked value)
        updateSelectedIsChecked,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_GetCountries value) getCountries,
    required TResult Function(_GetState value) getState,
    required TResult Function(_RegisterUser value) registerUser,
  }) {
    return updateSelectedIsChecked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedCountry value)? updateSelectedCountry,
    TResult? Function(_UpdateSelectedGender value)? updateSelectedGender,
    TResult? Function(_UpdateSelectedState value)? updateSelectedState,
    TResult? Function(_UpdateSelectedCity value)? updateSelectedCity,
    TResult? Function(_UpdateSelectedCompanyLogo value)?
        updateSelectedCompanyLogo,
    TResult? Function(_UpdateSelectedIsChecked value)? updateSelectedIsChecked,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_GetCountries value)? getCountries,
    TResult? Function(_GetState value)? getState,
    TResult? Function(_RegisterUser value)? registerUser,
  }) {
    return updateSelectedIsChecked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedCountry value)? updateSelectedCountry,
    TResult Function(_UpdateSelectedGender value)? updateSelectedGender,
    TResult Function(_UpdateSelectedState value)? updateSelectedState,
    TResult Function(_UpdateSelectedCity value)? updateSelectedCity,
    TResult Function(_UpdateSelectedCompanyLogo value)?
        updateSelectedCompanyLogo,
    TResult Function(_UpdateSelectedIsChecked value)? updateSelectedIsChecked,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_GetCountries value)? getCountries,
    TResult Function(_GetState value)? getState,
    TResult Function(_RegisterUser value)? registerUser,
    required TResult orElse(),
  }) {
    if (updateSelectedIsChecked != null) {
      return updateSelectedIsChecked(this);
    }
    return orElse();
  }
}

abstract class _UpdateSelectedIsChecked implements AuthEvent {
  const factory _UpdateSelectedIsChecked(final bool value) =
      _$UpdateSelectedIsCheckedImpl;

  bool get value;
  @JsonKey(ignore: true)
  _$$UpdateSelectedIsCheckedImplCopyWith<_$UpdateSelectedIsCheckedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginUserImplCopyWith<$Res> {
  factory _$$LoginUserImplCopyWith(
          _$LoginUserImpl value, $Res Function(_$LoginUserImpl) then) =
      __$$LoginUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginEntity param});
}

/// @nodoc
class __$$LoginUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginUserImpl>
    implements _$$LoginUserImplCopyWith<$Res> {
  __$$LoginUserImplCopyWithImpl(
      _$LoginUserImpl _value, $Res Function(_$LoginUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$LoginUserImpl(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as LoginEntity,
    ));
  }
}

/// @nodoc

class _$LoginUserImpl implements _LoginUser {
  const _$LoginUserImpl(this.param);

  @override
  final LoginEntity param;

  @override
  String toString() {
    return 'AuthEvent.loginUser(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginUserImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginUserImplCopyWith<_$LoginUserImpl> get copyWith =>
      __$$LoginUserImplCopyWithImpl<_$LoginUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) updateSelectedCountry,
    required TResult Function(String value) updateSelectedGender,
    required TResult Function(String value) updateSelectedState,
    required TResult Function(String value) updateSelectedCity,
    required TResult Function(File value) updateSelectedCompanyLogo,
    required TResult Function(bool value) updateSelectedIsChecked,
    required TResult Function(LoginEntity param) loginUser,
    required TResult Function() getCountries,
    required TResult Function() getState,
    required TResult Function(
            String fullName,
            String officeTitle,
            String companyName,
            String phoneNumber,
            String email,
            String pasword)
        registerUser,
  }) {
    return loginUser(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? updateSelectedCountry,
    TResult? Function(String value)? updateSelectedGender,
    TResult? Function(String value)? updateSelectedState,
    TResult? Function(String value)? updateSelectedCity,
    TResult? Function(File value)? updateSelectedCompanyLogo,
    TResult? Function(bool value)? updateSelectedIsChecked,
    TResult? Function(LoginEntity param)? loginUser,
    TResult? Function()? getCountries,
    TResult? Function()? getState,
    TResult? Function(String fullName, String officeTitle, String companyName,
            String phoneNumber, String email, String pasword)?
        registerUser,
  }) {
    return loginUser?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? updateSelectedCountry,
    TResult Function(String value)? updateSelectedGender,
    TResult Function(String value)? updateSelectedState,
    TResult Function(String value)? updateSelectedCity,
    TResult Function(File value)? updateSelectedCompanyLogo,
    TResult Function(bool value)? updateSelectedIsChecked,
    TResult Function(LoginEntity param)? loginUser,
    TResult Function()? getCountries,
    TResult Function()? getState,
    TResult Function(String fullName, String officeTitle, String companyName,
            String phoneNumber, String email, String pasword)?
        registerUser,
    required TResult orElse(),
  }) {
    if (loginUser != null) {
      return loginUser(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedCountry value)
        updateSelectedCountry,
    required TResult Function(_UpdateSelectedGender value) updateSelectedGender,
    required TResult Function(_UpdateSelectedState value) updateSelectedState,
    required TResult Function(_UpdateSelectedCity value) updateSelectedCity,
    required TResult Function(_UpdateSelectedCompanyLogo value)
        updateSelectedCompanyLogo,
    required TResult Function(_UpdateSelectedIsChecked value)
        updateSelectedIsChecked,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_GetCountries value) getCountries,
    required TResult Function(_GetState value) getState,
    required TResult Function(_RegisterUser value) registerUser,
  }) {
    return loginUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedCountry value)? updateSelectedCountry,
    TResult? Function(_UpdateSelectedGender value)? updateSelectedGender,
    TResult? Function(_UpdateSelectedState value)? updateSelectedState,
    TResult? Function(_UpdateSelectedCity value)? updateSelectedCity,
    TResult? Function(_UpdateSelectedCompanyLogo value)?
        updateSelectedCompanyLogo,
    TResult? Function(_UpdateSelectedIsChecked value)? updateSelectedIsChecked,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_GetCountries value)? getCountries,
    TResult? Function(_GetState value)? getState,
    TResult? Function(_RegisterUser value)? registerUser,
  }) {
    return loginUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedCountry value)? updateSelectedCountry,
    TResult Function(_UpdateSelectedGender value)? updateSelectedGender,
    TResult Function(_UpdateSelectedState value)? updateSelectedState,
    TResult Function(_UpdateSelectedCity value)? updateSelectedCity,
    TResult Function(_UpdateSelectedCompanyLogo value)?
        updateSelectedCompanyLogo,
    TResult Function(_UpdateSelectedIsChecked value)? updateSelectedIsChecked,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_GetCountries value)? getCountries,
    TResult Function(_GetState value)? getState,
    TResult Function(_RegisterUser value)? registerUser,
    required TResult orElse(),
  }) {
    if (loginUser != null) {
      return loginUser(this);
    }
    return orElse();
  }
}

abstract class _LoginUser implements AuthEvent {
  const factory _LoginUser(final LoginEntity param) = _$LoginUserImpl;

  LoginEntity get param;
  @JsonKey(ignore: true)
  _$$LoginUserImplCopyWith<_$LoginUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCountriesImplCopyWith<$Res> {
  factory _$$GetCountriesImplCopyWith(
          _$GetCountriesImpl value, $Res Function(_$GetCountriesImpl) then) =
      __$$GetCountriesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCountriesImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetCountriesImpl>
    implements _$$GetCountriesImplCopyWith<$Res> {
  __$$GetCountriesImplCopyWithImpl(
      _$GetCountriesImpl _value, $Res Function(_$GetCountriesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCountriesImpl implements _GetCountries {
  const _$GetCountriesImpl();

  @override
  String toString() {
    return 'AuthEvent.getCountries()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCountriesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) updateSelectedCountry,
    required TResult Function(String value) updateSelectedGender,
    required TResult Function(String value) updateSelectedState,
    required TResult Function(String value) updateSelectedCity,
    required TResult Function(File value) updateSelectedCompanyLogo,
    required TResult Function(bool value) updateSelectedIsChecked,
    required TResult Function(LoginEntity param) loginUser,
    required TResult Function() getCountries,
    required TResult Function() getState,
    required TResult Function(
            String fullName,
            String officeTitle,
            String companyName,
            String phoneNumber,
            String email,
            String pasword)
        registerUser,
  }) {
    return getCountries();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? updateSelectedCountry,
    TResult? Function(String value)? updateSelectedGender,
    TResult? Function(String value)? updateSelectedState,
    TResult? Function(String value)? updateSelectedCity,
    TResult? Function(File value)? updateSelectedCompanyLogo,
    TResult? Function(bool value)? updateSelectedIsChecked,
    TResult? Function(LoginEntity param)? loginUser,
    TResult? Function()? getCountries,
    TResult? Function()? getState,
    TResult? Function(String fullName, String officeTitle, String companyName,
            String phoneNumber, String email, String pasword)?
        registerUser,
  }) {
    return getCountries?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? updateSelectedCountry,
    TResult Function(String value)? updateSelectedGender,
    TResult Function(String value)? updateSelectedState,
    TResult Function(String value)? updateSelectedCity,
    TResult Function(File value)? updateSelectedCompanyLogo,
    TResult Function(bool value)? updateSelectedIsChecked,
    TResult Function(LoginEntity param)? loginUser,
    TResult Function()? getCountries,
    TResult Function()? getState,
    TResult Function(String fullName, String officeTitle, String companyName,
            String phoneNumber, String email, String pasword)?
        registerUser,
    required TResult orElse(),
  }) {
    if (getCountries != null) {
      return getCountries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedCountry value)
        updateSelectedCountry,
    required TResult Function(_UpdateSelectedGender value) updateSelectedGender,
    required TResult Function(_UpdateSelectedState value) updateSelectedState,
    required TResult Function(_UpdateSelectedCity value) updateSelectedCity,
    required TResult Function(_UpdateSelectedCompanyLogo value)
        updateSelectedCompanyLogo,
    required TResult Function(_UpdateSelectedIsChecked value)
        updateSelectedIsChecked,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_GetCountries value) getCountries,
    required TResult Function(_GetState value) getState,
    required TResult Function(_RegisterUser value) registerUser,
  }) {
    return getCountries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedCountry value)? updateSelectedCountry,
    TResult? Function(_UpdateSelectedGender value)? updateSelectedGender,
    TResult? Function(_UpdateSelectedState value)? updateSelectedState,
    TResult? Function(_UpdateSelectedCity value)? updateSelectedCity,
    TResult? Function(_UpdateSelectedCompanyLogo value)?
        updateSelectedCompanyLogo,
    TResult? Function(_UpdateSelectedIsChecked value)? updateSelectedIsChecked,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_GetCountries value)? getCountries,
    TResult? Function(_GetState value)? getState,
    TResult? Function(_RegisterUser value)? registerUser,
  }) {
    return getCountries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedCountry value)? updateSelectedCountry,
    TResult Function(_UpdateSelectedGender value)? updateSelectedGender,
    TResult Function(_UpdateSelectedState value)? updateSelectedState,
    TResult Function(_UpdateSelectedCity value)? updateSelectedCity,
    TResult Function(_UpdateSelectedCompanyLogo value)?
        updateSelectedCompanyLogo,
    TResult Function(_UpdateSelectedIsChecked value)? updateSelectedIsChecked,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_GetCountries value)? getCountries,
    TResult Function(_GetState value)? getState,
    TResult Function(_RegisterUser value)? registerUser,
    required TResult orElse(),
  }) {
    if (getCountries != null) {
      return getCountries(this);
    }
    return orElse();
  }
}

abstract class _GetCountries implements AuthEvent {
  const factory _GetCountries() = _$GetCountriesImpl;
}

/// @nodoc
abstract class _$$GetStateImplCopyWith<$Res> {
  factory _$$GetStateImplCopyWith(
          _$GetStateImpl value, $Res Function(_$GetStateImpl) then) =
      __$$GetStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetStateImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetStateImpl>
    implements _$$GetStateImplCopyWith<$Res> {
  __$$GetStateImplCopyWithImpl(
      _$GetStateImpl _value, $Res Function(_$GetStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetStateImpl implements _GetState {
  const _$GetStateImpl();

  @override
  String toString() {
    return 'AuthEvent.getState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) updateSelectedCountry,
    required TResult Function(String value) updateSelectedGender,
    required TResult Function(String value) updateSelectedState,
    required TResult Function(String value) updateSelectedCity,
    required TResult Function(File value) updateSelectedCompanyLogo,
    required TResult Function(bool value) updateSelectedIsChecked,
    required TResult Function(LoginEntity param) loginUser,
    required TResult Function() getCountries,
    required TResult Function() getState,
    required TResult Function(
            String fullName,
            String officeTitle,
            String companyName,
            String phoneNumber,
            String email,
            String pasword)
        registerUser,
  }) {
    return getState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? updateSelectedCountry,
    TResult? Function(String value)? updateSelectedGender,
    TResult? Function(String value)? updateSelectedState,
    TResult? Function(String value)? updateSelectedCity,
    TResult? Function(File value)? updateSelectedCompanyLogo,
    TResult? Function(bool value)? updateSelectedIsChecked,
    TResult? Function(LoginEntity param)? loginUser,
    TResult? Function()? getCountries,
    TResult? Function()? getState,
    TResult? Function(String fullName, String officeTitle, String companyName,
            String phoneNumber, String email, String pasword)?
        registerUser,
  }) {
    return getState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? updateSelectedCountry,
    TResult Function(String value)? updateSelectedGender,
    TResult Function(String value)? updateSelectedState,
    TResult Function(String value)? updateSelectedCity,
    TResult Function(File value)? updateSelectedCompanyLogo,
    TResult Function(bool value)? updateSelectedIsChecked,
    TResult Function(LoginEntity param)? loginUser,
    TResult Function()? getCountries,
    TResult Function()? getState,
    TResult Function(String fullName, String officeTitle, String companyName,
            String phoneNumber, String email, String pasword)?
        registerUser,
    required TResult orElse(),
  }) {
    if (getState != null) {
      return getState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedCountry value)
        updateSelectedCountry,
    required TResult Function(_UpdateSelectedGender value) updateSelectedGender,
    required TResult Function(_UpdateSelectedState value) updateSelectedState,
    required TResult Function(_UpdateSelectedCity value) updateSelectedCity,
    required TResult Function(_UpdateSelectedCompanyLogo value)
        updateSelectedCompanyLogo,
    required TResult Function(_UpdateSelectedIsChecked value)
        updateSelectedIsChecked,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_GetCountries value) getCountries,
    required TResult Function(_GetState value) getState,
    required TResult Function(_RegisterUser value) registerUser,
  }) {
    return getState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedCountry value)? updateSelectedCountry,
    TResult? Function(_UpdateSelectedGender value)? updateSelectedGender,
    TResult? Function(_UpdateSelectedState value)? updateSelectedState,
    TResult? Function(_UpdateSelectedCity value)? updateSelectedCity,
    TResult? Function(_UpdateSelectedCompanyLogo value)?
        updateSelectedCompanyLogo,
    TResult? Function(_UpdateSelectedIsChecked value)? updateSelectedIsChecked,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_GetCountries value)? getCountries,
    TResult? Function(_GetState value)? getState,
    TResult? Function(_RegisterUser value)? registerUser,
  }) {
    return getState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedCountry value)? updateSelectedCountry,
    TResult Function(_UpdateSelectedGender value)? updateSelectedGender,
    TResult Function(_UpdateSelectedState value)? updateSelectedState,
    TResult Function(_UpdateSelectedCity value)? updateSelectedCity,
    TResult Function(_UpdateSelectedCompanyLogo value)?
        updateSelectedCompanyLogo,
    TResult Function(_UpdateSelectedIsChecked value)? updateSelectedIsChecked,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_GetCountries value)? getCountries,
    TResult Function(_GetState value)? getState,
    TResult Function(_RegisterUser value)? registerUser,
    required TResult orElse(),
  }) {
    if (getState != null) {
      return getState(this);
    }
    return orElse();
  }
}

abstract class _GetState implements AuthEvent {
  const factory _GetState() = _$GetStateImpl;
}

/// @nodoc
abstract class _$$RegisterUserImplCopyWith<$Res> {
  factory _$$RegisterUserImplCopyWith(
          _$RegisterUserImpl value, $Res Function(_$RegisterUserImpl) then) =
      __$$RegisterUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String fullName,
      String officeTitle,
      String companyName,
      String phoneNumber,
      String email,
      String pasword});
}

/// @nodoc
class __$$RegisterUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterUserImpl>
    implements _$$RegisterUserImplCopyWith<$Res> {
  __$$RegisterUserImplCopyWithImpl(
      _$RegisterUserImpl _value, $Res Function(_$RegisterUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? officeTitle = null,
    Object? companyName = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? pasword = null,
  }) {
    return _then(_$RegisterUserImpl(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      officeTitle: null == officeTitle
          ? _value.officeTitle
          : officeTitle // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      pasword: null == pasword
          ? _value.pasword
          : pasword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterUserImpl implements _RegisterUser {
  const _$RegisterUserImpl(
      {required this.fullName,
      required this.officeTitle,
      required this.companyName,
      required this.phoneNumber,
      required this.email,
      required this.pasword});

  @override
  final String fullName;
  @override
  final String officeTitle;
  @override
  final String companyName;
  @override
  final String phoneNumber;
  @override
  final String email;
  @override
  final String pasword;

  @override
  String toString() {
    return 'AuthEvent.registerUser(fullName: $fullName, officeTitle: $officeTitle, companyName: $companyName, phoneNumber: $phoneNumber, email: $email, pasword: $pasword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterUserImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.officeTitle, officeTitle) ||
                other.officeTitle == officeTitle) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.pasword, pasword) || other.pasword == pasword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullName, officeTitle,
      companyName, phoneNumber, email, pasword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterUserImplCopyWith<_$RegisterUserImpl> get copyWith =>
      __$$RegisterUserImplCopyWithImpl<_$RegisterUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) updateSelectedCountry,
    required TResult Function(String value) updateSelectedGender,
    required TResult Function(String value) updateSelectedState,
    required TResult Function(String value) updateSelectedCity,
    required TResult Function(File value) updateSelectedCompanyLogo,
    required TResult Function(bool value) updateSelectedIsChecked,
    required TResult Function(LoginEntity param) loginUser,
    required TResult Function() getCountries,
    required TResult Function() getState,
    required TResult Function(
            String fullName,
            String officeTitle,
            String companyName,
            String phoneNumber,
            String email,
            String pasword)
        registerUser,
  }) {
    return registerUser(
        fullName, officeTitle, companyName, phoneNumber, email, pasword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? updateSelectedCountry,
    TResult? Function(String value)? updateSelectedGender,
    TResult? Function(String value)? updateSelectedState,
    TResult? Function(String value)? updateSelectedCity,
    TResult? Function(File value)? updateSelectedCompanyLogo,
    TResult? Function(bool value)? updateSelectedIsChecked,
    TResult? Function(LoginEntity param)? loginUser,
    TResult? Function()? getCountries,
    TResult? Function()? getState,
    TResult? Function(String fullName, String officeTitle, String companyName,
            String phoneNumber, String email, String pasword)?
        registerUser,
  }) {
    return registerUser?.call(
        fullName, officeTitle, companyName, phoneNumber, email, pasword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? updateSelectedCountry,
    TResult Function(String value)? updateSelectedGender,
    TResult Function(String value)? updateSelectedState,
    TResult Function(String value)? updateSelectedCity,
    TResult Function(File value)? updateSelectedCompanyLogo,
    TResult Function(bool value)? updateSelectedIsChecked,
    TResult Function(LoginEntity param)? loginUser,
    TResult Function()? getCountries,
    TResult Function()? getState,
    TResult Function(String fullName, String officeTitle, String companyName,
            String phoneNumber, String email, String pasword)?
        registerUser,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(
          fullName, officeTitle, companyName, phoneNumber, email, pasword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedCountry value)
        updateSelectedCountry,
    required TResult Function(_UpdateSelectedGender value) updateSelectedGender,
    required TResult Function(_UpdateSelectedState value) updateSelectedState,
    required TResult Function(_UpdateSelectedCity value) updateSelectedCity,
    required TResult Function(_UpdateSelectedCompanyLogo value)
        updateSelectedCompanyLogo,
    required TResult Function(_UpdateSelectedIsChecked value)
        updateSelectedIsChecked,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_GetCountries value) getCountries,
    required TResult Function(_GetState value) getState,
    required TResult Function(_RegisterUser value) registerUser,
  }) {
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedCountry value)? updateSelectedCountry,
    TResult? Function(_UpdateSelectedGender value)? updateSelectedGender,
    TResult? Function(_UpdateSelectedState value)? updateSelectedState,
    TResult? Function(_UpdateSelectedCity value)? updateSelectedCity,
    TResult? Function(_UpdateSelectedCompanyLogo value)?
        updateSelectedCompanyLogo,
    TResult? Function(_UpdateSelectedIsChecked value)? updateSelectedIsChecked,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_GetCountries value)? getCountries,
    TResult? Function(_GetState value)? getState,
    TResult? Function(_RegisterUser value)? registerUser,
  }) {
    return registerUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedCountry value)? updateSelectedCountry,
    TResult Function(_UpdateSelectedGender value)? updateSelectedGender,
    TResult Function(_UpdateSelectedState value)? updateSelectedState,
    TResult Function(_UpdateSelectedCity value)? updateSelectedCity,
    TResult Function(_UpdateSelectedCompanyLogo value)?
        updateSelectedCompanyLogo,
    TResult Function(_UpdateSelectedIsChecked value)? updateSelectedIsChecked,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_GetCountries value)? getCountries,
    TResult Function(_GetState value)? getState,
    TResult Function(_RegisterUser value)? registerUser,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(this);
    }
    return orElse();
  }
}

abstract class _RegisterUser implements AuthEvent {
  const factory _RegisterUser(
      {required final String fullName,
      required final String officeTitle,
      required final String companyName,
      required final String phoneNumber,
      required final String email,
      required final String pasword}) = _$RegisterUserImpl;

  String get fullName;
  String get officeTitle;
  String get companyName;
  String get phoneNumber;
  String get email;
  String get pasword;
  @JsonKey(ignore: true)
  _$$RegisterUserImplCopyWith<_$RegisterUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  String? get gender => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  File? get file => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get countryId => throw _privateConstructorUsedError;
  List<StateResponseEntity> get states => throw _privateConstructorUsedError;
  List<CountryResponseEntity> get countries =>
      throw _privateConstructorUsedError;
  bool get isChecked => throw _privateConstructorUsedError;
  ViewState get viewState => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? gender,
            String? country,
            String? state,
            String? city,
            File? file,
            String? errorMessage,
            String? countryId,
            List<StateResponseEntity> states,
            List<CountryResponseEntity> countries,
            bool isChecked,
            ViewState viewState)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? gender,
            String? country,
            String? state,
            String? city,
            File? file,
            String? errorMessage,
            String? countryId,
            List<StateResponseEntity> states,
            List<CountryResponseEntity> countries,
            bool isChecked,
            ViewState viewState)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? gender,
            String? country,
            String? state,
            String? city,
            File? file,
            String? errorMessage,
            String? countryId,
            List<StateResponseEntity> states,
            List<CountryResponseEntity> countries,
            bool isChecked,
            ViewState viewState)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {String? gender,
      String? country,
      String? state,
      String? city,
      File? file,
      String? errorMessage,
      String? countryId,
      List<StateResponseEntity> states,
      List<CountryResponseEntity> countries,
      bool isChecked,
      ViewState viewState});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? country = freezed,
    Object? state = freezed,
    Object? city = freezed,
    Object? file = freezed,
    Object? errorMessage = freezed,
    Object? countryId = freezed,
    Object? states = null,
    Object? countries = null,
    Object? isChecked = null,
    Object? viewState = null,
  }) {
    return _then(_value.copyWith(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: freezed == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String?,
      states: null == states
          ? _value.states
          : states // ignore: cast_nullable_to_non_nullable
              as List<StateResponseEntity>,
      countries: null == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<CountryResponseEntity>,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      viewState: null == viewState
          ? _value.viewState
          : viewState // ignore: cast_nullable_to_non_nullable
              as ViewState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? gender,
      String? country,
      String? state,
      String? city,
      File? file,
      String? errorMessage,
      String? countryId,
      List<StateResponseEntity> states,
      List<CountryResponseEntity> countries,
      bool isChecked,
      ViewState viewState});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? country = freezed,
    Object? state = freezed,
    Object? city = freezed,
    Object? file = freezed,
    Object? errorMessage = freezed,
    Object? countryId = freezed,
    Object? states = null,
    Object? countries = null,
    Object? isChecked = null,
    Object? viewState = null,
  }) {
    return _then(_$InitialImpl(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: freezed == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String?,
      states: null == states
          ? _value._states
          : states // ignore: cast_nullable_to_non_nullable
              as List<StateResponseEntity>,
      countries: null == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<CountryResponseEntity>,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      viewState: null == viewState
          ? _value.viewState
          : viewState // ignore: cast_nullable_to_non_nullable
              as ViewState,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.gender,
      this.country,
      this.state,
      this.city,
      this.file,
      this.errorMessage,
      this.countryId,
      final List<StateResponseEntity> states = const [],
      final List<CountryResponseEntity> countries = const [],
      this.isChecked = false,
      this.viewState = ViewState.idle})
      : _states = states,
        _countries = countries;

  @override
  final String? gender;
  @override
  final String? country;
  @override
  final String? state;
  @override
  final String? city;
  @override
  final File? file;
  @override
  final String? errorMessage;
  @override
  final String? countryId;
  final List<StateResponseEntity> _states;
  @override
  @JsonKey()
  List<StateResponseEntity> get states {
    if (_states is EqualUnmodifiableListView) return _states;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_states);
  }

  final List<CountryResponseEntity> _countries;
  @override
  @JsonKey()
  List<CountryResponseEntity> get countries {
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  @override
  @JsonKey()
  final bool isChecked;
  @override
  @JsonKey()
  final ViewState viewState;

  @override
  String toString() {
    return 'AuthState.initial(gender: $gender, country: $country, state: $state, city: $city, file: $file, errorMessage: $errorMessage, countryId: $countryId, states: $states, countries: $countries, isChecked: $isChecked, viewState: $viewState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            const DeepCollectionEquality().equals(other._states, _states) &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries) &&
            (identical(other.isChecked, isChecked) ||
                other.isChecked == isChecked) &&
            (identical(other.viewState, viewState) ||
                other.viewState == viewState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      gender,
      country,
      state,
      city,
      file,
      errorMessage,
      countryId,
      const DeepCollectionEquality().hash(_states),
      const DeepCollectionEquality().hash(_countries),
      isChecked,
      viewState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? gender,
            String? country,
            String? state,
            String? city,
            File? file,
            String? errorMessage,
            String? countryId,
            List<StateResponseEntity> states,
            List<CountryResponseEntity> countries,
            bool isChecked,
            ViewState viewState)
        initial,
  }) {
    return initial(gender, country, state, city, file, errorMessage, countryId,
        states, countries, isChecked, viewState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? gender,
            String? country,
            String? state,
            String? city,
            File? file,
            String? errorMessage,
            String? countryId,
            List<StateResponseEntity> states,
            List<CountryResponseEntity> countries,
            bool isChecked,
            ViewState viewState)?
        initial,
  }) {
    return initial?.call(gender, country, state, city, file, errorMessage,
        countryId, states, countries, isChecked, viewState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? gender,
            String? country,
            String? state,
            String? city,
            File? file,
            String? errorMessage,
            String? countryId,
            List<StateResponseEntity> states,
            List<CountryResponseEntity> countries,
            bool isChecked,
            ViewState viewState)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(gender, country, state, city, file, errorMessage,
          countryId, states, countries, isChecked, viewState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial(
      {final String? gender,
      final String? country,
      final String? state,
      final String? city,
      final File? file,
      final String? errorMessage,
      final String? countryId,
      final List<StateResponseEntity> states,
      final List<CountryResponseEntity> countries,
      final bool isChecked,
      final ViewState viewState}) = _$InitialImpl;

  @override
  String? get gender;
  @override
  String? get country;
  @override
  String? get state;
  @override
  String? get city;
  @override
  File? get file;
  @override
  String? get errorMessage;
  @override
  String? get countryId;
  @override
  List<StateResponseEntity> get states;
  @override
  List<CountryResponseEntity> get countries;
  @override
  bool get isChecked;
  @override
  ViewState get viewState;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
