// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'candidates_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CandidatesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AcceptCandidateEntity param) acceptCandidate,
    required TResult Function(AcceptCandidateEntity param) rejectCandidate,
    required TResult Function(String jobId) getAssignedCandidate,
    required TResult Function() getCandidateSkill,
    required TResult Function(String jobId) getCandidateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AcceptCandidateEntity param)? acceptCandidate,
    TResult? Function(AcceptCandidateEntity param)? rejectCandidate,
    TResult? Function(String jobId)? getAssignedCandidate,
    TResult? Function()? getCandidateSkill,
    TResult? Function(String jobId)? getCandidateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AcceptCandidateEntity param)? acceptCandidate,
    TResult Function(AcceptCandidateEntity param)? rejectCandidate,
    TResult Function(String jobId)? getAssignedCandidate,
    TResult Function()? getCandidateSkill,
    TResult Function(String jobId)? getCandidateProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AcceptCandidate value) acceptCandidate,
    required TResult Function(_RejectCandidate value) rejectCandidate,
    required TResult Function(_GetAssignedCandidate value) getAssignedCandidate,
    required TResult Function(_GetCandidateSkill value) getCandidateSkill,
    required TResult Function(_GetCandidateProfile value) getCandidateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcceptCandidate value)? acceptCandidate,
    TResult? Function(_RejectCandidate value)? rejectCandidate,
    TResult? Function(_GetAssignedCandidate value)? getAssignedCandidate,
    TResult? Function(_GetCandidateSkill value)? getCandidateSkill,
    TResult? Function(_GetCandidateProfile value)? getCandidateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcceptCandidate value)? acceptCandidate,
    TResult Function(_RejectCandidate value)? rejectCandidate,
    TResult Function(_GetAssignedCandidate value)? getAssignedCandidate,
    TResult Function(_GetCandidateSkill value)? getCandidateSkill,
    TResult Function(_GetCandidateProfile value)? getCandidateProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CandidatesEventCopyWith<$Res> {
  factory $CandidatesEventCopyWith(
          CandidatesEvent value, $Res Function(CandidatesEvent) then) =
      _$CandidatesEventCopyWithImpl<$Res, CandidatesEvent>;
}

/// @nodoc
class _$CandidatesEventCopyWithImpl<$Res, $Val extends CandidatesEvent>
    implements $CandidatesEventCopyWith<$Res> {
  _$CandidatesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AcceptCandidateImplCopyWith<$Res> {
  factory _$$AcceptCandidateImplCopyWith(_$AcceptCandidateImpl value,
          $Res Function(_$AcceptCandidateImpl) then) =
      __$$AcceptCandidateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AcceptCandidateEntity param});
}

/// @nodoc
class __$$AcceptCandidateImplCopyWithImpl<$Res>
    extends _$CandidatesEventCopyWithImpl<$Res, _$AcceptCandidateImpl>
    implements _$$AcceptCandidateImplCopyWith<$Res> {
  __$$AcceptCandidateImplCopyWithImpl(
      _$AcceptCandidateImpl _value, $Res Function(_$AcceptCandidateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$AcceptCandidateImpl(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as AcceptCandidateEntity,
    ));
  }
}

/// @nodoc

class _$AcceptCandidateImpl implements _AcceptCandidate {
  const _$AcceptCandidateImpl(this.param);

  @override
  final AcceptCandidateEntity param;

  @override
  String toString() {
    return 'CandidatesEvent.acceptCandidate(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptCandidateImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptCandidateImplCopyWith<_$AcceptCandidateImpl> get copyWith =>
      __$$AcceptCandidateImplCopyWithImpl<_$AcceptCandidateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AcceptCandidateEntity param) acceptCandidate,
    required TResult Function(AcceptCandidateEntity param) rejectCandidate,
    required TResult Function(String jobId) getAssignedCandidate,
    required TResult Function() getCandidateSkill,
    required TResult Function(String jobId) getCandidateProfile,
  }) {
    return acceptCandidate(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AcceptCandidateEntity param)? acceptCandidate,
    TResult? Function(AcceptCandidateEntity param)? rejectCandidate,
    TResult? Function(String jobId)? getAssignedCandidate,
    TResult? Function()? getCandidateSkill,
    TResult? Function(String jobId)? getCandidateProfile,
  }) {
    return acceptCandidate?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AcceptCandidateEntity param)? acceptCandidate,
    TResult Function(AcceptCandidateEntity param)? rejectCandidate,
    TResult Function(String jobId)? getAssignedCandidate,
    TResult Function()? getCandidateSkill,
    TResult Function(String jobId)? getCandidateProfile,
    required TResult orElse(),
  }) {
    if (acceptCandidate != null) {
      return acceptCandidate(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AcceptCandidate value) acceptCandidate,
    required TResult Function(_RejectCandidate value) rejectCandidate,
    required TResult Function(_GetAssignedCandidate value) getAssignedCandidate,
    required TResult Function(_GetCandidateSkill value) getCandidateSkill,
    required TResult Function(_GetCandidateProfile value) getCandidateProfile,
  }) {
    return acceptCandidate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcceptCandidate value)? acceptCandidate,
    TResult? Function(_RejectCandidate value)? rejectCandidate,
    TResult? Function(_GetAssignedCandidate value)? getAssignedCandidate,
    TResult? Function(_GetCandidateSkill value)? getCandidateSkill,
    TResult? Function(_GetCandidateProfile value)? getCandidateProfile,
  }) {
    return acceptCandidate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcceptCandidate value)? acceptCandidate,
    TResult Function(_RejectCandidate value)? rejectCandidate,
    TResult Function(_GetAssignedCandidate value)? getAssignedCandidate,
    TResult Function(_GetCandidateSkill value)? getCandidateSkill,
    TResult Function(_GetCandidateProfile value)? getCandidateProfile,
    required TResult orElse(),
  }) {
    if (acceptCandidate != null) {
      return acceptCandidate(this);
    }
    return orElse();
  }
}

