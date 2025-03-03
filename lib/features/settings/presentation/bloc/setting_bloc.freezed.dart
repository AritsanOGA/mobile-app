// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getJobSeekerProfile,
    required TResult Function() getEmployerProfile,
    required TResult Function() getJobSeekerNotification,
    required TResult Function() getEmployerNotification,
    required TResult Function(UpdateJobSeekerProfileEntity entity)
        updateJobSeekerProfile,
    required TResult Function(UpdateEmployerProfileEntity entity)
        updateEmployerProfile,
    required TResult Function(ChangePasswordEntity entity) updatePassword,
    required TResult Function(
            UpdateJobSeekerProfileEntity updateJobSeekerprofile)
        updateJobSeekerRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getJobSeekerProfile,
    TResult? Function()? getEmployerProfile,
    TResult? Function()? getJobSeekerNotification,
    TResult? Function()? getEmployerNotification,
    TResult? Function(UpdateJobSeekerProfileEntity entity)?
        updateJobSeekerProfile,
    TResult? Function(UpdateEmployerProfileEntity entity)?
        updateEmployerProfile,
    TResult? Function(ChangePasswordEntity entity)? updatePassword,
    TResult? Function(UpdateJobSeekerProfileEntity updateJobSeekerprofile)?
        updateJobSeekerRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getJobSeekerProfile,
    TResult Function()? getEmployerProfile,
    TResult Function()? getJobSeekerNotification,
    TResult Function()? getEmployerNotification,
    TResult Function(UpdateJobSeekerProfileEntity entity)?
        updateJobSeekerProfile,
    TResult Function(UpdateEmployerProfileEntity entity)? updateEmployerProfile,
    TResult Function(ChangePasswordEntity entity)? updatePassword,
    TResult Function(UpdateJobSeekerProfileEntity updateJobSeekerprofile)?
        updateJobSeekerRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetJobSeekerProfile value) getJobSeekerProfile,
    required TResult Function(_GetEmployerProfile value) getEmployerProfile,
    required TResult Function(_GetJobSeekerNotification value)
        getJobSeekerNotification,
    required TResult Function(_GetEmployerNotification value)
        getEmployerNotification,
    required TResult Function(_UpdateJobSeekerProfile value)
        updateJobSeekerProfile,
    required TResult Function(_UpdateEmployerProfile value)
        updateEmployerProfile,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateJobSeekerRequest value)
        updateJobSeekerRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetJobSeekerProfile value)? getJobSeekerProfile,
    TResult? Function(_GetEmployerProfile value)? getEmployerProfile,
    TResult? Function(_GetJobSeekerNotification value)?
        getJobSeekerNotification,
    TResult? Function(_GetEmployerNotification value)? getEmployerNotification,
    TResult? Function(_UpdateJobSeekerProfile value)? updateJobSeekerProfile,
    TResult? Function(_UpdateEmployerProfile value)? updateEmployerProfile,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_UpdateJobSeekerRequest value)? updateJobSeekerRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetJobSeekerProfile value)? getJobSeekerProfile,
    TResult Function(_GetEmployerProfile value)? getEmployerProfile,
    TResult Function(_GetJobSeekerNotification value)? getJobSeekerNotification,
    TResult Function(_GetEmployerNotification value)? getEmployerNotification,
    TResult Function(_UpdateJobSeekerProfile value)? updateJobSeekerProfile,
    TResult Function(_UpdateEmployerProfile value)? updateEmployerProfile,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateJobSeekerRequest value)? updateJobSeekerRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingEventCopyWith<$Res> {
  factory $SettingEventCopyWith(
          SettingEvent value, $Res Function(SettingEvent) then) =
      _$SettingEventCopyWithImpl<$Res, SettingEvent>;
}

/// @nodoc
class _$SettingEventCopyWithImpl<$Res, $Val extends SettingEvent>
    implements $SettingEventCopyWith<$Res> {
  _$SettingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SettingEvent.started'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getJobSeekerProfile,
    required TResult Function() getEmployerProfile,
    required TResult Function() getJobSeekerNotification,
    required TResult Function() getEmployerNotification,
    required TResult Function(UpdateJobSeekerProfileEntity entity)
        updateJobSeekerProfile,
    required TResult Function(UpdateEmployerProfileEntity entity)
        updateEmployerProfile,
    required TResult Function(ChangePasswordEntity entity) updatePassword,
    required TResult Function(
            UpdateJobSeekerProfileEntity updateJobSeekerprofile)
        updateJobSeekerRequest,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getJobSeekerProfile,
    TResult? Function()? getEmployerProfile,
    TResult? Function()? getJobSeekerNotification,
    TResult? Function()? getEmployerNotification,
    TResult? Function(UpdateJobSeekerProfileEntity entity)?
        updateJobSeekerProfile,
    TResult? Function(UpdateEmployerProfileEntity entity)?
        updateEmployerProfile,
    TResult? Function(ChangePasswordEntity entity)? updatePassword,
    TResult? Function(UpdateJobSeekerProfileEntity updateJobSeekerprofile)?
        updateJobSeekerRequest,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getJobSeekerProfile,
    TResult Function()? getEmployerProfile,
    TResult Function()? getJobSeekerNotification,
    TResult Function()? getEmployerNotification,
    TResult Function(UpdateJobSeekerProfileEntity entity)?
        updateJobSeekerProfile,
    TResult Function(UpdateEmployerProfileEntity entity)? updateEmployerProfile,
    TResult Function(ChangePasswordEntity entity)? updatePassword,
    TResult Function(UpdateJobSeekerProfileEntity updateJobSeekerprofile)?
        updateJobSeekerRequest,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetJobSeekerProfile value) getJobSeekerProfile,
    required TResult Function(_GetEmployerProfile value) getEmployerProfile,
    required TResult Function(_GetJobSeekerNotification value)
        getJobSeekerNotification,
    required TResult Function(_GetEmployerNotification value)
        getEmployerNotification,
    required TResult Function(_UpdateJobSeekerProfile value)
        updateJobSeekerProfile,
    required TResult Function(_UpdateEmployerProfile value)
        updateEmployerProfile,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateJobSeekerRequest value)
        updateJobSeekerRequest,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetJobSeekerProfile value)? getJobSeekerProfile,
    TResult? Function(_GetEmployerProfile value)? getEmployerProfile,
    TResult? Function(_GetJobSeekerNotification value)?
        getJobSeekerNotification,
    TResult? Function(_GetEmployerNotification value)? getEmployerNotification,
    TResult? Function(_UpdateJobSeekerProfile value)? updateJobSeekerProfile,
    TResult? Function(_UpdateEmployerProfile value)? updateEmployerProfile,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_UpdateJobSeekerRequest value)? updateJobSeekerRequest,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetJobSeekerProfile value)? getJobSeekerProfile,
    TResult Function(_GetEmployerProfile value)? getEmployerProfile,
    TResult Function(_GetJobSeekerNotification value)? getJobSeekerNotification,
    TResult Function(_GetEmployerNotification value)? getEmployerNotification,
    TResult Function(_UpdateJobSeekerProfile value)? updateJobSeekerProfile,
    TResult Function(_UpdateEmployerProfile value)? updateEmployerProfile,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateJobSeekerRequest value)? updateJobSeekerRequest,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SettingEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetJobSeekerProfileImplCopyWith<$Res> {
  factory _$$GetJobSeekerProfileImplCopyWith(_$GetJobSeekerProfileImpl value,
          $Res Function(_$GetJobSeekerProfileImpl) then) =
      __$$GetJobSeekerProfileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetJobSeekerProfileImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$GetJobSeekerProfileImpl>
    implements _$$GetJobSeekerProfileImplCopyWith<$Res> {
  __$$GetJobSeekerProfileImplCopyWithImpl(_$GetJobSeekerProfileImpl _value,
      $Res Function(_$GetJobSeekerProfileImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetJobSeekerProfileImpl
    with DiagnosticableTreeMixin
    implements _GetJobSeekerProfile {
  const _$GetJobSeekerProfileImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingEvent.getJobSeekerProfile()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'SettingEvent.getJobSeekerProfile'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetJobSeekerProfileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getJobSeekerProfile,
    required TResult Function() getEmployerProfile,
    required TResult Function() getJobSeekerNotification,
    required TResult Function() getEmployerNotification,
    required TResult Function(UpdateJobSeekerProfileEntity entity)
        updateJobSeekerProfile,
    required TResult Function(UpdateEmployerProfileEntity entity)
        updateEmployerProfile,
    required TResult Function(ChangePasswordEntity entity) updatePassword,
    required TResult Function(
            UpdateJobSeekerProfileEntity updateJobSeekerprofile)
        updateJobSeekerRequest,
  }) {
    return getJobSeekerProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getJobSeekerProfile,
    TResult? Function()? getEmployerProfile,
    TResult? Function()? getJobSeekerNotification,
    TResult? Function()? getEmployerNotification,
    TResult? Function(UpdateJobSeekerProfileEntity entity)?
        updateJobSeekerProfile,
    TResult? Function(UpdateEmployerProfileEntity entity)?
        updateEmployerProfile,
    TResult? Function(ChangePasswordEntity entity)? updatePassword,
    TResult? Function(UpdateJobSeekerProfileEntity updateJobSeekerprofile)?
        updateJobSeekerRequest,
  }) {
    return getJobSeekerProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getJobSeekerProfile,
    TResult Function()? getEmployerProfile,
    TResult Function()? getJobSeekerNotification,
    TResult Function()? getEmployerNotification,
    TResult Function(UpdateJobSeekerProfileEntity entity)?
        updateJobSeekerProfile,
    TResult Function(UpdateEmployerProfileEntity entity)? updateEmployerProfile,
    TResult Function(ChangePasswordEntity entity)? updatePassword,
    TResult Function(UpdateJobSeekerProfileEntity updateJobSeekerprofile)?
        updateJobSeekerRequest,
    required TResult orElse(),
  }) {
    if (getJobSeekerProfile != null) {
      return getJobSeekerProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetJobSeekerProfile value) getJobSeekerProfile,
    required TResult Function(_GetEmployerProfile value) getEmployerProfile,
    required TResult Function(_GetJobSeekerNotification value)
        getJobSeekerNotification,
    required TResult Function(_GetEmployerNotification value)
        getEmployerNotification,
    required TResult Function(_UpdateJobSeekerProfile value)
        updateJobSeekerProfile,
    required TResult Function(_UpdateEmployerProfile value)
        updateEmployerProfile,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateJobSeekerRequest value)
        updateJobSeekerRequest,
  }) {
    return getJobSeekerProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetJobSeekerProfile value)? getJobSeekerProfile,
    TResult? Function(_GetEmployerProfile value)? getEmployerProfile,
    TResult? Function(_GetJobSeekerNotification value)?
        getJobSeekerNotification,
    TResult? Function(_GetEmployerNotification value)? getEmployerNotification,
    TResult? Function(_UpdateJobSeekerProfile value)? updateJobSeekerProfile,
    TResult? Function(_UpdateEmployerProfile value)? updateEmployerProfile,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_UpdateJobSeekerRequest value)? updateJobSeekerRequest,
  }) {
    return getJobSeekerProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetJobSeekerProfile value)? getJobSeekerProfile,
    TResult Function(_GetEmployerProfile value)? getEmployerProfile,
    TResult Function(_GetJobSeekerNotification value)? getJobSeekerNotification,
    TResult Function(_GetEmployerNotification value)? getEmployerNotification,
    TResult Function(_UpdateJobSeekerProfile value)? updateJobSeekerProfile,
    TResult Function(_UpdateEmployerProfile value)? updateEmployerProfile,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateJobSeekerRequest value)? updateJobSeekerRequest,
    required TResult orElse(),
  }) {
    if (getJobSeekerProfile != null) {
      return getJobSeekerProfile(this);
    }
    return orElse();
  }
}

