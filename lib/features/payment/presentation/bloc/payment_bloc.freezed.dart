// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TransferPaymentDetailsEntity param)
        transferPayment,
    required TResult Function(CardPaymentDetailsEntity param) cardPayment,
    required TResult Function(PostInvoiceEntity param) postInvoice,
    required TResult Function() getInvoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult? Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult? Function(PostInvoiceEntity param)? postInvoice,
    TResult? Function()? getInvoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult Function(PostInvoiceEntity param)? postInvoice,
    TResult Function()? getInvoice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TransferPayment value) transferPayment,
    required TResult Function(_CardPayment value) cardPayment,
    required TResult Function(_PostInvoice value) postInvoice,
    required TResult Function(_GetInvoice value) getInvoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TransferPayment value)? transferPayment,
    TResult? Function(_CardPayment value)? cardPayment,
    TResult? Function(_PostInvoice value)? postInvoice,
    TResult? Function(_GetInvoice value)? getInvoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TransferPayment value)? transferPayment,
    TResult Function(_CardPayment value)? cardPayment,
    TResult Function(_PostInvoice value)? postInvoice,
    TResult Function(_GetInvoice value)? getInvoice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentEventCopyWith<$Res> {
  factory $PaymentEventCopyWith(
          PaymentEvent value, $Res Function(PaymentEvent) then) =
      _$PaymentEventCopyWithImpl<$Res, PaymentEvent>;
}

/// @nodoc
class _$PaymentEventCopyWithImpl<$Res, $Val extends PaymentEvent>
    implements $PaymentEventCopyWith<$Res> {
  _$PaymentEventCopyWithImpl(this._value, this._then);

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
    extends _$PaymentEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'PaymentEvent.started()';
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
    required TResult Function(TransferPaymentDetailsEntity param)
        transferPayment,
    required TResult Function(CardPaymentDetailsEntity param) cardPayment,
    required TResult Function(PostInvoiceEntity param) postInvoice,
    required TResult Function() getInvoice,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult? Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult? Function(PostInvoiceEntity param)? postInvoice,
    TResult? Function()? getInvoice,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult Function(PostInvoiceEntity param)? postInvoice,
    TResult Function()? getInvoice,
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
    required TResult Function(_TransferPayment value) transferPayment,
    required TResult Function(_CardPayment value) cardPayment,
    required TResult Function(_PostInvoice value) postInvoice,
    required TResult Function(_GetInvoice value) getInvoice,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TransferPayment value)? transferPayment,
    TResult? Function(_CardPayment value)? cardPayment,
    TResult? Function(_PostInvoice value)? postInvoice,
    TResult? Function(_GetInvoice value)? getInvoice,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TransferPayment value)? transferPayment,
    TResult Function(_CardPayment value)? cardPayment,
    TResult Function(_PostInvoice value)? postInvoice,
    TResult Function(_GetInvoice value)? getInvoice,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PaymentEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$TransferPaymentImplCopyWith<$Res> {
  factory _$$TransferPaymentImplCopyWith(_$TransferPaymentImpl value,
          $Res Function(_$TransferPaymentImpl) then) =
      __$$TransferPaymentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TransferPaymentDetailsEntity param});
}

/// @nodoc
class __$$TransferPaymentImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$TransferPaymentImpl>
    implements _$$TransferPaymentImplCopyWith<$Res> {
  __$$TransferPaymentImplCopyWithImpl(
      _$TransferPaymentImpl _value, $Res Function(_$TransferPaymentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$TransferPaymentImpl(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as TransferPaymentDetailsEntity,
    ));
  }
}

/// @nodoc

class _$TransferPaymentImpl implements _TransferPayment {
  const _$TransferPaymentImpl(this.param);

  @override
  final TransferPaymentDetailsEntity param;