abstract class _AcceptCandidate implements CandidatesEvent {
  const factory _AcceptCandidate(final AcceptCandidateEntity param) =
      _$AcceptCandidateImpl;

  AcceptCandidateEntity get param;
  @JsonKey(ignore: true)
  _$$AcceptCandidateImplCopyWith<_$AcceptCandidateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RejectCandidateImplCopyWith<$Res> {
  factory _$$RejectCandidateImplCopyWith(_$RejectCandidateImpl value,
          $Res Function(_$RejectCandidateImpl) then) =
      __$$RejectCandidateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AcceptCandidateEntity param});
}

/// @nodoc
class __$$RejectCandidateImplCopyWithImpl<$Res>
    extends _$CandidatesEventCopyWithImpl<$Res, _$RejectCandidateImpl>
    implements _$$RejectCandidateImplCopyWith<$Res> {
  __$$RejectCandidateImplCopyWithImpl(
      _$RejectCandidateImpl _value, $Res Function(_$RejectCandidateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$RejectCandidateImpl(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as AcceptCandidateEntity,
    ));
  }
}

/// @nodoc

class _$RejectCandidateImpl implements _RejectCandidate {
  const _$RejectCandidateImpl(this.param);

  @override
  final AcceptCandidateEntity param;

  @override
  String toString() {
    return 'CandidatesEvent.rejectCandidate(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RejectCandidateImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RejectCandidateImplCopyWith<_$RejectCandidateImpl> get copyWith =>
      __$$RejectCandidateImplCopyWithImpl<_$RejectCandidateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AcceptCandidateEntity param) acceptCandidate,
    required TResult Function(AcceptCandidateEntity param) rejectCandidate,
    required TResult Function(String jobId) getAssignedCandidate,
    required TResult Function() getCandidateSkill,
    required TResult Function(String jobId) getCandidateProfile,
  }) {
    return rejectCandidate(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AcceptCandidateEntity param)? acceptCandidate,
    TResult? Function(AcceptCandidateEntity param)? rejectCandidate,
    TResult? Function(String jobId)? getAssignedCandidate,
    TResult? Function()? getCandidateSkill,
    TResult? Function(String jobId)? getCandidateProfile,
  }) {
    return rejectCandidate?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AcceptCandidateEntity param)? acceptCandidate,
    TResult Function(AcceptCandidateEntity param)? rejectCandidate,
    TResult Function(String jobId)? getAssignedCandidate,
    TResult Function()? getCandidateSkill,
    TResult Function(String jobId)? getCandidateProfile,
    required TResult orElse(),
  }) {
    if (rejectCandidate != null) {
      return rejectCandidate(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AcceptCandidate value) acceptCandidate,
    required TResult Function(_RejectCandidate value) rejectCandidate,
    required TResult Function(_GetAssignedCandidate value) getAssignedCandidate,
    required TResult Function(_GetCandidateSkill value) getCandidateSkill,
    required TResult Function(_GetCandidateProfile value) getCandidateProfile,
  }) {
    return rejectCandidate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcceptCandidate value)? acceptCandidate,
    TResult? Function(_RejectCandidate value)? rejectCandidate,
    TResult? Function(_GetAssignedCandidate value)? getAssignedCandidate,
    TResult? Function(_GetCandidateSkill value)? getCandidateSkill,
    TResult? Function(_GetCandidateProfile value)? getCandidateProfile,
  }) {
    return rejectCandidate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcceptCandidate value)? acceptCandidate,
    TResult Function(_RejectCandidate value)? rejectCandidate,
    TResult Function(_GetAssignedCandidate value)? getAssignedCandidate,
    TResult Function(_GetCandidateSkill value)? getCandidateSkill,
    TResult Function(_GetCandidateProfile value)? getCandidateProfile,
    required TResult orElse(),
  }) {
    if (rejectCandidate != null) {
      return rejectCandidate(this);
    }
    return orElse();
  }
}