abstract class _GetJobSeekerProfile implements SettingEvent {
  const factory _GetJobSeekerProfile() = _$GetJobSeekerProfileImpl;
}

/// @nodoc
abstract class _$$GetEmployerProfileImplCopyWith<$Res> {
  factory _$$GetEmployerProfileImplCopyWith(_$GetEmployerProfileImpl value,
          $Res Function(_$GetEmployerProfileImpl) then) =
      __$$GetEmployerProfileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetEmployerProfileImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$GetEmployerProfileImpl>
    implements _$$GetEmployerProfileImplCopyWith<$Res> {
  __$$GetEmployerProfileImplCopyWithImpl(_$GetEmployerProfileImpl _value,
      $Res Function(_$GetEmployerProfileImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetEmployerProfileImpl
    with DiagnosticableTreeMixin
    implements _GetEmployerProfile {
  const _$GetEmployerProfileImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingEvent.getEmployerProfile()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'SettingEvent.getEmployerProfile'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetEmployerProfileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getJobSeekerProfile,
    required TResult Function() getEmployerProfile,
    required TResult Function() getJobSeekerNotification,
    required TResult Function() getEmployerNotification,
    required TResult Function(UpdateJobSeekerProfileEntity entity)
        updateJobSeekerProfile,
    required TResult Function(UpdateEmployerProfileEntity entity)
        updateEmployerProfile,
    required TResult Function(ChangePasswordEntity entity) updatePassword,
    required TResult Function(
            UpdateJobSeekerProfileEntity updateJobSeekerprofile)
        updateJobSeekerRequest,
  }) {
    return getEmployerProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getJobSeekerProfile,
    TResult? Function()? getEmployerProfile,
    TResult? Function()? getJobSeekerNotification,
    TResult? Function()? getEmployerNotification,
    TResult? Function(UpdateJobSeekerProfileEntity entity)?
        updateJobSeekerProfile,
    TResult? Function(UpdateEmployerProfileEntity entity)?
        updateEmployerProfile,
    TResult? Function(ChangePasswordEntity entity)? updatePassword,
    TResult? Function(UpdateJobSeekerProfileEntity updateJobSeekerprofile)?
        updateJobSeekerRequest,
  }) {
    return getEmployerProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getJobSeekerProfile,
    TResult Function()? getEmployerProfile,
    TResult Function()? getJobSeekerNotification,
    TResult Function()? getEmployerNotification,
    TResult Function(UpdateJobSeekerProfileEntity entity)?
        updateJobSeekerProfile,
    TResult Function(UpdateEmployerProfileEntity entity)? updateEmployerProfile,
    TResult Function(ChangePasswordEntity entity)? updatePassword,
    TResult Function(UpdateJobSeekerProfileEntity updateJobSeekerprofile)?
        updateJobSeekerRequest,
    required TResult orElse(),
  }) {
    if (getEmployerProfile != null) {
      return getEmployerProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetJobSeekerProfile value) getJobSeekerProfile,
    required TResult Function(_GetEmployerProfile value) getEmployerProfile,
    required TResult Function(_GetJobSeekerNotification value)
        getJobSeekerNotification,
    required TResult Function(_GetEmployerNotification value)
        getEmployerNotification,
    required TResult Function(_UpdateJobSeekerProfile value)
        updateJobSeekerProfile,
    required TResult Function(_UpdateEmployerProfile value)
        updateEmployerProfile,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateJobSeekerRequest value)
        updateJobSeekerRequest,
  }) {
    return getEmployerProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetJobSeekerProfile value)? getJobSeekerProfile,
    TResult? Function(_GetEmployerProfile value)? getEmployerProfile,
    TResult? Function(_GetJobSeekerNotification value)?
        getJobSeekerNotification,
    TResult? Function(_GetEmployerNotification value)? getEmployerNotification,
    TResult? Function(_UpdateJobSeekerProfile value)? updateJobSeekerProfile,
    TResult? Function(_UpdateEmployerProfile value)? updateEmployerProfile,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_UpdateJobSeekerRequest value)? updateJobSeekerRequest,
  }) {
    return getEmployerProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetJobSeekerProfile value)? getJobSeekerProfile,
    TResult Function(_GetEmployerProfile value)? getEmployerProfile,
    TResult Function(_GetJobSeekerNotification value)? getJobSeekerNotification,
    TResult Function(_GetEmployerNotification value)? getEmployerNotification,
    TResult Function(_UpdateJobSeekerProfile value)? updateJobSeekerProfile,
    TResult Function(_UpdateEmployerProfile value)? updateEmployerProfile,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateJobSeekerRequest value)? updateJobSeekerRequest,
    required TResult orElse(),
  }) {
    if (getEmployerProfile != null) {
      return getEmployerProfile(this);
    }
    return orElse();
  }
}

abstract class _GetEmployerProfile implements SettingEvent {
  const factory _GetEmployerProfile() = _$GetEmployerProfileImpl;
}