  @override
  String toString() {
    return 'PaymentEvent.transferPayment(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferPaymentImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferPaymentImplCopyWith<_$TransferPaymentImpl> get copyWith =>
      __$$TransferPaymentImplCopyWithImpl<_$TransferPaymentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TransferPaymentDetailsEntity param)
        transferPayment,
    required TResult Function(CardPaymentDetailsEntity param) cardPayment,
    required TResult Function(PostInvoiceEntity param) postInvoice,
    required TResult Function() getInvoice,
  }) {
    return transferPayment(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult? Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult? Function(PostInvoiceEntity param)? postInvoice,
    TResult? Function()? getInvoice,
  }) {
    return transferPayment?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult Function(PostInvoiceEntity param)? postInvoice,
    TResult Function()? getInvoice,
    required TResult orElse(),
  }) {
    if (transferPayment != null) {
      return transferPayment(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TransferPayment value) transferPayment,
    required TResult Function(_CardPayment value) cardPayment,
    required TResult Function(_PostInvoice value) postInvoice,
    required TResult Function(_GetInvoice value) getInvoice,
  }) {
    return transferPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TransferPayment value)? transferPayment,
    TResult? Function(_CardPayment value)? cardPayment,
    TResult? Function(_PostInvoice value)? postInvoice,
    TResult? Function(_GetInvoice value)? getInvoice,
  }) {
    return transferPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TransferPayment value)? transferPayment,
    TResult Function(_CardPayment value)? cardPayment,
    TResult Function(_PostInvoice value)? postInvoice,
    TResult Function(_GetInvoice value)? getInvoice,
    required TResult orElse(),
  }) {
    if (transferPayment != null) {
      return transferPayment(this);
    }
    return orElse();
  }
}

abstract class _TransferPayment implements PaymentEvent {
  const factory _TransferPayment(final TransferPaymentDetailsEntity param) =
      _$TransferPaymentImpl;

  TransferPaymentDetailsEntity get param;
  @JsonKey(ignore: true)
  _$$TransferPaymentImplCopyWith<_$TransferPaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CardPaymentImplCopyWith<$Res> {
  factory _$$CardPaymentImplCopyWith(
          _$CardPaymentImpl value, $Res Function(_$CardPaymentImpl) then) =
      __$$CardPaymentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CardPaymentDetailsEntity param});
}

/// @nodoc
class __$$CardPaymentImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$CardPaymentImpl>
    implements _$$CardPaymentImplCopyWith<$Res> {
  __$$CardPaymentImplCopyWithImpl(
      _$CardPaymentImpl _value, $Res Function(_$CardPaymentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$CardPaymentImpl(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as CardPaymentDetailsEntity,
    ));
  }
}

/// @nodoc

class _$CardPaymentImpl implements _CardPayment {
  const _$CardPaymentImpl(this.param);

  @override
  final CardPaymentDetailsEntity param;

  @override
  String toString() {
    return 'PaymentEvent.cardPayment(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardPaymentImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardPaymentImplCopyWith<_$CardPaymentImpl> get copyWith =>
      __$$CardPaymentImplCopyWithImpl<_$CardPaymentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TransferPaymentDetailsEntity param)
        transferPayment,
    required TResult Function(CardPaymentDetailsEntity param) cardPayment,
    required TResult Function(PostInvoiceEntity param) postInvoice,
    required TResult Function() getInvoice,
  }) {
    return cardPayment(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult? Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult? Function(PostInvoiceEntity param)? postInvoice,
    TResult? Function()? getInvoice,
  }) {
    return cardPayment?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult Function(PostInvoiceEntity param)? postInvoice,
    TResult Function()? getInvoice,
    required TResult orElse(),
  }) {
    if (cardPayment != null) {
      return cardPayment(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TransferPayment value) transferPayment,
    required TResult Function(_CardPayment value) cardPayment,
    required TResult Function(_PostInvoice value) postInvoice,
    required TResult Function(_GetInvoice value) getInvoice,
  }) {
    return cardPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TransferPayment value)? transferPayment,
    TResult? Function(_CardPayment value)? cardPayment,
    TResult? Function(_PostInvoice value)? postInvoice,
    TResult? Function(_GetInvoice value)? getInvoice,
  }) {
    return cardPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TransferPayment value)? transferPayment,
    TResult Function(_CardPayment value)? cardPayment,
    TResult Function(_PostInvoice value)? postInvoice,
    TResult Function(_GetInvoice value)? getInvoice,
    required TResult orElse(),
  }) {
    if (cardPayment != null) {
      return cardPayment(this);
    }
    return orElse();
  }
}