abstract class _RejectCandidate implements CandidatesEvent {
  const factory _RejectCandidate(final AcceptCandidateEntity param) =
      _$RejectCandidateImpl;

  AcceptCandidateEntity get param;
  @JsonKey(ignore: true)
  _$$RejectCandidateImplCopyWith<_$RejectCandidateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAssignedCandidateImplCopyWith<$Res> {
  factory _$$GetAssignedCandidateImplCopyWith(_$GetAssignedCandidateImpl value,
          $Res Function(_$GetAssignedCandidateImpl) then) =
      __$$GetAssignedCandidateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String jobId});
}

/// @nodoc
class __$$GetAssignedCandidateImplCopyWithImpl<$Res>
    extends _$CandidatesEventCopyWithImpl<$Res, _$GetAssignedCandidateImpl>
    implements _$$GetAssignedCandidateImplCopyWith<$Res> {
  __$$GetAssignedCandidateImplCopyWithImpl(_$GetAssignedCandidateImpl _value,
      $Res Function(_$GetAssignedCandidateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobId = null,
  }) {
    return _then(_$GetAssignedCandidateImpl(
      null == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAssignedCandidateImpl implements _GetAssignedCandidate {
  const _$GetAssignedCandidateImpl(this.jobId);

  @override
  final String jobId;

  @override
  String toString() {
    return 'CandidatesEvent.getAssignedCandidate(jobId: $jobId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAssignedCandidateImpl &&
            (identical(other.jobId, jobId) || other.jobId == jobId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, jobId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAssignedCandidateImplCopyWith<_$GetAssignedCandidateImpl>
      get copyWith =>
          __$$GetAssignedCandidateImplCopyWithImpl<_$GetAssignedCandidateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AcceptCandidateEntity param) acceptCandidate,
    required TResult Function(AcceptCandidateEntity param) rejectCandidate,
    required TResult Function(String jobId) getAssignedCandidate,
    required TResult Function() getCandidateSkill,
    required TResult Function(String jobId) getCandidateProfile,
  }) {
    return getAssignedCandidate(jobId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AcceptCandidateEntity param)? acceptCandidate,
    TResult? Function(AcceptCandidateEntity param)? rejectCandidate,
    TResult? Function(String jobId)? getAssignedCandidate,
    TResult? Function()? getCandidateSkill,
    TResult? Function(String jobId)? getCandidateProfile,
  }) {
    return getAssignedCandidate?.call(jobId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AcceptCandidateEntity param)? acceptCandidate,
    TResult Function(AcceptCandidateEntity param)? rejectCandidate,
    TResult Function(String jobId)? getAssignedCandidate,
    TResult Function()? getCandidateSkill,
    TResult Function(String jobId)? getCandidateProfile,
    required TResult orElse(),
  }) {
    if (getAssignedCandidate != null) {
      return getAssignedCandidate(jobId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AcceptCandidate value) acceptCandidate,
    required TResult Function(_RejectCandidate value) rejectCandidate,
    required TResult Function(_GetAssignedCandidate value) getAssignedCandidate,
    required TResult Function(_GetCandidateSkill value) getCandidateSkill,
    required TResult Function(_GetCandidateProfile value) getCandidateProfile,
  }) {
    return getAssignedCandidate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcceptCandidate value)? acceptCandidate,
    TResult? Function(_RejectCandidate value)? rejectCandidate,
    TResult? Function(_GetAssignedCandidate value)? getAssignedCandidate,
    TResult? Function(_GetCandidateSkill value)? getCandidateSkill,
    TResult? Function(_GetCandidateProfile value)? getCandidateProfile,
  }) {
    return getAssignedCandidate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcceptCandidate value)? acceptCandidate,
    TResult Function(_RejectCandidate value)? rejectCandidate,
    TResult Function(_GetAssignedCandidate value)? getAssignedCandidate,
    TResult Function(_GetCandidateSkill value)? getCandidateSkill,
    TResult Function(_GetCandidateProfile value)? getCandidateProfile,
    required TResult orElse(),
  }) {
    if (getAssignedCandidate != null) {
      return getAssignedCandidate(this);
    }
    return orElse();
  }
}

abstract class _GetAssignedCandidate implements CandidatesEvent {
  const factory _GetAssignedCandidate(final String jobId) =
      _$GetAssignedCandidateImpl;