/// @nodoc
abstract class _$$GetJobSeekerNotificationImplCopyWith<$Res> {
  factory _$$GetJobSeekerNotificationImplCopyWith(
          _$GetJobSeekerNotificationImpl value,
          $Res Function(_$GetJobSeekerNotificationImpl) then) =
      __$$GetJobSeekerNotificationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetJobSeekerNotificationImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$GetJobSeekerNotificationImpl>
    implements _$$GetJobSeekerNotificationImplCopyWith<$Res> {
  __$$GetJobSeekerNotificationImplCopyWithImpl(
      _$GetJobSeekerNotificationImpl _value,
      $Res Function(_$GetJobSeekerNotificationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetJobSeekerNotificationImpl
    with DiagnosticableTreeMixin
    implements _GetJobSeekerNotification {
  const _$GetJobSeekerNotificationImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingEvent.getJobSeekerNotification()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'SettingEvent.getJobSeekerNotification'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetJobSeekerNotificationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getJobSeekerProfile,
    required TResult Function() getEmployerProfile,
    required TResult Function() getJobSeekerNotification,
    required TResult Function() getEmployerNotification,
    required TResult Function(UpdateJobSeekerProfileEntity entity)
        updateJobSeekerProfile,
    required TResult Function(UpdateEmployerProfileEntity entity)
        updateEmployerProfile,
    required TResult Function(ChangePasswordEntity entity) updatePassword,
    required TResult Function(
            UpdateJobSeekerProfileEntity updateJobSeekerprofile)
        updateJobSeekerRequest,
  }) {
    return getJobSeekerNotification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getJobSeekerProfile,
    TResult? Function()? getEmployerProfile,
    TResult? Function()? getJobSeekerNotification,
    TResult? Function()? getEmployerNotification,
    TResult? Function(UpdateJobSeekerProfileEntity entity)?
        updateJobSeekerProfile,
    TResult? Function(UpdateEmployerProfileEntity entity)?
        updateEmployerProfile,
    TResult? Function(ChangePasswordEntity entity)? updatePassword,
    TResult? Function(UpdateJobSeekerProfileEntity updateJobSeekerprofile)?
        updateJobSeekerRequest,
  }) {
    return getJobSeekerNotification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getJobSeekerProfile,
    TResult Function()? getEmployerProfile,
    TResult Function()? getJobSeekerNotification,
    TResult Function()? getEmployerNotification,
    TResult Function(UpdateJobSeekerProfileEntity entity)?
        updateJobSeekerProfile,
    TResult Function(UpdateEmployerProfileEntity entity)? updateEmployerProfile,
    TResult Function(ChangePasswordEntity entity)? updatePassword,
    TResult Function(UpdateJobSeekerProfileEntity updateJobSeekerprofile)?
        updateJobSeekerRequest,
    required TResult orElse(),
  }) {
    if (getJobSeekerNotification != null) {
      return getJobSeekerNotification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetJobSeekerProfile value) getJobSeekerProfile,
    required TResult Function(_GetEmployerProfile value) getEmployerProfile,
    required TResult Function(_GetJobSeekerNotification value)
        getJobSeekerNotification,
    required TResult Function(_GetEmployerNotification value)
        getEmployerNotification,
    required TResult Function(_UpdateJobSeekerProfile value)
        updateJobSeekerProfile,
    required TResult Function(_UpdateEmployerProfile value)
        updateEmployerProfile,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateJobSeekerRequest value)
        updateJobSeekerRequest,
  }) {
    return getJobSeekerNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetJobSeekerProfile value)? getJobSeekerProfile,
    TResult? Function(_GetEmployerProfile value)? getEmployerProfile,
    TResult? Function(_GetJobSeekerNotification value)?
        getJobSeekerNotification,
    TResult? Function(_GetEmployerNotification value)? getEmployerNotification,
    TResult? Function(_UpdateJobSeekerProfile value)? updateJobSeekerProfile,
    TResult? Function(_UpdateEmployerProfile value)? updateEmployerProfile,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_UpdateJobSeekerRequest value)? updateJobSeekerRequest,
  }) {
    return getJobSeekerNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetJobSeekerProfile value)? getJobSeekerProfile,
    TResult Function(_GetEmployerProfile value)? getEmployerProfile,
    TResult Function(_GetJobSeekerNotification value)? getJobSeekerNotification,
    TResult Function(_GetEmployerNotification value)? getEmployerNotification,
    TResult Function(_UpdateJobSeekerProfile value)? updateJobSeekerProfile,
    TResult Function(_UpdateEmployerProfile value)? updateEmployerProfile,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateJobSeekerRequest value)? updateJobSeekerRequest,
    required TResult orElse(),
  }) {
    if (getJobSeekerNotification != null) {
      return getJobSeekerNotification(this);
    }
    return orElse();
  }
}

abstract class _GetJobSeekerNotification implements SettingEvent {
  const factory _GetJobSeekerNotification() = _$GetJobSeekerNotificationImpl;
}

/// @nodoc
abstract class _$$GetEmployerNotificationImplCopyWith<$Res> {
  factory _$$GetEmployerNotificationImplCopyWith(
          _$GetEmployerNotificationImpl value,
          $Res Function(_$GetEmployerNotificationImpl) then) =
      __$$GetEmployerNotificationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetEmployerNotificationImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$GetEmployerNotificationImpl>
    implements _$$GetEmployerNotificationImplCopyWith<$Res> {
  __$$GetEmployerNotificationImplCopyWithImpl(
      _$GetEmployerNotificationImpl _value,
      $Res Function(_$GetEmployerNotificationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetEmployerNotificationImpl
    with DiagnosticableTreeMixin
    implements _GetEmployerNotification {
  const _$GetEmployerNotificationImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingEvent.getEmployerNotification()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'SettingEvent.getEmployerNotification'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEmployerNotificationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getJobSeekerProfile,
    required TResult Function() getEmployerProfile,
    required TResult Function() getJobSeekerNotification,
    required TResult Function() getEmployerNotification,
    required TResult Function(UpdateJobSeekerProfileEntity entity)
        updateJobSeekerProfile,
    required TResult Function(UpdateEmployerProfileEntity entity)
        updateEmployerProfile,
    required TResult Function(ChangePasswordEntity entity) updatePassword,
    required TResult Function(
            UpdateJobSeekerProfileEntity updateJobSeekerprofile)
        updateJobSeekerRequest,
  }) {
    return getEmployerNotification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getJobSeekerProfile,
    TResult? Function()? getEmployerProfile,
    TResult? Function()? getJobSeekerNotification,
    TResult? Function()? getEmployerNotification,
    TResult? Function(UpdateJobSeekerProfileEntity entity)?
        updateJobSeekerProfile,
    TResult? Function(UpdateEmployerProfileEntity entity)?
        updateEmployerProfile,
    TResult? Function(ChangePasswordEntity entity)? updatePassword,
    TResult? Function(UpdateJobSeekerProfileEntity updateJobSeekerprofile)?
        updateJobSeekerRequest,
  }) {
    return getEmployerNotification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getJobSeekerProfile,
    TResult Function()? getEmployerProfile,
    TResult Function()? getJobSeekerNotification,
    TResult Function()? getEmployerNotification,
    TResult Function(UpdateJobSeekerProfileEntity entity)?
        updateJobSeekerProfile,
    TResult Function(UpdateEmployerProfileEntity entity)? updateEmployerProfile,
    TResult Function(ChangePasswordEntity entity)? updatePassword,
    TResult Function(UpdateJobSeekerProfileEntity updateJobSeekerprofile)?
        updateJobSeekerRequest,
    required TResult orElse(),
  }) {
    if (getEmployerNotification != null) {
      return getEmployerNotification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetJobSeekerProfile value) getJobSeekerProfile,
    required TResult Function(_GetEmployerProfile value) getEmployerProfile,
    required TResult Function(_GetJobSeekerNotification value)
        getJobSeekerNotification,
    required TResult Function(_GetEmployerNotification value)
        getEmployerNotification,
    required TResult Function(_UpdateJobSeekerProfile value)
        updateJobSeekerProfile,
    required TResult Function(_UpdateEmployerProfile value)
        updateEmployerProfile,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateJobSeekerRequest value)
        updateJobSeekerRequest,
  }) {
    return getEmployerNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetJobSeekerProfile value)? getJobSeekerProfile,
    TResult? Function(_GetEmployerProfile value)? getEmployerProfile,
    TResult? Function(_GetJobSeekerNotification value)?
        getJobSeekerNotification,
    TResult? Function(_GetEmployerNotification value)? getEmployerNotification,
    TResult? Function(_UpdateJobSeekerProfile value)? updateJobSeekerProfile,
    TResult? Function(_UpdateEmployerProfile value)? updateEmployerProfile,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_UpdateJobSeekerRequest value)? updateJobSeekerRequest,
  }) {
    return getEmployerNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetJobSeekerProfile value)? getJobSeekerProfile,
    TResult Function(_GetEmployerProfile value)? getEmployerProfile,
    TResult Function(_GetJobSeekerNotification value)? getJobSeekerNotification,
    TResult Function(_GetEmployerNotification value)? getEmployerNotification,
    TResult Function(_UpdateJobSeekerProfile value)? updateJobSeekerProfile,
    TResult Function(_UpdateEmployerProfile value)? updateEmployerProfile,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateJobSeekerRequest value)? updateJobSeekerRequest,
    required TResult orElse(),
  }) {
    if (getEmployerNotification != null) {
      return getEmployerNotification(this);
    }
    return orElse();
  }
}

abstract class _GetEmployerNotification implements SettingEvent {
  const factory _GetEmployerNotification() = _$GetEmployerNotificationImpl;
}

/// @nodoc
abstract class _$$UpdateJobSeekerProfileImplCopyWith<$Res> {
  factory _$$UpdateJobSeekerProfileImplCopyWith(
          _$UpdateJobSeekerProfileImpl value,
          $Res Function(_$UpdateJobSeekerProfileImpl) then) =
      __$$UpdateJobSeekerProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateJobSeekerProfileEntity entity});
}

