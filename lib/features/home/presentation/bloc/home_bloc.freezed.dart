// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getFeaturedCandidates,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getFeaturedCandidates,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getFeaturedCandidates,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetFeaturedCandidate value)
        getFeaturedCandidates,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetFeaturedCandidate value)? getFeaturedCandidates,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetFeaturedCandidate value)? getFeaturedCandidates,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

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
    extends _$HomeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HomeEvent.started()';
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
    required TResult Function() getFeaturedCandidates,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getFeaturedCandidates,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getFeaturedCandidates,
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
    required TResult Function(_GetFeaturedCandidate value)
        getFeaturedCandidates,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetFeaturedCandidate value)? getFeaturedCandidates,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetFeaturedCandidate value)? getFeaturedCandidates,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetFeaturedCandidateImplCopyWith<$Res> {
  factory _$$GetFeaturedCandidateImplCopyWith(_$GetFeaturedCandidateImpl value,
          $Res Function(_$GetFeaturedCandidateImpl) then) =
      __$$GetFeaturedCandidateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFeaturedCandidateImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetFeaturedCandidateImpl>
    implements _$$GetFeaturedCandidateImplCopyWith<$Res> {
  __$$GetFeaturedCandidateImplCopyWithImpl(_$GetFeaturedCandidateImpl _value,
      $Res Function(_$GetFeaturedCandidateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetFeaturedCandidateImpl implements _GetFeaturedCandidate {
  const _$GetFeaturedCandidateImpl();

  @override
  String toString() {
    return 'HomeEvent.getFeaturedCandidates()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFeaturedCandidateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getFeaturedCandidates,
  }) {
    return getFeaturedCandidates();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getFeaturedCandidates,
  }) {
    return getFeaturedCandidates?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getFeaturedCandidates,
    required TResult orElse(),
  }) {
    if (getFeaturedCandidates != null) {
      return getFeaturedCandidates();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetFeaturedCandidate value)
        getFeaturedCandidates,
  }) {
    return getFeaturedCandidates(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetFeaturedCandidate value)? getFeaturedCandidates,
  }) {
    return getFeaturedCandidates?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetFeaturedCandidate value)? getFeaturedCandidates,
    required TResult orElse(),
  }) {
    if (getFeaturedCandidates != null) {
      return getFeaturedCandidates(this);
    }
    return orElse();
  }
}

abstract class _GetFeaturedCandidate implements HomeEvent {
  const factory _GetFeaturedCandidate() = _$GetFeaturedCandidateImpl;
}

/// @nodoc
mixin _$HomeState {
  String? get errorMessage => throw _privateConstructorUsedError;
  ViewState get viewState => throw _privateConstructorUsedError;
  List<FeaturedCandidatesEntity> get featureCandidateList =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage, ViewState viewState,
            List<FeaturedCandidatesEntity> featureCandidateList)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? errorMessage, ViewState viewState,
            List<FeaturedCandidatesEntity> featureCandidateList)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage, ViewState viewState,
            List<FeaturedCandidatesEntity> featureCandidateList)?
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
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {String? errorMessage,
      ViewState viewState,
      List<FeaturedCandidatesEntity> featureCandidateList});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? viewState = null,
    Object? featureCandidateList = null,
  }) {
    return _then(_value.copyWith(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      viewState: null == viewState
          ? _value.viewState
          : viewState // ignore: cast_nullable_to_non_nullable
              as ViewState,
      featureCandidateList: null == featureCandidateList
          ? _value.featureCandidateList
          : featureCandidateList // ignore: cast_nullable_to_non_nullable
              as List<FeaturedCandidatesEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? errorMessage,
      ViewState viewState,
      List<FeaturedCandidatesEntity> featureCandidateList});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? viewState = null,
    Object? featureCandidateList = null,
  }) {
    return _then(_$InitialImpl(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      viewState: null == viewState
          ? _value.viewState
          : viewState // ignore: cast_nullable_to_non_nullable
              as ViewState,
      featureCandidateList: null == featureCandidateList
          ? _value._featureCandidateList
          : featureCandidateList // ignore: cast_nullable_to_non_nullable
              as List<FeaturedCandidatesEntity>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.errorMessage,
      this.viewState = ViewState.idle,
      final List<FeaturedCandidatesEntity> featureCandidateList = const []})
      : _featureCandidateList = featureCandidateList;

  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final ViewState viewState;
  final List<FeaturedCandidatesEntity> _featureCandidateList;
  @override
  @JsonKey()
  List<FeaturedCandidatesEntity> get featureCandidateList {
    if (_featureCandidateList is EqualUnmodifiableListView)
      return _featureCandidateList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_featureCandidateList);
  }

  @override
  String toString() {
    return 'HomeState.initial(errorMessage: $errorMessage, viewState: $viewState, featureCandidateList: $featureCandidateList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.viewState, viewState) ||
                other.viewState == viewState) &&
            const DeepCollectionEquality()
                .equals(other._featureCandidateList, _featureCandidateList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage, viewState,
      const DeepCollectionEquality().hash(_featureCandidateList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage, ViewState viewState,
            List<FeaturedCandidatesEntity> featureCandidateList)
        initial,
  }) {
    return initial(errorMessage, viewState, featureCandidateList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? errorMessage, ViewState viewState,
            List<FeaturedCandidatesEntity> featureCandidateList)?
        initial,
  }) {
    return initial?.call(errorMessage, viewState, featureCandidateList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage, ViewState viewState,
            List<FeaturedCandidatesEntity> featureCandidateList)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(errorMessage, viewState, featureCandidateList);
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

abstract class _Initial implements HomeState {
  const factory _Initial(
          {final String? errorMessage,
          final ViewState viewState,
          final List<FeaturedCandidatesEntity> featureCandidateList}) =
      _$InitialImpl;

  @override
  String? get errorMessage;
  @override
  ViewState get viewState;
  @override
  List<FeaturedCandidatesEntity> get featureCandidateList;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