  String get jobId;
  @JsonKey(ignore: true)
  _$$GetAssignedCandidateImplCopyWith<_$GetAssignedCandidateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCandidateSkillImplCopyWith<$Res> {
  factory _$$GetCandidateSkillImplCopyWith(_$GetCandidateSkillImpl value,
          $Res Function(_$GetCandidateSkillImpl) then) =
      __$$GetCandidateSkillImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCandidateSkillImplCopyWithImpl<$Res>
    extends _$CandidatesEventCopyWithImpl<$Res, _$GetCandidateSkillImpl>
    implements _$$GetCandidateSkillImplCopyWith<$Res> {
  __$$GetCandidateSkillImplCopyWithImpl(_$GetCandidateSkillImpl _value,
      $Res Function(_$GetCandidateSkillImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCandidateSkillImpl implements _GetCandidateSkill {
  const _$GetCandidateSkillImpl();

  @override
  String toString() {
    return 'CandidatesEvent.getCandidateSkill()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCandidateSkillImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AcceptCandidateEntity param) acceptCandidate,
    required TResult Function(AcceptCandidateEntity param) rejectCandidate,
    required TResult Function(String jobId) getAssignedCandidate,
    required TResult Function() getCandidateSkill,
    required TResult Function(String jobId) getCandidateProfile,
  }) {
    return getCandidateSkill();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AcceptCandidateEntity param)? acceptCandidate,
    TResult? Function(AcceptCandidateEntity param)? rejectCandidate,
    TResult? Function(String jobId)? getAssignedCandidate,
    TResult? Function()? getCandidateSkill,
    TResult? Function(String jobId)? getCandidateProfile,
  }) {
    return getCandidateSkill?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AcceptCandidateEntity param)? acceptCandidate,
    TResult Function(AcceptCandidateEntity param)? rejectCandidate,
    TResult Function(String jobId)? getAssignedCandidate,
    TResult Function()? getCandidateSkill,
    TResult Function(String jobId)? getCandidateProfile,
    required TResult orElse(),
  }) {
    if (getCandidateSkill != null) {
      return getCandidateSkill();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AcceptCandidate value) acceptCandidate,
    required TResult Function(_RejectCandidate value) rejectCandidate,
    required TResult Function(_GetAssignedCandidate value) getAssignedCandidate,
    required TResult Function(_GetCandidateSkill value) getCandidateSkill,
    required TResult Function(_GetCandidateProfile value) getCandidateProfile,
  }) {
    return getCandidateSkill(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcceptCandidate value)? acceptCandidate,
    TResult? Function(_RejectCandidate value)? rejectCandidate,
    TResult? Function(_GetAssignedCandidate value)? getAssignedCandidate,
    TResult? Function(_GetCandidateSkill value)? getCandidateSkill,
    TResult? Function(_GetCandidateProfile value)? getCandidateProfile,
  }) {
    return getCandidateSkill?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcceptCandidate value)? acceptCandidate,
    TResult Function(_RejectCandidate value)? rejectCandidate,
    TResult Function(_GetAssignedCandidate value)? getAssignedCandidate,
    TResult Function(_GetCandidateSkill value)? getCandidateSkill,
    TResult Function(_GetCandidateProfile value)? getCandidateProfile,
    required TResult orElse(),
  }) {
    if (getCandidateSkill != null) {
      return getCandidateSkill(this);
    }
    return orElse();
  }
}

abstract class _GetCandidateSkill implements CandidatesEvent {
  const factory _GetCandidateSkill() = _$GetCandidateSkillImpl;
}

/// @nodoc
abstract class _$$GetCandidateProfileImplCopyWith<$Res> {
  factory _$$GetCandidateProfileImplCopyWith(_$GetCandidateProfileImpl value,
          $Res Function(_$GetCandidateProfileImpl) then) =
      __$$GetCandidateProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String jobId});
}