/// @nodoc
class __$$UpdateJobSeekerProfileImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$UpdateJobSeekerProfileImpl>
    implements _$$UpdateJobSeekerProfileImplCopyWith<$Res> {
  __$$UpdateJobSeekerProfileImplCopyWithImpl(
      _$UpdateJobSeekerProfileImpl _value,
      $Res Function(_$UpdateJobSeekerProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$UpdateJobSeekerProfileImpl(
      null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as UpdateJobSeekerProfileEntity,
    ));
  }
}

/// @nodoc

class _$UpdateJobSeekerProfileImpl
    with DiagnosticableTreeMixin
    implements _UpdateJobSeekerProfile {
  const _$UpdateJobSeekerProfileImpl(this.entity);

  @override
  final UpdateJobSeekerProfileEntity entity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingEvent.updateJobSeekerProfile(entity: $entity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingEvent.updateJobSeekerProfile'))
      ..add(DiagnosticsProperty('entity', entity));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateJobSeekerProfileImpl &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateJobSeekerProfileImplCopyWith<_$UpdateJobSeekerProfileImpl>
      get copyWith => __$$UpdateJobSeekerProfileImplCopyWithImpl<
          _$UpdateJobSeekerProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getJobSeekerProfile,
    required TResult Function() getEmployerProfile,
    required TResult Function() getJobSeekerNotification,
    required TResult Function() getEmployerNotification,
    required TResult Function(UpdateJobSeekerProfileEntity entity)
        updateJobSeekerProfile,
    required TResult Function(UpdateEmployerProfileEntity entity)
        updateEmployerProfile,
    required TResult Function(ChangePasswordEntity entity) updatePassword,
    required TResult Function(
            UpdateJobSeekerProfileEntity updateJobSeekerprofile)
        updateJobSeekerRequest,
  }) {
    return updateJobSeekerProfile(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getJobSeekerProfile,
    TResult? Function()? getEmployerProfile,
    TResult? Function()? getJobSeekerNotification,
    TResult? Function()? getEmployerNotification,
    TResult? Function(UpdateJobSeekerProfileEntity entity)?
        updateJobSeekerProfile,
    TResult? Function(UpdateEmployerProfileEntity entity)?
        updateEmployerProfile,
    TResult? Function(ChangePasswordEntity entity)? updatePassword,
    TResult? Function(UpdateJobSeekerProfileEntity updateJobSeekerprofile)?
        updateJobSeekerRequest,
  }) {
    return updateJobSeekerProfile?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getJobSeekerProfile,
    TResult Function()? getEmployerProfile,
    TResult Function()? getJobSeekerNotification,
    TResult Function()? getEmployerNotification,
    TResult Function(UpdateJobSeekerProfileEntity entity)?
        updateJobSeekerProfile,
    TResult Function(UpdateEmployerProfileEntity entity)? updateEmployerProfile,
    TResult Function(ChangePasswordEntity entity)? updatePassword,
    TResult Function(UpdateJobSeekerProfileEntity updateJobSeekerprofile)?
        updateJobSeekerRequest,
    required TResult orElse(),
  }) {
    if (updateJobSeekerProfile != null) {
      return updateJobSeekerProfile(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetJobSeekerProfile value) getJobSeekerProfile,
    required TResult Function(_GetEmployerProfile value) getEmployerProfile,
    required TResult Function(_GetJobSeekerNotification value)
        getJobSeekerNotification,
    required TResult Function(_GetEmployerNotification value)
        getEmployerNotification,
    required TResult Function(_UpdateJobSeekerProfile value)
        updateJobSeekerProfile,
    required TResult Function(_UpdateEmployerProfile value)
        updateEmployerProfile,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateJobSeekerRequest value)
        updateJobSeekerRequest,
  }) {
    return updateJobSeekerProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetJobSeekerProfile value)? getJobSeekerProfile,
    TResult? Function(_GetEmployerProfile value)? getEmployerProfile,
    TResult? Function(_GetJobSeekerNotification value)?
        getJobSeekerNotification,
    TResult? Function(_GetEmployerNotification value)? getEmployerNotification,
    TResult? Function(_UpdateJobSeekerProfile value)? updateJobSeekerProfile,
    TResult? Function(_UpdateEmployerProfile value)? updateEmployerProfile,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_UpdateJobSeekerRequest value)? updateJobSeekerRequest,
  }) {
    return updateJobSeekerProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetJobSeekerProfile value)? getJobSeekerProfile,
    TResult Function(_GetEmployerProfile value)? getEmployerProfile,
    TResult Function(_GetJobSeekerNotification value)? getJobSeekerNotification,
    TResult Function(_GetEmployerNotification value)? getEmployerNotification,
    TResult Function(_UpdateJobSeekerProfile value)? updateJobSeekerProfile,
    TResult Function(_UpdateEmployerProfile value)? updateEmployerProfile,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateJobSeekerRequest value)? updateJobSeekerRequest,
    required TResult orElse(),
  }) {
    if (updateJobSeekerProfile != null) {
      return updateJobSeekerProfile(this);
    }
    return orElse();
  }
}

abstract class _UpdateJobSeekerProfile implements SettingEvent {
  const factory _UpdateJobSeekerProfile(
      final UpdateJobSeekerProfileEntity entity) = _$UpdateJobSeekerProfileImpl;

  UpdateJobSeekerProfileEntity get entity;
  @JsonKey(ignore: true)
  _$$UpdateJobSeekerProfileImplCopyWith<_$UpdateJobSeekerProfileImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateEmployerProfileImplCopyWith<$Res> {
  factory _$$UpdateEmployerProfileImplCopyWith(
          _$UpdateEmployerProfileImpl value,
          $Res Function(_$UpdateEmployerProfileImpl) then) =
      __$$UpdateEmployerProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateEmployerProfileEntity entity});
}

/// @nodoc
class __$$UpdateEmployerProfileImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$UpdateEmployerProfileImpl>
    implements _$$UpdateEmployerProfileImplCopyWith<$Res> {
  __$$UpdateEmployerProfileImplCopyWithImpl(_$UpdateEmployerProfileImpl _value,
      $Res Function(_$UpdateEmployerProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$UpdateEmployerProfileImpl(
      null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as UpdateEmployerProfileEntity,
    ));
  }
}

/// @nodoc

class _$UpdateEmployerProfileImpl
    with DiagnosticableTreeMixin
    implements _UpdateEmployerProfile {
  const _$UpdateEmployerProfileImpl(this.entity);

  @override
  final UpdateEmployerProfileEntity entity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingEvent.updateEmployerProfile(entity: $entity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingEvent.updateEmployerProfile'))
      ..add(DiagnosticsProperty('entity', entity));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEmployerProfileImpl &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateEmployerProfileImplCopyWith<_$UpdateEmployerProfileImpl>
      get copyWith => __$$UpdateEmployerProfileImplCopyWithImpl<
          _$UpdateEmployerProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getJobSeekerProfile,
    required TResult Function() getEmployerProfile,
    required TResult Function() getJobSeekerNotification,
    required TResult Function() getEmployerNotification,
    required TResult Function(UpdateJobSeekerProfileEntity entity)
        updateJobSeekerProfile,
    required TResult Function(UpdateEmployerProfileEntity entity)
        updateEmployerProfile,
    required TResult Function(ChangePasswordEntity entity) updatePassword,
    required TResult Function(
            UpdateJobSeekerProfileEntity updateJobSeekerprofile)
        updateJobSeekerRequest,
  }) {
    return updateEmployerProfile(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getJobSeekerProfile,
    TResult? Function()? getEmployerProfile,
    TResult? Function()? getJobSeekerNotification,
    TResult? Function()? getEmployerNotification,
    TResult? Function(UpdateJobSeekerProfileEntity entity)?
        updateJobSeekerProfile,
    TResult? Function(UpdateEmployerProfileEntity entity)?
        updateEmployerProfile,
    TResult? Function(ChangePasswordEntity entity)? updatePassword,
    TResult? Function(UpdateJobSeekerProfileEntity updateJobSeekerprofile)?
        updateJobSeekerRequest,
  }) {
    return updateEmployerProfile?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getJobSeekerProfile,
    TResult Function()? getEmployerProfile,
    TResult Function()? getJobSeekerNotification,
    TResult Function()? getEmployerNotification,
    TResult Function(UpdateJobSeekerProfileEntity entity)?
        updateJobSeekerProfile,
    TResult Function(UpdateEmployerProfileEntity entity)? updateEmployerProfile,
    TResult Function(ChangePasswordEntity entity)? updatePassword,
    TResult Function(UpdateJobSeekerProfileEntity updateJobSeekerprofile)?
        updateJobSeekerRequest,
    required TResult orElse(),
  }) {
    if (updateEmployerProfile != null) {
      return updateEmployerProfile(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetJobSeekerProfile value) getJobSeekerProfile,
    required TResult Function(_GetEmployerProfile value) getEmployerProfile,
    required TResult Function(_GetJobSeekerNotification value)
        getJobSeekerNotification,
    required TResult Function(_GetEmployerNotification value)
        getEmployerNotification,
    required TResult Function(_UpdateJobSeekerProfile value)
        updateJobSeekerProfile,
    required TResult Function(_UpdateEmployerProfile value)
        updateEmployerProfile,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateJobSeekerRequest value)
        updateJobSeekerRequest,
  }) {
    return updateEmployerProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetJobSeekerProfile value)? getJobSeekerProfile,
    TResult? Function(_GetEmployerProfile value)? getEmployerProfile,
    TResult? Function(_GetJobSeekerNotification value)?
        getJobSeekerNotification,
    TResult? Function(_GetEmployerNotification value)? getEmployerNotification,
    TResult? Function(_UpdateJobSeekerProfile value)? updateJobSeekerProfile,
    TResult? Function(_UpdateEmployerProfile value)? updateEmployerProfile,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_UpdateJobSeekerRequest value)? updateJobSeekerRequest,
  }) {
    return updateEmployerProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetJobSeekerProfile value)? getJobSeekerProfile,
    TResult Function(_GetEmployerProfile value)? getEmployerProfile,
    TResult Function(_GetJobSeekerNotification value)? getJobSeekerNotification,
    TResult Function(_GetEmployerNotification value)? getEmployerNotification,
    TResult Function(_UpdateJobSeekerProfile value)? updateJobSeekerProfile,
    TResult Function(_UpdateEmployerProfile value)? updateEmployerProfile,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateJobSeekerRequest value)? updateJobSeekerRequest,
    required TResult orElse(),
  }) {
    if (updateEmployerProfile != null) {
      return updateEmployerProfile(this);
    }
    return orElse();
  }
}

