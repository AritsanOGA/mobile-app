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
  AcceptCandidateEntity get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AcceptCandidateEntity param) acceptCandidate,
    required TResult Function(AcceptCandidateEntity param) rejectCandidate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AcceptCandidateEntity param)? acceptCandidate,
    TResult? Function(AcceptCandidateEntity param)? rejectCandidate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AcceptCandidateEntity param)? acceptCandidate,
    TResult Function(AcceptCandidateEntity param)? rejectCandidate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AcceptCandidate value) acceptCandidate,
    required TResult Function(_RejectCandidate value) rejectCandidate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcceptCandidate value)? acceptCandidate,
    TResult? Function(_RejectCandidate value)? rejectCandidate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcceptCandidate value)? acceptCandidate,
    TResult Function(_RejectCandidate value)? rejectCandidate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CandidatesEventCopyWith<CandidatesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CandidatesEventCopyWith<$Res> {
  factory $CandidatesEventCopyWith(
          CandidatesEvent value, $Res Function(CandidatesEvent) then) =
      _$CandidatesEventCopyWithImpl<$Res, CandidatesEvent>;
  @useResult
  $Res call({AcceptCandidateEntity param});
}

/// @nodoc
class _$CandidatesEventCopyWithImpl<$Res, $Val extends CandidatesEvent>
    implements $CandidatesEventCopyWith<$Res> {
  _$CandidatesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_value.copyWith(
      param: null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as AcceptCandidateEntity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AcceptCandidateImplCopyWith<$Res>
    implements $CandidatesEventCopyWith<$Res> {
  factory _$$AcceptCandidateImplCopyWith(_$AcceptCandidateImpl value,
          $Res Function(_$AcceptCandidateImpl) then) =
      __$$AcceptCandidateImplCopyWithImpl<$Res>;
  @override
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
  }) {
    return acceptCandidate(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AcceptCandidateEntity param)? acceptCandidate,
    TResult? Function(AcceptCandidateEntity param)? rejectCandidate,
  }) {
    return acceptCandidate?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AcceptCandidateEntity param)? acceptCandidate,
    TResult Function(AcceptCandidateEntity param)? rejectCandidate,
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
  }) {
    return acceptCandidate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcceptCandidate value)? acceptCandidate,
    TResult? Function(_RejectCandidate value)? rejectCandidate,
  }) {
    return acceptCandidate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcceptCandidate value)? acceptCandidate,
    TResult Function(_RejectCandidate value)? rejectCandidate,
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

  @override
  AcceptCandidateEntity get param;
  @override
  @JsonKey(ignore: true)
  _$$AcceptCandidateImplCopyWith<_$AcceptCandidateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RejectCandidateImplCopyWith<$Res>
    implements $CandidatesEventCopyWith<$Res> {
  factory _$$RejectCandidateImplCopyWith(_$RejectCandidateImpl value,
          $Res Function(_$RejectCandidateImpl) then) =
      __$$RejectCandidateImplCopyWithImpl<$Res>;
  @override
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
  }) {
    return rejectCandidate(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AcceptCandidateEntity param)? acceptCandidate,
    TResult? Function(AcceptCandidateEntity param)? rejectCandidate,
  }) {
    return rejectCandidate?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AcceptCandidateEntity param)? acceptCandidate,
    TResult Function(AcceptCandidateEntity param)? rejectCandidate,
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
  }) {
    return rejectCandidate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcceptCandidate value)? acceptCandidate,
    TResult? Function(_RejectCandidate value)? rejectCandidate,
  }) {
    return rejectCandidate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcceptCandidate value)? acceptCandidate,
    TResult Function(_RejectCandidate value)? rejectCandidate,
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

  @override
  AcceptCandidateEntity get param;
  @override
  @JsonKey(ignore: true)
  _$$RejectCandidateImplCopyWith<_$RejectCandidateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CandidatesState {
  AcceptCandidateEntity? get acceptCandidateEntity =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AcceptCandidateEntity? acceptCandidateEntity)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AcceptCandidateEntity? acceptCandidateEntity)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AcceptCandidateEntity? acceptCandidateEntity)? initial,
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
  $Res call({AcceptCandidateEntity? acceptCandidateEntity});
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
  }) {
    return _then(_value.copyWith(
      acceptCandidateEntity: freezed == acceptCandidateEntity
          ? _value.acceptCandidateEntity
          : acceptCandidateEntity // ignore: cast_nullable_to_non_nullable
              as AcceptCandidateEntity?,
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
  $Res call({AcceptCandidateEntity? acceptCandidateEntity});
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
  }) {
    return _then(_$InitialImpl(
      acceptCandidateEntity: freezed == acceptCandidateEntity
          ? _value.acceptCandidateEntity
          : acceptCandidateEntity // ignore: cast_nullable_to_non_nullable
              as AcceptCandidateEntity?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({this.acceptCandidateEntity});

  @override
  final AcceptCandidateEntity? acceptCandidateEntity;

  @override
  String toString() {
    return 'CandidatesState.initial(acceptCandidateEntity: $acceptCandidateEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.acceptCandidateEntity, acceptCandidateEntity) ||
                other.acceptCandidateEntity == acceptCandidateEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, acceptCandidateEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AcceptCandidateEntity? acceptCandidateEntity)
        initial,
  }) {
    return initial(acceptCandidateEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AcceptCandidateEntity? acceptCandidateEntity)? initial,
  }) {
    return initial?.call(acceptCandidateEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AcceptCandidateEntity? acceptCandidateEntity)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(acceptCandidateEntity);
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
  const factory _Initial({final AcceptCandidateEntity? acceptCandidateEntity}) =
      _$InitialImpl;

  @override
  AcceptCandidateEntity? get acceptCandidateEntity;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