/// @nodoc
class __$$GetCandidateProfileImplCopyWithImpl<$Res>
    extends _$CandidatesEventCopyWithImpl<$Res, _$GetCandidateProfileImpl>
    implements _$$GetCandidateProfileImplCopyWith<$Res> {
  __$$GetCandidateProfileImplCopyWithImpl(_$GetCandidateProfileImpl _value,
      $Res Function(_$GetCandidateProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobId = null,
  }) {
    return _then(_$GetCandidateProfileImpl(
      null == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCandidateProfileImpl implements _GetCandidateProfile {
  const _$GetCandidateProfileImpl(this.jobId);

  @override
  final String jobId;

  @override
  String toString() {
    return 'CandidatesEvent.getCandidateProfile(jobId: $jobId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCandidateProfileImpl &&
            (identical(other.jobId, jobId) || other.jobId == jobId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, jobId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCandidateProfileImplCopyWith<_$GetCandidateProfileImpl> get copyWith =>
      __$$GetCandidateProfileImplCopyWithImpl<_$GetCandidateProfileImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AcceptCandidateEntity param) acceptCandidate,
    required TResult Function(AcceptCandidateEntity param) rejectCandidate,
    required TResult Function(String jobId) getAssignedCandidate,
    required TResult Function() getCandidateSkill,
    required TResult Function(String jobId) getCandidateProfile,
  }) {
    return getCandidateProfile(jobId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AcceptCandidateEntity param)? acceptCandidate,
    TResult? Function(AcceptCandidateEntity param)? rejectCandidate,
    TResult? Function(String jobId)? getAssignedCandidate,
    TResult? Function()? getCandidateSkill,
    TResult? Function(String jobId)? getCandidateProfile,
  }) {
    return getCandidateProfile?.call(jobId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AcceptCandidateEntity param)? acceptCandidate,
    TResult Function(AcceptCandidateEntity param)? rejectCandidate,
    TResult Function(String jobId)? getAssignedCandidate,
    TResult Function()? getCandidateSkill,
    TResult Function(String jobId)? getCandidateProfile,
    required TResult orElse(),
  }) {
    if (getCandidateProfile != null) {
      return getCandidateProfile(jobId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AcceptCandidate value) acceptCandidate,
    required TResult Function(_RejectCandidate value) rejectCandidate,
    required TResult Function(_GetAssignedCandidate value) getAssignedCandidate,
    required TResult Function(_GetCandidateSkill value) getCandidateSkill,
    required TResult Function(_GetCandidateProfile value) getCandidateProfile,
  }) {
    return getCandidateProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcceptCandidate value)? acceptCandidate,
    TResult? Function(_RejectCandidate value)? rejectCandidate,
    TResult? Function(_GetAssignedCandidate value)? getAssignedCandidate,
    TResult? Function(_GetCandidateSkill value)? getCandidateSkill,
    TResult? Function(_GetCandidateProfile value)? getCandidateProfile,
  }) {
    return getCandidateProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcceptCandidate value)? acceptCandidate,
    TResult Function(_RejectCandidate value)? rejectCandidate,
    TResult Function(_GetAssignedCandidate value)? getAssignedCandidate,
    TResult Function(_GetCandidateSkill value)? getCandidateSkill,
    TResult Function(_GetCandidateProfile value)? getCandidateProfile,
    required TResult orElse(),
  }) {
    if (getCandidateProfile != null) {
      return getCandidateProfile(this);
    }
    return orElse();
  }
}

abstract class _GetCandidateProfile implements CandidatesEvent {
  const factory _GetCandidateProfile(final String jobId) =
      _$GetCandidateProfileImpl;

  String get jobId;
  @JsonKey(ignore: true)
  _$$GetCandidateProfileImplCopyWith<_$GetCandidateProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CandidatesState {
  AcceptCandidateEntity? get acceptCandidateEntity =>
      throw _privateConstructorUsedError;
  AcceptCandidateState get acceptCandidateState =>
      throw _privateConstructorUsedError;
  RejectCandidateState get rejectCandidateState =>
      throw _privateConstructorUsedError;
  GetAssignedCandidateState get getAssignedCandidateState =>
      throw _privateConstructorUsedError;
  GetCandidateProfileState get getCandidateProfileState =>
      throw _privateConstructorUsedError;
  GetCandidateSkillState get getCandidateSkillState =>
      throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get jobId => throw _privateConstructorUsedError;
  List<GetAssignedApplicantsEntity> get getAssignedCandidateList =>
      throw _privateConstructorUsedError;
  List<CandidateSkillEntity> get candidateSkillList =>
      throw _privateConstructorUsedError;
  CandidateProfileEntity? get candidateProfileEntity =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AcceptCandidateEntity? acceptCandidateEntity,
            AcceptCandidateState acceptCandidateState,
            RejectCandidateState rejectCandidateState,
            GetAssignedCandidateState getAssignedCandidateState,
            GetCandidateProfileState getCandidateProfileState,
            GetCandidateSkillState getCandidateSkillState,
            String? errorMessage,
            String? jobId,
            List<GetAssignedApplicantsEntity> getAssignedCandidateList,
            List<CandidateSkillEntity> candidateSkillList,
            CandidateProfileEntity? candidateProfileEntity)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            AcceptCandidateEntity? acceptCandidateEntity,
            AcceptCandidateState acceptCandidateState,
            RejectCandidateState rejectCandidateState,
            GetAssignedCandidateState getAssignedCandidateState,
            GetCandidateProfileState getCandidateProfileState,
            GetCandidateSkillState getCandidateSkillState,
            String? errorMessage,
            String? jobId,
            List<GetAssignedApplicantsEntity> getAssignedCandidateList,
            List<CandidateSkillEntity> candidateSkillList,
            CandidateProfileEntity? candidateProfileEntity)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AcceptCandidateEntity? acceptCandidateEntity,
            AcceptCandidateState acceptCandidateState,
            RejectCandidateState rejectCandidateState,
            GetAssignedCandidateState getAssignedCandidateState,
            GetCandidateProfileState getCandidateProfileState,
            GetCandidateSkillState getCandidateSkillState,
            String? errorMessage,
            String? jobId,
            List<GetAssignedApplicantsEntity> getAssignedCandidateList,
            List<CandidateSkillEntity> candidateSkillList,
            CandidateProfileEntity? candidateProfileEntity)?
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
  $CandidatesStateCopyWith<CandidatesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CandidatesStateCopyWith<$Res> {
  factory $CandidatesStateCopyWith(
          CandidatesState value, $Res Function(CandidatesState) then) =
      _$CandidatesStateCopyWithImpl<$Res, CandidatesState>;
  @useResult
  $Res call(
      {AcceptCandidateEntity? acceptCandidateEntity,
      AcceptCandidateState acceptCandidateState,
      RejectCandidateState rejectCandidateState,
      GetAssignedCandidateState getAssignedCandidateState,
      GetCandidateProfileState getCandidateProfileState,
      GetCandidateSkillState getCandidateSkillState,
      String? errorMessage,
      String? jobId,
      List<GetAssignedApplicantsEntity> getAssignedCandidateList,
      List<CandidateSkillEntity> candidateSkillList,
      CandidateProfileEntity? candidateProfileEntity});
}