abstract class _UpdateEmployerProfile implements SettingEvent {
  const factory _UpdateEmployerProfile(
      final UpdateEmployerProfileEntity entity) = _$UpdateEmployerProfileImpl;

  UpdateEmployerProfileEntity get entity;
  @JsonKey(ignore: true)
  _$$UpdateEmployerProfileImplCopyWith<_$UpdateEmployerProfileImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePasswordImplCopyWith<$Res> {
  factory _$$UpdatePasswordImplCopyWith(_$UpdatePasswordImpl value,
          $Res Function(_$UpdatePasswordImpl) then) =
      __$$UpdatePasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChangePasswordEntity entity});
}

/// @nodoc
class __$$UpdatePasswordImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$UpdatePasswordImpl>
    implements _$$UpdatePasswordImplCopyWith<$Res> {
  __$$UpdatePasswordImplCopyWithImpl(
      _$UpdatePasswordImpl _value, $Res Function(_$UpdatePasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$UpdatePasswordImpl(
      null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as ChangePasswordEntity,
    ));
  }
}

/// @nodoc

class _$UpdatePasswordImpl
    with DiagnosticableTreeMixin
    implements _UpdatePassword {
  const _$UpdatePasswordImpl(this.entity);

  @override
  final ChangePasswordEntity entity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingEvent.updatePassword(entity: $entity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingEvent.updatePassword'))
      ..add(DiagnosticsProperty('entity', entity));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePasswordImpl &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePasswordImplCopyWith<_$UpdatePasswordImpl> get copyWith =>
      __$$UpdatePasswordImplCopyWithImpl<_$UpdatePasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getJobSeekerProfile,
    required TResult Function() getEmployerProfile,
    required TResult Function() getJobSeekerNotification,
    required TResult Function() getEmployerNotification,
    required TResult Function(UpdateJobSeekerProfileEntity entity)
        updateJobSeekerProfile,
    required TResult Function(UpdateEmployerProfileEntity entity)
        updateEmployerProfile,
    required TResult Function(ChangePasswordEntity entity) updatePassword,
    required TResult Function(
            UpdateJobSeekerProfileEntity updateJobSeekerprofile)
        updateJobSeekerRequest,
  }) {
    return updatePassword(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getJobSeekerProfile,
    TResult? Function()? getEmployerProfile,
    TResult? Function()? getJobSeekerNotification,
    TResult? Function()? getEmployerNotification,
    TResult? Function(UpdateJobSeekerProfileEntity entity)?
        updateJobSeekerProfile,
    TResult? Function(UpdateEmployerProfileEntity entity)?
        updateEmployerProfile,
    TResult? Function(ChangePasswordEntity entity)? updatePassword,
    TResult? Function(UpdateJobSeekerProfileEntity updateJobSeekerprofile)?
        updateJobSeekerRequest,
  }) {
    return updatePassword?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getJobSeekerProfile,
    TResult Function()? getEmployerProfile,
    TResult Function()? getJobSeekerNotification,
    TResult Function()? getEmployerNotification,
    TResult Function(UpdateJobSeekerProfileEntity entity)?
        updateJobSeekerProfile,
    TResult Function(UpdateEmployerProfileEntity entity)? updateEmployerProfile,
    TResult Function(ChangePasswordEntity entity)? updatePassword,
    TResult Function(UpdateJobSeekerProfileEntity updateJobSeekerprofile)?
        updateJobSeekerRequest,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetJobSeekerProfile value) getJobSeekerProfile,
    required TResult Function(_GetEmployerProfile value) getEmployerProfile,
    required TResult Function(_GetJobSeekerNotification value)
        getJobSeekerNotification,
    required TResult Function(_GetEmployerNotification value)
        getEmployerNotification,
    required TResult Function(_UpdateJobSeekerProfile value)
        updateJobSeekerProfile,
    required TResult Function(_UpdateEmployerProfile value)
        updateEmployerProfile,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateJobSeekerRequest value)
        updateJobSeekerRequest,
  }) {
    return updatePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetJobSeekerProfile value)? getJobSeekerProfile,
    TResult? Function(_GetEmployerProfile value)? getEmployerProfile,
    TResult? Function(_GetJobSeekerNotification value)?
        getJobSeekerNotification,
    TResult? Function(_GetEmployerNotification value)? getEmployerNotification,
    TResult? Function(_UpdateJobSeekerProfile value)? updateJobSeekerProfile,
    TResult? Function(_UpdateEmployerProfile value)? updateEmployerProfile,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_UpdateJobSeekerRequest value)? updateJobSeekerRequest,
  }) {
    return updatePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetJobSeekerProfile value)? getJobSeekerProfile,
    TResult Function(_GetEmployerProfile value)? getEmployerProfile,
    TResult Function(_GetJobSeekerNotification value)? getJobSeekerNotification,
    TResult Function(_GetEmployerNotification value)? getEmployerNotification,
    TResult Function(_UpdateJobSeekerProfile value)? updateJobSeekerProfile,
    TResult Function(_UpdateEmployerProfile value)? updateEmployerProfile,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateJobSeekerRequest value)? updateJobSeekerRequest,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(this);
    }
    return orElse();
  }
}

abstract class _UpdatePassword implements SettingEvent {
  const factory _UpdatePassword(final ChangePasswordEntity entity) =
      _$UpdatePasswordImpl;

  ChangePasswordEntity get entity;
  @JsonKey(ignore: true)
  _$$UpdatePasswordImplCopyWith<_$UpdatePasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateJobSeekerRequestImplCopyWith<$Res> {
  factory _$$UpdateJobSeekerRequestImplCopyWith(
          _$UpdateJobSeekerRequestImpl value,
          $Res Function(_$UpdateJobSeekerRequestImpl) then) =
      __$$UpdateJobSeekerRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateJobSeekerProfileEntity updateJobSeekerprofile});
}

/// @nodoc
class __$$UpdateJobSeekerRequestImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$UpdateJobSeekerRequestImpl>
    implements _$$UpdateJobSeekerRequestImplCopyWith<$Res> {
  __$$UpdateJobSeekerRequestImplCopyWithImpl(
      _$UpdateJobSeekerRequestImpl _value,
      $Res Function(_$UpdateJobSeekerRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateJobSeekerprofile = null,
  }) {
    return _then(_$UpdateJobSeekerRequestImpl(
      null == updateJobSeekerprofile
          ? _value.updateJobSeekerprofile
          : updateJobSeekerprofile // ignore: cast_nullable_to_non_nullable
              as UpdateJobSeekerProfileEntity,
    ));
  }
}

/// @nodoc