abstract class _CardPayment implements PaymentEvent {
  const factory _CardPayment(final CardPaymentDetailsEntity param) =
      _$CardPaymentImpl;

  CardPaymentDetailsEntity get param;
  @JsonKey(ignore: true)
  _$$CardPaymentImplCopyWith<_$CardPaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostInvoiceImplCopyWith<$Res> {
  factory _$$PostInvoiceImplCopyWith(
          _$PostInvoiceImpl value, $Res Function(_$PostInvoiceImpl) then) =
      __$$PostInvoiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PostInvoiceEntity param});
}

/// @nodoc
class __$$PostInvoiceImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$PostInvoiceImpl>
    implements _$$PostInvoiceImplCopyWith<$Res> {
  __$$PostInvoiceImplCopyWithImpl(
      _$PostInvoiceImpl _value, $Res Function(_$PostInvoiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$PostInvoiceImpl(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as PostInvoiceEntity,
    ));
  }
}

/// @nodoc

class _$PostInvoiceImpl implements _PostInvoice {
  const _$PostInvoiceImpl(this.param);

  @override
  final PostInvoiceEntity param;

  @override
  String toString() {
    return 'PaymentEvent.postInvoice(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostInvoiceImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostInvoiceImplCopyWith<_$PostInvoiceImpl> get copyWith =>
      __$$PostInvoiceImplCopyWithImpl<_$PostInvoiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TransferPaymentDetailsEntity param)
        transferPayment,
    required TResult Function(CardPaymentDetailsEntity param) cardPayment,
    required TResult Function(PostInvoiceEntity param) postInvoice,
    required TResult Function() getInvoice,
  }) {
    return postInvoice(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult? Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult? Function(PostInvoiceEntity param)? postInvoice,
    TResult? Function()? getInvoice,
  }) {
    return postInvoice?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult Function(PostInvoiceEntity param)? postInvoice,
    TResult Function()? getInvoice,
    required TResult orElse(),
  }) {
    if (postInvoice != null) {
      return postInvoice(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TransferPayment value) transferPayment,
    required TResult Function(_CardPayment value) cardPayment,
    required TResult Function(_PostInvoice value) postInvoice,
    required TResult Function(_GetInvoice value) getInvoice,
  }) {
    return postInvoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TransferPayment value)? transferPayment,
    TResult? Function(_CardPayment value)? cardPayment,
    TResult? Function(_PostInvoice value)? postInvoice,
    TResult? Function(_GetInvoice value)? getInvoice,
  }) {
    return postInvoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TransferPayment value)? transferPayment,
    TResult Function(_CardPayment value)? cardPayment,
    TResult Function(_PostInvoice value)? postInvoice,
    TResult Function(_GetInvoice value)? getInvoice,
    required TResult orElse(),
  }) {
    if (postInvoice != null) {
      return postInvoice(this);
    }
    return orElse();
  }
}

abstract class _PostInvoice implements PaymentEvent {
  const factory _PostInvoice(final PostInvoiceEntity param) = _$PostInvoiceImpl;

  PostInvoiceEntity get param;
  @JsonKey(ignore: true)
  _$$PostInvoiceImplCopyWith<_$PostInvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetInvoiceImplCopyWith<$Res> {
  factory _$$GetInvoiceImplCopyWith(
          _$GetInvoiceImpl value, $Res Function(_$GetInvoiceImpl) then) =
      __$$GetInvoiceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetInvoiceImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$GetInvoiceImpl>
    implements _$$GetInvoiceImplCopyWith<$Res> {
  __$$GetInvoiceImplCopyWithImpl(
      _$GetInvoiceImpl _value, $Res Function(_$GetInvoiceImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetInvoiceImpl implements _GetInvoice {
  const _$GetInvoiceImpl();

  @override
  String toString() {
    return 'PaymentEvent.getInvoice()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetInvoiceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TransferPaymentDetailsEntity param)
        transferPayment,
    required TResult Function(CardPaymentDetailsEntity param) cardPayment,
    required TResult Function(PostInvoiceEntity param) postInvoice,
    required TResult Function() getInvoice,
  }) {
    return getInvoice();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult? Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult? Function(PostInvoiceEntity param)? postInvoice,
    TResult? Function()? getInvoice,
  }) {
    return getInvoice?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult Function(PostInvoiceEntity param)? postInvoice,
    TResult Function()? getInvoice,
    required TResult orElse(),
  }) {
    if (getInvoice != null) {
      return getInvoice();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TransferPayment value) transferPayment,
    required TResult Function(_CardPayment value) cardPayment,
    required TResult Function(_PostInvoice value) postInvoice,
    required TResult Function(_GetInvoice value) getInvoice,
  }) {
    return getInvoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TransferPayment value)? transferPayment,
    TResult? Function(_CardPayment value)? cardPayment,
    TResult? Function(_PostInvoice value)? postInvoice,
    TResult? Function(_GetInvoice value)? getInvoice,
  }) {
    return getInvoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TransferPayment value)? transferPayment,
    TResult Function(_CardPayment value)? cardPayment,
    TResult Function(_PostInvoice value)? postInvoice,
    TResult Function(_GetInvoice value)? getInvoice,
    required TResult orElse(),
  }) {
    if (getInvoice != null) {
      return getInvoice(this);
    }
    return orElse();
  }
}