/// @nodoc
class _$CandidatesStateCopyWithImpl<$Res, $Val extends CandidatesState>
    implements $CandidatesStateCopyWith<$Res> {
  _$CandidatesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acceptCandidateEntity = freezed,
    Object? acceptCandidateState = null,
    Object? rejectCandidateState = null,
    Object? getAssignedCandidateState = null,
    Object? getCandidateProfileState = null,
    Object? getCandidateSkillState = null,
    Object? errorMessage = freezed,
    Object? jobId = freezed,
    Object? getAssignedCandidateList = null,
    Object? candidateSkillList = null,
    Object? candidateProfileEntity = freezed,
  }) {
    return _then(_value.copyWith(
      acceptCandidateEntity: freezed == acceptCandidateEntity
          ? _value.acceptCandidateEntity
          : acceptCandidateEntity // ignore: cast_nullable_to_non_nullable
              as AcceptCandidateEntity?,
      acceptCandidateState: null == acceptCandidateState
          ? _value.acceptCandidateState
          : acceptCandidateState // ignore: cast_nullable_to_non_nullable
              as AcceptCandidateState,
      rejectCandidateState: null == rejectCandidateState
          ? _value.rejectCandidateState
          : rejectCandidateState // ignore: cast_nullable_to_non_nullable
              as RejectCandidateState,
      getAssignedCandidateState: null == getAssignedCandidateState
          ? _value.getAssignedCandidateState
          : getAssignedCandidateState // ignore: cast_nullable_to_non_nullable
              as GetAssignedCandidateState,
      getCandidateProfileState: null == getCandidateProfileState
          ? _value.getCandidateProfileState
          : getCandidateProfileState // ignore: cast_nullable_to_non_nullable
              as GetCandidateProfileState,
      getCandidateSkillState: null == getCandidateSkillState
          ? _value.getCandidateSkillState
          : getCandidateSkillState // ignore: cast_nullable_to_non_nullable
              as GetCandidateSkillState,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String?,
      getAssignedCandidateList: null == getAssignedCandidateList
          ? _value.getAssignedCandidateList
          : getAssignedCandidateList // ignore: cast_nullable_to_non_nullable
              as List<GetAssignedApplicantsEntity>,
      candidateSkillList: null == candidateSkillList
          ? _value.candidateSkillList
          : candidateSkillList // ignore: cast_nullable_to_non_nullable
              as List<CandidateSkillEntity>,
      candidateProfileEntity: freezed == candidateProfileEntity
          ? _value.candidateProfileEntity
          : candidateProfileEntity // ignore: cast_nullable_to_non_nullable
              as CandidateProfileEntity?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CandidatesStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AcceptCandidateEntity? acceptCandidateEntity,
      AcceptCandidateState acceptCandidateState,
      RejectCandidateState rejectCandidateState,
      GetAssignedCandidateState getAssignedCandidateState,
      GetCandidateProfileState getCandidateProfileState,
      GetCandidateSkillState getCandidateSkillState,
      String? errorMessage,
      String? jobId,
      List<GetAssignedApplicantsEntity> getAssignedCandidateList,
      List<CandidateSkillEntity> candidateSkillList,
      CandidateProfileEntity? candidateProfileEntity});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CandidatesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acceptCandidateEntity = freezed,
    Object? acceptCandidateState = null,
    Object? rejectCandidateState = null,
    Object? getAssignedCandidateState = null,
    Object? getCandidateProfileState = null,
    Object? getCandidateSkillState = null,
    Object? errorMessage = freezed,
    Object? jobId = freezed,
    Object? getAssignedCandidateList = null,
    Object? candidateSkillList = null,
    Object? candidateProfileEntity = freezed,
  }) {
    return _then(_$InitialImpl(
      acceptCandidateEntity: freezed == acceptCandidateEntity
          ? _value.acceptCandidateEntity
          : acceptCandidateEntity // ignore: cast_nullable_to_non_nullable
              as AcceptCandidateEntity?,
      acceptCandidateState: null == acceptCandidateState
          ? _value.acceptCandidateState
          : acceptCandidateState // ignore: cast_nullable_to_non_nullable
              as AcceptCandidateState,
      rejectCandidateState: null == rejectCandidateState
          ? _value.rejectCandidateState
          : rejectCandidateState // ignore: cast_nullable_to_non_nullable
              as RejectCandidateState,
      getAssignedCandidateState: null == getAssignedCandidateState
          ? _value.getAssignedCandidateState
          : getAssignedCandidateState // ignore: cast_nullable_to_non_nullable
              as GetAssignedCandidateState,
      getCandidateProfileState: null == getCandidateProfileState
          ? _value.getCandidateProfileState
          : getCandidateProfileState // ignore: cast_nullable_to_non_nullable
              as GetCandidateProfileState,
      getCandidateSkillState: null == getCandidateSkillState
          ? _value.getCandidateSkillState
          : getCandidateSkillState // ignore: cast_nullable_to_non_nullable
              as GetCandidateSkillState,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String?,
      getAssignedCandidateList: null == getAssignedCandidateList
          ? _value._getAssignedCandidateList
          : getAssignedCandidateList // ignore: cast_nullable_to_non_nullable
              as List<GetAssignedApplicantsEntity>,
      candidateSkillList: null == candidateSkillList
          ? _value._candidateSkillList
          : candidateSkillList // ignore: cast_nullable_to_non_nullable
              as List<CandidateSkillEntity>,
      candidateProfileEntity: freezed == candidateProfileEntity
          ? _value.candidateProfileEntity
          : candidateProfileEntity // ignore: cast_nullable_to_non_nullable
              as CandidateProfileEntity?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.acceptCandidateEntity,
      this.acceptCandidateState = AcceptCandidateState.idle,
      this.rejectCandidateState = RejectCandidateState.idle,
      this.getAssignedCandidateState = GetAssignedCandidateState.idle,
      this.getCandidateProfileState = GetCandidateProfileState.idle,
      this.getCandidateSkillState = GetCandidateSkillState.idle,
      this.errorMessage,
      this.jobId,
      final List<GetAssignedApplicantsEntity> getAssignedCandidateList =
          const [],
      final List<CandidateSkillEntity> candidateSkillList = const [],
      this.candidateProfileEntity})
      : _getAssignedCandidateList = getAssignedCandidateList,
        _candidateSkillList = candidateSkillList;

  @override
  final AcceptCandidateEntity? acceptCandidateEntity;
  @override
  @JsonKey()
  final AcceptCandidateState acceptCandidateState;
  @override
  @JsonKey()
  final RejectCandidateState rejectCandidateState;
  @override
  @JsonKey()
  final GetAssignedCandidateState getAssignedCandidateState;
  @override
  @JsonKey()
  final GetCandidateProfileState getCandidateProfileState;
  @override
  @JsonKey()
  final GetCandidateSkillState getCandidateSkillState;
  @override
  final String? errorMessage;
  @override
  final String? jobId;
  final List<GetAssignedApplicantsEntity> _getAssignedCandidateList;
  @override
  @JsonKey()
  List<GetAssignedApplicantsEntity> get getAssignedCandidateList {
    if (_getAssignedCandidateList is EqualUnmodifiableListView)
      return _getAssignedCandidateList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_getAssignedCandidateList);
  }

  final List<CandidateSkillEntity> _candidateSkillList;
  @override
  @JsonKey()
  List<CandidateSkillEntity> get candidateSkillList {
    if (_candidateSkillList is EqualUnmodifiableListView)
      return _candidateSkillList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_candidateSkillList);
  }

  @override
  final CandidateProfileEntity? candidateProfileEntity;

  @override
  String toString() {
    return 'CandidatesState.initial(acceptCandidateEntity: $acceptCandidateEntity, acceptCandidateState: $acceptCandidateState, rejectCandidateState: $rejectCandidateState, getAssignedCandidateState: $getAssignedCandidateState, getCandidateProfileState: $getCandidateProfileState, getCandidateSkillState: $getCandidateSkillState, errorMessage: $errorMessage, jobId: $jobId, getAssignedCandidateList: $getAssignedCandidateList, candidateSkillList: $candidateSkillList, candidateProfileEntity: $candidateProfileEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.acceptCandidateEntity, acceptCandidateEntity) ||
                other.acceptCandidateEntity == acceptCandidateEntity) &&
            (identical(other.acceptCandidateState, acceptCandidateState) ||
                other.acceptCandidateState == acceptCandidateState) &&
            (identical(other.rejectCandidateState, rejectCandidateState) ||
                other.rejectCandidateState == rejectCandidateState) &&
            (identical(other.getAssignedCandidateState,
                    getAssignedCandidateState) ||
                other.getAssignedCandidateState == getAssignedCandidateState) &&
            (identical(
                    other.getCandidateProfileState, getCandidateProfileState) ||
                other.getCandidateProfileState == getCandidateProfileState) &&
            (identical(other.getCandidateSkillState, getCandidateSkillState) ||
                other.getCandidateSkillState == getCandidateSkillState) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.jobId, jobId) || other.jobId == jobId) &&
            const DeepCollectionEquality().equals(
                other._getAssignedCandidateList, _getAssignedCandidateList) &&
            const DeepCollectionEquality()
                .equals(other._candidateSkillList, _candidateSkillList) &&
            (identical(other.candidateProfileEntity, candidateProfileEntity) ||
                other.candidateProfileEntity == candidateProfileEntity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      acceptCandidateEntity,
      acceptCandidateState,
      rejectCandidateState,
      getAssignedCandidateState,
      getCandidateProfileState,
      getCandidateSkillState,
      errorMessage,
      jobId,
      const DeepCollectionEquality().hash(_getAssignedCandidateList),
      const DeepCollectionEquality().hash(_candidateSkillList),
      candidateProfileEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AcceptCandidateEntity? acceptCandidateEntity,
            AcceptCandidateState acceptCandidateState,
            RejectCandidateState rejectCandidateState,
            GetAssignedCandidateState getAssignedCandidateState,
            GetCandidateProfileState getCandidateProfileState,
            GetCandidateSkillState getCandidateSkillState,
            String? errorMessage,
            String? jobId,
            List<GetAssignedApplicantsEntity> getAssignedCandidateList,
            List<CandidateSkillEntity> candidateSkillList,
            CandidateProfileEntity? candidateProfileEntity)
        initial,
  }) {
    return initial(
        acceptCandidateEntity,
        acceptCandidateState,
        rejectCandidateState,
        getAssignedCandidateState,
        getCandidateProfileState,
        getCandidateSkillState,
        errorMessage,
        jobId,
        getAssignedCandidateList,
        candidateSkillList,
        candidateProfileEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            AcceptCandidateEntity? acceptCandidateEntity,
            AcceptCandidateState acceptCandidateState,
            RejectCandidateState rejectCandidateState,
            GetAssignedCandidateState getAssignedCandidateState,
            GetCandidateProfileState getCandidateProfileState,
            GetCandidateSkillState getCandidateSkillState,
            String? errorMessage,
            String? jobId,
            List<GetAssignedApplicantsEntity> getAssignedCandidateList,
            List<CandidateSkillEntity> candidateSkillList,
            CandidateProfileEntity? candidateProfileEntity)?
        initial,
  }) {
    return initial?.call(
        acceptCandidateEntity,
        acceptCandidateState,
        rejectCandidateState,
        getAssignedCandidateState,
        getCandidateProfileState,
        getCandidateSkillState,
        errorMessage,
        jobId,
        getAssignedCandidateList,
        candidateSkillList,
        candidateProfileEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AcceptCandidateEntity? acceptCandidateEntity,
            AcceptCandidateState acceptCandidateState,
            RejectCandidateState rejectCandidateState,
            GetAssignedCandidateState getAssignedCandidateState,
            GetCandidateProfileState getCandidateProfileState,
            GetCandidateSkillState getCandidateSkillState,
            String? errorMessage,
            String? jobId,
            List<GetAssignedApplicantsEntity> getAssignedCandidateList,
            List<CandidateSkillEntity> candidateSkillList,
            CandidateProfileEntity? candidateProfileEntity)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          acceptCandidateEntity,
          acceptCandidateState,
          rejectCandidateState,
          getAssignedCandidateState,
          getCandidateProfileState,
          getCandidateSkillState,
          errorMessage,
          jobId,
          getAssignedCandidateList,
          candidateSkillList,
          candidateProfileEntity);
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