class _$UpdateJobSeekerRequestImpl
    with DiagnosticableTreeMixin
    implements _UpdateJobSeekerRequest {
  const _$UpdateJobSeekerRequestImpl(this.updateJobSeekerprofile);

  @override
  final UpdateJobSeekerProfileEntity updateJobSeekerprofile;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingEvent.updateJobSeekerRequest(updateJobSeekerprofile: $updateJobSeekerprofile)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingEvent.updateJobSeekerRequest'))
      ..add(DiagnosticsProperty(
          'updateJobSeekerprofile', updateJobSeekerprofile));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateJobSeekerRequestImpl &&
            (identical(other.updateJobSeekerprofile, updateJobSeekerprofile) ||
                other.updateJobSeekerprofile == updateJobSeekerprofile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updateJobSeekerprofile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateJobSeekerRequestImplCopyWith<_$UpdateJobSeekerRequestImpl>
      get copyWith => __$$UpdateJobSeekerRequestImplCopyWithImpl<
          _$UpdateJobSeekerRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getJobSeekerProfile,
    required TResult Function() getEmployerProfile,
    required TResult Function() getJobSeekerNotification,
    required TResult Function() getEmployerNotification,
    required TResult Function(UpdateJobSeekerProfileEntity entity)
        updateJobSeekerProfile,
    required TResult Function(UpdateEmployerProfileEntity entity)
        updateEmployerProfile,
    required TResult Function(ChangePasswordEntity entity) updatePassword,
    required TResult Function(
            UpdateJobSeekerProfileEntity updateJobSeekerprofile)
        updateJobSeekerRequest,
  }) {
    return updateJobSeekerRequest(updateJobSeekerprofile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getJobSeekerProfile,
    TResult? Function()? getEmployerProfile,
    TResult? Function()? getJobSeekerNotification,
    TResult? Function()? getEmployerNotification,
    TResult? Function(UpdateJobSeekerProfileEntity entity)?
        updateJobSeekerProfile,
    TResult? Function(UpdateEmployerProfileEntity entity)?
        updateEmployerProfile,
    TResult? Function(ChangePasswordEntity entity)? updatePassword,
    TResult? Function(UpdateJobSeekerProfileEntity updateJobSeekerprofile)?
        updateJobSeekerRequest,
  }) {
    return updateJobSeekerRequest?.call(updateJobSeekerprofile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getJobSeekerProfile,
    TResult Function()? getEmployerProfile,
    TResult Function()? getJobSeekerNotification,
    TResult Function()? getEmployerNotification,
    TResult Function(UpdateJobSeekerProfileEntity entity)?
        updateJobSeekerProfile,
    TResult Function(UpdateEmployerProfileEntity entity)? updateEmployerProfile,
    TResult Function(ChangePasswordEntity entity)? updatePassword,
    TResult Function(UpdateJobSeekerProfileEntity updateJobSeekerprofile)?
        updateJobSeekerRequest,
    required TResult orElse(),
  }) {
    if (updateJobSeekerRequest != null) {
      return updateJobSeekerRequest(updateJobSeekerprofile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetJobSeekerProfile value) getJobSeekerProfile,
    required TResult Function(_GetEmployerProfile value) getEmployerProfile,
    required TResult Function(_GetJobSeekerNotification value)
        getJobSeekerNotification,
    required TResult Function(_GetEmployerNotification value)
        getEmployerNotification,
    required TResult Function(_UpdateJobSeekerProfile value)
        updateJobSeekerProfile,
    required TResult Function(_UpdateEmployerProfile value)
        updateEmployerProfile,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateJobSeekerRequest value)
        updateJobSeekerRequest,
  }) {
    return updateJobSeekerRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetJobSeekerProfile value)? getJobSeekerProfile,
    TResult? Function(_GetEmployerProfile value)? getEmployerProfile,
    TResult? Function(_GetJobSeekerNotification value)?
        getJobSeekerNotification,
    TResult? Function(_GetEmployerNotification value)? getEmployerNotification,
    TResult? Function(_UpdateJobSeekerProfile value)? updateJobSeekerProfile,
    TResult? Function(_UpdateEmployerProfile value)? updateEmployerProfile,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_UpdateJobSeekerRequest value)? updateJobSeekerRequest,
  }) {
    return updateJobSeekerRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetJobSeekerProfile value)? getJobSeekerProfile,
    TResult Function(_GetEmployerProfile value)? getEmployerProfile,
    TResult Function(_GetJobSeekerNotification value)? getJobSeekerNotification,
    TResult Function(_GetEmployerNotification value)? getEmployerNotification,
    TResult Function(_UpdateJobSeekerProfile value)? updateJobSeekerProfile,
    TResult Function(_UpdateEmployerProfile value)? updateEmployerProfile,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateJobSeekerRequest value)? updateJobSeekerRequest,
    required TResult orElse(),
  }) {
    if (updateJobSeekerRequest != null) {
      return updateJobSeekerRequest(this);
    }
    return orElse();
  }
}

abstract class _UpdateJobSeekerRequest implements SettingEvent {
  const factory _UpdateJobSeekerRequest(
          final UpdateJobSeekerProfileEntity updateJobSeekerprofile) =
      _$UpdateJobSeekerRequestImpl;

  UpdateJobSeekerProfileEntity get updateJobSeekerprofile;
  @JsonKey(ignore: true)
  _$$UpdateJobSeekerRequestImplCopyWith<_$UpdateJobSeekerRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingState {
  List<NotificationEntity> get notification =>
      throw _privateConstructorUsedError;
  UpdateJobSeekerProfileState get updateJobSeekerProfileState =>
      throw _privateConstructorUsedError;
  GetEmployerProfileState get getEmployerProfileState =>
      throw _privateConstructorUsedError;
  GetJobSeekerProfileState get getJobSeekerProfileState =>
      throw _privateConstructorUsedError;
  UpdateEmployerProfileState get updateEmployerProfileState =>
      throw _privateConstructorUsedError;
  JobSeekerNotificationState get jobSeekerNotificationState =>
      throw _privateConstructorUsedError;
  EmployerNotificationState get employerNotificationState =>
      throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  UpdatePasswordState get updatePasswordState =>
      throw _privateConstructorUsedError;
  GetEmployerResponseEntity? get getEmployerResponseEntity =>
      throw _privateConstructorUsedError;
  GetJobSeekerResponseEntity? get getJobSeekerResponseEntity =>
      throw _privateConstructorUsedError;
  UpdateJobSeekerProfileEntity get updateJobSeekerProfileRequest =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<NotificationEntity> notification,
            UpdateJobSeekerProfileState updateJobSeekerProfileState,
            GetEmployerProfileState getEmployerProfileState,
            GetJobSeekerProfileState getJobSeekerProfileState,
            UpdateEmployerProfileState updateEmployerProfileState,
            JobSeekerNotificationState jobSeekerNotificationState,
            EmployerNotificationState employerNotificationState,
            String? errorMessage,
            UpdatePasswordState updatePasswordState,
            GetEmployerResponseEntity? getEmployerResponseEntity,
            GetJobSeekerResponseEntity? getJobSeekerResponseEntity,
            UpdateJobSeekerProfileEntity updateJobSeekerProfileRequest)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<NotificationEntity> notification,
            UpdateJobSeekerProfileState updateJobSeekerProfileState,
            GetEmployerProfileState getEmployerProfileState,
            GetJobSeekerProfileState getJobSeekerProfileState,
            UpdateEmployerProfileState updateEmployerProfileState,
            JobSeekerNotificationState jobSeekerNotificationState,
            EmployerNotificationState employerNotificationState,
            String? errorMessage,
            UpdatePasswordState updatePasswordState,
            GetEmployerResponseEntity? getEmployerResponseEntity,
            GetJobSeekerResponseEntity? getJobSeekerResponseEntity,
            UpdateJobSeekerProfileEntity updateJobSeekerProfileRequest)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<NotificationEntity> notification,
            UpdateJobSeekerProfileState updateJobSeekerProfileState,
            GetEmployerProfileState getEmployerProfileState,
            GetJobSeekerProfileState getJobSeekerProfileState,
            UpdateEmployerProfileState updateEmployerProfileState,
            JobSeekerNotificationState jobSeekerNotificationState,
            EmployerNotificationState employerNotificationState,
            String? errorMessage,
            UpdatePasswordState updatePasswordState,
            GetEmployerResponseEntity? getEmployerResponseEntity,
            GetJobSeekerResponseEntity? getJobSeekerResponseEntity,
            UpdateJobSeekerProfileEntity updateJobSeekerProfileRequest)?
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
  $SettingStateCopyWith<SettingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingStateCopyWith<$Res> {
  factory $SettingStateCopyWith(
          SettingState value, $Res Function(SettingState) then) =
      _$SettingStateCopyWithImpl<$Res, SettingState>;
  @useResult
  $Res call(
      {List<NotificationEntity> notification,
      UpdateJobSeekerProfileState updateJobSeekerProfileState,
      GetEmployerProfileState getEmployerProfileState,
      GetJobSeekerProfileState getJobSeekerProfileState,
      UpdateEmployerProfileState updateEmployerProfileState,
      JobSeekerNotificationState jobSeekerNotificationState,
      EmployerNotificationState employerNotificationState,
      String? errorMessage,
      UpdatePasswordState updatePasswordState,
      GetEmployerResponseEntity? getEmployerResponseEntity,
      GetJobSeekerResponseEntity? getJobSeekerResponseEntity,
      UpdateJobSeekerProfileEntity updateJobSeekerProfileRequest});
}