abstract class _GetInvoice implements PaymentEvent {
  const factory _GetInvoice() = _$GetInvoiceImpl;
}

/// @nodoc
mixin _$PaymentState {
  GetInvoiceEntity? get getInvoice => throw _privateConstructorUsedError;
  PostInvoiceState get postInvoiceState => throw _privateConstructorUsedError;
  TransferPaymentState get transferPaymentState =>
      throw _privateConstructorUsedError;
  CardPaymentState get cardPaymentState => throw _privateConstructorUsedError;
  GetInvoiceState get getInvoiceState => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GetInvoiceEntity? getInvoice,
            PostInvoiceState postInvoiceState,
            TransferPaymentState transferPaymentState,
            CardPaymentState cardPaymentState,
            GetInvoiceState getInvoiceState)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            GetInvoiceEntity? getInvoice,
            PostInvoiceState postInvoiceState,
            TransferPaymentState transferPaymentState,
            CardPaymentState cardPaymentState,
            GetInvoiceState getInvoiceState)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GetInvoiceEntity? getInvoice,
            PostInvoiceState postInvoiceState,
            TransferPaymentState transferPaymentState,
            CardPaymentState cardPaymentState,
            GetInvoiceState getInvoiceState)?
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
  $PaymentStateCopyWith<PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
  @useResult
  $Res call(
      {GetInvoiceEntity? getInvoice,
      PostInvoiceState postInvoiceState,
      TransferPaymentState transferPaymentState,
      CardPaymentState cardPaymentState,
      GetInvoiceState getInvoiceState});
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getInvoice = freezed,
    Object? postInvoiceState = null,
    Object? transferPaymentState = null,
    Object? cardPaymentState = null,
    Object? getInvoiceState = null,
  }) {
    return _then(_value.copyWith(
      getInvoice: freezed == getInvoice
          ? _value.getInvoice
          : getInvoice // ignore: cast_nullable_to_non_nullable
              as GetInvoiceEntity?,
      postInvoiceState: null == postInvoiceState
          ? _value.postInvoiceState
          : postInvoiceState // ignore: cast_nullable_to_non_nullable
              as PostInvoiceState,
      transferPaymentState: null == transferPaymentState
          ? _value.transferPaymentState
          : transferPaymentState // ignore: cast_nullable_to_non_nullable
              as TransferPaymentState,
      cardPaymentState: null == cardPaymentState
          ? _value.cardPaymentState
          : cardPaymentState // ignore: cast_nullable_to_non_nullable
              as CardPaymentState,
      getInvoiceState: null == getInvoiceState
          ? _value.getInvoiceState
          : getInvoiceState // ignore: cast_nullable_to_non_nullable
              as GetInvoiceState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GetInvoiceEntity? getInvoice,
      PostInvoiceState postInvoiceState,
      TransferPaymentState transferPaymentState,
      CardPaymentState cardPaymentState,
      GetInvoiceState getInvoiceState});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getInvoice = freezed,
    Object? postInvoiceState = null,
    Object? transferPaymentState = null,
    Object? cardPaymentState = null,
    Object? getInvoiceState = null,
  }) {
    return _then(_$InitialImpl(
      getInvoice: freezed == getInvoice
          ? _value.getInvoice
          : getInvoice // ignore: cast_nullable_to_non_nullable
              as GetInvoiceEntity?,
      postInvoiceState: null == postInvoiceState
          ? _value.postInvoiceState
          : postInvoiceState // ignore: cast_nullable_to_non_nullable
              as PostInvoiceState,
      transferPaymentState: null == transferPaymentState
          ? _value.transferPaymentState
          : transferPaymentState // ignore: cast_nullable_to_non_nullable
              as TransferPaymentState,
      cardPaymentState: null == cardPaymentState
          ? _value.cardPaymentState
          : cardPaymentState // ignore: cast_nullable_to_non_nullable
              as CardPaymentState,
      getInvoiceState: null == getInvoiceState
          ? _value.getInvoiceState
          : getInvoiceState // ignore: cast_nullable_to_non_nullable
              as GetInvoiceState,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.getInvoice,
      this.postInvoiceState = PostInvoiceState.idle,
      this.transferPaymentState = TransferPaymentState.idle,
      this.cardPaymentState = CardPaymentState.idle,
      this.getInvoiceState = GetInvoiceState.idle});

  @override
  final GetInvoiceEntity? getInvoice;
  @override
  @JsonKey()
  final PostInvoiceState postInvoiceState;
  @override
  @JsonKey()
  final TransferPaymentState transferPaymentState;
  @override
  @JsonKey()
  final CardPaymentState cardPaymentState;
  @override
  @JsonKey()
  final GetInvoiceState getInvoiceState;

  @override
  String toString() {
    return 'PaymentState.initial(getInvoice: $getInvoice, postInvoiceState: $postInvoiceState, transferPaymentState: $transferPaymentState, cardPaymentState: $cardPaymentState, getInvoiceState: $getInvoiceState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.getInvoice, getInvoice) ||
                other.getInvoice == getInvoice) &&
            (identical(other.postInvoiceState, postInvoiceState) ||
                other.postInvoiceState == postInvoiceState) &&
            (identical(other.transferPaymentState, transferPaymentState) ||
                other.transferPaymentState == transferPaymentState) &&
            (identical(other.cardPaymentState, cardPaymentState) ||
                other.cardPaymentState == cardPaymentState) &&
            (identical(other.getInvoiceState, getInvoiceState) ||
                other.getInvoiceState == getInvoiceState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getInvoice, postInvoiceState,
      transferPaymentState, cardPaymentState, getInvoiceState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GetInvoiceEntity? getInvoice,
            PostInvoiceState postInvoiceState,
            TransferPaymentState transferPaymentState,
            CardPaymentState cardPaymentState,
            GetInvoiceState getInvoiceState)
        initial,
  }) {
    return initial(getInvoice, postInvoiceState, transferPaymentState,
        cardPaymentState, getInvoiceState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            GetInvoiceEntity? getInvoice,
            PostInvoiceState postInvoiceState,
            TransferPaymentState transferPaymentState,
            CardPaymentState cardPaymentState,
            GetInvoiceState getInvoiceState)?
        initial,
  }) {
    return initial?.call(getInvoice, postInvoiceState, transferPaymentState,
        cardPaymentState, getInvoiceState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GetInvoiceEntity? getInvoice,
            PostInvoiceState postInvoiceState,
            TransferPaymentState transferPaymentState,
            CardPaymentState cardPaymentState,
            GetInvoiceState getInvoiceState)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(getInvoice, postInvoiceState, transferPaymentState,
          cardPaymentState, getInvoiceState);
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

abstract class _Initial implements PaymentState {
  const factory _Initial(
      {final GetInvoiceEntity? getInvoice,
      final PostInvoiceState postInvoiceState,
      final TransferPaymentState transferPaymentState,
      final CardPaymentState cardPaymentState,
      final GetInvoiceState getInvoiceState}) = _$InitialImpl;

  @override
  GetInvoiceEntity? get getInvoice;
  @override
  PostInvoiceState get postInvoiceState;
  @override
  TransferPaymentState get transferPaymentState;
  @override
  CardPaymentState get cardPaymentState;
  @override
  GetInvoiceState get getInvoiceState;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