abstract class _Initial implements CandidatesState {
  const factory _Initial(
      {final AcceptCandidateEntity? acceptCandidateEntity,
      final AcceptCandidateState acceptCandidateState,
      final RejectCandidateState rejectCandidateState,
      final GetAssignedCandidateState getAssignedCandidateState,
      final GetCandidateProfileState getCandidateProfileState,
      final GetCandidateSkillState getCandidateSkillState,
      final String? errorMessage,
      final String? jobId,
      final List<GetAssignedApplicantsEntity> getAssignedCandidateList,
      final List<CandidateSkillEntity> candidateSkillList,
      final CandidateProfileEntity? candidateProfileEntity}) = _$InitialImpl;

  @override
  AcceptCandidateEntity? get acceptCandidateEntity;
  @override
  AcceptCandidateState get acceptCandidateState;
  @override
  RejectCandidateState get rejectCandidateState;
  @override
  GetAssignedCandidateState get getAssignedCandidateState;
  @override
  GetCandidateProfileState get getCandidateProfileState;
  @override
  GetCandidateSkillState get getCandidateSkillState;
  @override
  String? get errorMessage;
  @override
  String? get jobId;
  @override
  List<GetAssignedApplicantsEntity> get getAssignedCandidateList;
  @override
  List<CandidateSkillEntity> get candidateSkillList;
  @override
  CandidateProfileEntity? get candidateProfileEntity;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