/// @nodoc
class _$SettingStateCopyWithImpl<$Res, $Val extends SettingState>
    implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
    Object? updateJobSeekerProfileState = null,
    Object? getEmployerProfileState = null,
    Object? getJobSeekerProfileState = null,
    Object? updateEmployerProfileState = null,
    Object? jobSeekerNotificationState = null,
    Object? employerNotificationState = null,
    Object? errorMessage = freezed,
    Object? updatePasswordState = null,
    Object? getEmployerResponseEntity = freezed,
    Object? getJobSeekerResponseEntity = freezed,
    Object? updateJobSeekerProfileRequest = null,
  }) {
    return _then(_value.copyWith(
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as List<NotificationEntity>,
      updateJobSeekerProfileState: null == updateJobSeekerProfileState
          ? _value.updateJobSeekerProfileState
          : updateJobSeekerProfileState // ignore: cast_nullable_to_non_nullable
              as UpdateJobSeekerProfileState,
      getEmployerProfileState: null == getEmployerProfileState
          ? _value.getEmployerProfileState
          : getEmployerProfileState // ignore: cast_nullable_to_non_nullable
              as GetEmployerProfileState,
      getJobSeekerProfileState: null == getJobSeekerProfileState
          ? _value.getJobSeekerProfileState
          : getJobSeekerProfileState // ignore: cast_nullable_to_non_nullable
              as GetJobSeekerProfileState,
      updateEmployerProfileState: null == updateEmployerProfileState
          ? _value.updateEmployerProfileState
          : updateEmployerProfileState // ignore: cast_nullable_to_non_nullable
              as UpdateEmployerProfileState,
      jobSeekerNotificationState: null == jobSeekerNotificationState
          ? _value.jobSeekerNotificationState
          : jobSeekerNotificationState // ignore: cast_nullable_to_non_nullable
              as JobSeekerNotificationState,
      employerNotificationState: null == employerNotificationState
          ? _value.employerNotificationState
          : employerNotificationState // ignore: cast_nullable_to_non_nullable
              as EmployerNotificationState,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      updatePasswordState: null == updatePasswordState
          ? _value.updatePasswordState
          : updatePasswordState // ignore: cast_nullable_to_non_nullable
              as UpdatePasswordState,
      getEmployerResponseEntity: freezed == getEmployerResponseEntity
          ? _value.getEmployerResponseEntity
          : getEmployerResponseEntity // ignore: cast_nullable_to_non_nullable
              as GetEmployerResponseEntity?,
      getJobSeekerResponseEntity: freezed == getJobSeekerResponseEntity
          ? _value.getJobSeekerResponseEntity
          : getJobSeekerResponseEntity // ignore: cast_nullable_to_non_nullable
              as GetJobSeekerResponseEntity?,
      updateJobSeekerProfileRequest: null == updateJobSeekerProfileRequest
          ? _value.updateJobSeekerProfileRequest
          : updateJobSeekerProfileRequest // ignore: cast_nullable_to_non_nullable
              as UpdateJobSeekerProfileEntity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SettingStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<NotificationEntity> notification,
      UpdateJobSeekerProfileState updateJobSeekerProfileState,
      GetEmployerProfileState getEmployerProfileState,
      GetJobSeekerProfileState getJobSeekerProfileState,
      UpdateEmployerProfileState updateEmployerProfileState,
      JobSeekerNotificationState jobSeekerNotificationState,
      EmployerNotificationState employerNotificationState,
      String? errorMessage,
      UpdatePasswordState updatePasswordState,
      GetEmployerResponseEntity? getEmployerResponseEntity,
      GetJobSeekerResponseEntity? getJobSeekerResponseEntity,
      UpdateJobSeekerProfileEntity updateJobSeekerProfileRequest});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
    Object? updateJobSeekerProfileState = null,
    Object? getEmployerProfileState = null,
    Object? getJobSeekerProfileState = null,
    Object? updateEmployerProfileState = null,
    Object? jobSeekerNotificationState = null,
    Object? employerNotificationState = null,
    Object? errorMessage = freezed,
    Object? updatePasswordState = null,
    Object? getEmployerResponseEntity = freezed,
    Object? getJobSeekerResponseEntity = freezed,
    Object? updateJobSeekerProfileRequest = null,
  }) {
    return _then(_$InitialImpl(
      notification: null == notification
          ? _value._notification
          : notification // ignore: cast_nullable_to_non_nullable
              as List<NotificationEntity>,
      updateJobSeekerProfileState: null == updateJobSeekerProfileState
          ? _value.updateJobSeekerProfileState
          : updateJobSeekerProfileState // ignore: cast_nullable_to_non_nullable
              as UpdateJobSeekerProfileState,
      getEmployerProfileState: null == getEmployerProfileState
          ? _value.getEmployerProfileState
          : getEmployerProfileState // ignore: cast_nullable_to_non_nullable
              as GetEmployerProfileState,
      getJobSeekerProfileState: null == getJobSeekerProfileState
          ? _value.getJobSeekerProfileState
          : getJobSeekerProfileState // ignore: cast_nullable_to_non_nullable
              as GetJobSeekerProfileState,
      updateEmployerProfileState: null == updateEmployerProfileState
          ? _value.updateEmployerProfileState
          : updateEmployerProfileState // ignore: cast_nullable_to_non_nullable
              as UpdateEmployerProfileState,
      jobSeekerNotificationState: null == jobSeekerNotificationState
          ? _value.jobSeekerNotificationState
          : jobSeekerNotificationState // ignore: cast_nullable_to_non_nullable
              as JobSeekerNotificationState,
      employerNotificationState: null == employerNotificationState
          ? _value.employerNotificationState
          : employerNotificationState // ignore: cast_nullable_to_non_nullable
              as EmployerNotificationState,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      updatePasswordState: null == updatePasswordState
          ? _value.updatePasswordState
          : updatePasswordState // ignore: cast_nullable_to_non_nullable
              as UpdatePasswordState,
      getEmployerResponseEntity: freezed == getEmployerResponseEntity
          ? _value.getEmployerResponseEntity
          : getEmployerResponseEntity // ignore: cast_nullable_to_non_nullable
              as GetEmployerResponseEntity?,
      getJobSeekerResponseEntity: freezed == getJobSeekerResponseEntity
          ? _value.getJobSeekerResponseEntity
          : getJobSeekerResponseEntity // ignore: cast_nullable_to_non_nullable
              as GetJobSeekerResponseEntity?,
      updateJobSeekerProfileRequest: null == updateJobSeekerProfileRequest
          ? _value.updateJobSeekerProfileRequest
          : updateJobSeekerProfileRequest // ignore: cast_nullable_to_non_nullable
              as UpdateJobSeekerProfileEntity,
    ));
  }
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl(
      {final List<NotificationEntity> notification = const [],
      this.updateJobSeekerProfileState = UpdateJobSeekerProfileState.idle,
      this.getEmployerProfileState = GetEmployerProfileState.idle,
      this.getJobSeekerProfileState = GetJobSeekerProfileState.idle,
      this.updateEmployerProfileState = UpdateEmployerProfileState.idle,
      this.jobSeekerNotificationState = JobSeekerNotificationState.idle,
      this.employerNotificationState = EmployerNotificationState.idle,
      this.errorMessage,
      this.updatePasswordState = UpdatePasswordState.idle,
      this.getEmployerResponseEntity,
      this.getJobSeekerResponseEntity,
      this.updateJobSeekerProfileRequest = const UpdateJobSeekerProfileEntity(
          fullName: '',
          state: '',
          city: '',
          resume: null,
          email: '',
          phoneNumber: '',
          jobType: '',
          streetAddress: '',
          yearsOfExperience: '',
          guarantorPhoneNumber: '',
          guarantorName: '',
          guarantorEmail: '',
          category: '',
          identity: '',
          countryId: '',
          aboutMe: '',
          compensationType: '',
          maxAmount: '',
          minAmount: '',
          dateOFBirth: '',
          skill: '',
          guarantorAddress: '')})
      : _notification = notification;

  final List<NotificationEntity> _notification;
  @override
  @JsonKey()
  List<NotificationEntity> get notification {
    if (_notification is EqualUnmodifiableListView) return _notification;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notification);
  }

  @override
  @JsonKey()
  final UpdateJobSeekerProfileState updateJobSeekerProfileState;
  @override
  @JsonKey()
  final GetEmployerProfileState getEmployerProfileState;
  @override
  @JsonKey()
  final GetJobSeekerProfileState getJobSeekerProfileState;
  @override
  @JsonKey()
  final UpdateEmployerProfileState updateEmployerProfileState;
  @override
  @JsonKey()
  final JobSeekerNotificationState jobSeekerNotificationState;
  @override
  @JsonKey()
  final EmployerNotificationState employerNotificationState;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final UpdatePasswordState updatePasswordState;
  @override
  final GetEmployerResponseEntity? getEmployerResponseEntity;
  @override
  final GetJobSeekerResponseEntity? getJobSeekerResponseEntity;
  @override
  @JsonKey()
  final UpdateJobSeekerProfileEntity updateJobSeekerProfileRequest;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingState.initial(notification: $notification, updateJobSeekerProfileState: $updateJobSeekerProfileState, getEmployerProfileState: $getEmployerProfileState, getJobSeekerProfileState: $getJobSeekerProfileState, updateEmployerProfileState: $updateEmployerProfileState, jobSeekerNotificationState: $jobSeekerNotificationState, employerNotificationState: $employerNotificationState, errorMessage: $errorMessage, updatePasswordState: $updatePasswordState, getEmployerResponseEntity: $getEmployerResponseEntity, getJobSeekerResponseEntity: $getJobSeekerResponseEntity, updateJobSeekerProfileRequest: $updateJobSeekerProfileRequest)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingState.initial'))
      ..add(DiagnosticsProperty('notification', notification))
      ..add(DiagnosticsProperty(
          'updateJobSeekerProfileState', updateJobSeekerProfileState))
      ..add(DiagnosticsProperty(
          'getEmployerProfileState', getEmployerProfileState))
      ..add(DiagnosticsProperty(
          'getJobSeekerProfileState', getJobSeekerProfileState))
      ..add(DiagnosticsProperty(
          'updateEmployerProfileState', updateEmployerProfileState))
      ..add(DiagnosticsProperty(
          'jobSeekerNotificationState', jobSeekerNotificationState))
      ..add(DiagnosticsProperty(
          'employerNotificationState', employerNotificationState))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('updatePasswordState', updatePasswordState))
      ..add(DiagnosticsProperty(
          'getEmployerResponseEntity', getEmployerResponseEntity))
      ..add(DiagnosticsProperty(
          'getJobSeekerResponseEntity', getJobSeekerResponseEntity))
      ..add(DiagnosticsProperty(
          'updateJobSeekerProfileRequest', updateJobSeekerProfileRequest));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._notification, _notification) &&
            (identical(other.updateJobSeekerProfileState, updateJobSeekerProfileState) ||
                other.updateJobSeekerProfileState ==
                    updateJobSeekerProfileState) &&
            (identical(other.getEmployerProfileState, getEmployerProfileState) ||
                other.getEmployerProfileState == getEmployerProfileState) &&
            (identical(other.getJobSeekerProfileState, getJobSeekerProfileState) ||
                other.getJobSeekerProfileState == getJobSeekerProfileState) &&
            (identical(other.updateEmployerProfileState, updateEmployerProfileState) ||
                other.updateEmployerProfileState ==
                    updateEmployerProfileState) &&
            (identical(other.jobSeekerNotificationState, jobSeekerNotificationState) ||
                other.jobSeekerNotificationState ==
                    jobSeekerNotificationState) &&
            (identical(other.employerNotificationState, employerNotificationState) ||
                other.employerNotificationState == employerNotificationState) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.updatePasswordState, updatePasswordState) ||
                other.updatePasswordState == updatePasswordState) &&
            (identical(other.getEmployerResponseEntity, getEmployerResponseEntity) ||
                other.getEmployerResponseEntity == getEmployerResponseEntity) &&
            (identical(other.getJobSeekerResponseEntity, getJobSeekerResponseEntity) ||
                other.getJobSeekerResponseEntity ==
                    getJobSeekerResponseEntity) &&
            (identical(other.updateJobSeekerProfileRequest,
                    updateJobSeekerProfileRequest) ||
                other.updateJobSeekerProfileRequest ==
                    updateJobSeekerProfileRequest));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_notification),
      updateJobSeekerProfileState,
      getEmployerProfileState,
      getJobSeekerProfileState,
      updateEmployerProfileState,
      jobSeekerNotificationState,
      employerNotificationState,
      errorMessage,
      updatePasswordState,
      getEmployerResponseEntity,
      getJobSeekerResponseEntity,
      updateJobSeekerProfileRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<NotificationEntity> notification,
            UpdateJobSeekerProfileState updateJobSeekerProfileState,
            GetEmployerProfileState getEmployerProfileState,
            GetJobSeekerProfileState getJobSeekerProfileState,
            UpdateEmployerProfileState updateEmployerProfileState,
            JobSeekerNotificationState jobSeekerNotificationState,
            EmployerNotificationState employerNotificationState,
            String? errorMessage,
            UpdatePasswordState updatePasswordState,
            GetEmployerResponseEntity? getEmployerResponseEntity,
            GetJobSeekerResponseEntity? getJobSeekerResponseEntity,
            UpdateJobSeekerProfileEntity updateJobSeekerProfileRequest)
        initial,
  }) {
    return initial(
        notification,
        updateJobSeekerProfileState,
        getEmployerProfileState,
        getJobSeekerProfileState,
        updateEmployerProfileState,
        jobSeekerNotificationState,
        employerNotificationState,
        errorMessage,
        updatePasswordState,
        getEmployerResponseEntity,
        getJobSeekerResponseEntity,
        updateJobSeekerProfileRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<NotificationEntity> notification,
            UpdateJobSeekerProfileState updateJobSeekerProfileState,
            GetEmployerProfileState getEmployerProfileState,
            GetJobSeekerProfileState getJobSeekerProfileState,
            UpdateEmployerProfileState updateEmployerProfileState,
            JobSeekerNotificationState jobSeekerNotificationState,
            EmployerNotificationState employerNotificationState,
            String? errorMessage,
            UpdatePasswordState updatePasswordState,
            GetEmployerResponseEntity? getEmployerResponseEntity,
            GetJobSeekerResponseEntity? getJobSeekerResponseEntity,
            UpdateJobSeekerProfileEntity updateJobSeekerProfileRequest)?
        initial,
  }) {
    return initial?.call(
        notification,
        updateJobSeekerProfileState,
        getEmployerProfileState,
        getJobSeekerProfileState,
        updateEmployerProfileState,
        jobSeekerNotificationState,
        employerNotificationState,
        errorMessage,
        updatePasswordState,
        getEmployerResponseEntity,
        getJobSeekerResponseEntity,
        updateJobSeekerProfileRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<NotificationEntity> notification,
            UpdateJobSeekerProfileState updateJobSeekerProfileState,
            GetEmployerProfileState getEmployerProfileState,
            GetJobSeekerProfileState getJobSeekerProfileState,
            UpdateEmployerProfileState updateEmployerProfileState,
            JobSeekerNotificationState jobSeekerNotificationState,
            EmployerNotificationState employerNotificationState,
            String? errorMessage,
            UpdatePasswordState updatePasswordState,
            GetEmployerResponseEntity? getEmployerResponseEntity,
            GetJobSeekerResponseEntity? getJobSeekerResponseEntity,
            UpdateJobSeekerProfileEntity updateJobSeekerProfileRequest)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          notification,
          updateJobSeekerProfileState,
          getEmployerProfileState,
          getJobSeekerProfileState,
          updateEmployerProfileState,
          jobSeekerNotificationState,
          employerNotificationState,
          errorMessage,
          updatePasswordState,
          getEmployerResponseEntity,
          getJobSeekerResponseEntity,
          updateJobSeekerProfileRequest);
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

abstract class _Initial implements SettingState {
  const factory _Initial(
          {final List<NotificationEntity> notification,
          final UpdateJobSeekerProfileState updateJobSeekerProfileState,
          final GetEmployerProfileState getEmployerProfileState,
          final GetJobSeekerProfileState getJobSeekerProfileState,
          final UpdateEmployerProfileState updateEmployerProfileState,
          final JobSeekerNotificationState jobSeekerNotificationState,
          final EmployerNotificationState employerNotificationState,
          final String? errorMessage,
          final UpdatePasswordState updatePasswordState,
          final GetEmployerResponseEntity? getEmployerResponseEntity,
          final GetJobSeekerResponseEntity? getJobSeekerResponseEntity,
          final UpdateJobSeekerProfileEntity updateJobSeekerProfileRequest}) =
      _$InitialImpl;

  @override
  List<NotificationEntity> get notification;
  @override
  UpdateJobSeekerProfileState get updateJobSeekerProfileState;
  @override
  GetEmployerProfileState get getEmployerProfileState;
  @override
  GetJobSeekerProfileState get getJobSeekerProfileState;
  @override
  UpdateEmployerProfileState get updateEmployerProfileState;
  @override
  JobSeekerNotificationState get jobSeekerNotificationState;
  @override
  EmployerNotificationState get employerNotificationState;
  @override
  String? get errorMessage;
  @override
  UpdatePasswordState get updatePasswordState;
  @override
  GetEmployerResponseEntity? get getEmployerResponseEntity;
  @override
  GetJobSeekerResponseEntity? get getJobSeekerResponseEntity;
  @override
  UpdateJobSeekerProfileEntity get updateJobSeekerProfileRequest;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
