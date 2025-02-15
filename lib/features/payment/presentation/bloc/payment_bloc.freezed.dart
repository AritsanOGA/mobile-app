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
    required TResult Function(String identity) getInvoice,
    required TResult Function() getAllInvoice,
    required TResult Function() getAllPayment,
    required TResult Function(String transactionId) verifyPayment,
    required TResult Function(
            String value, double totalPrice, double percentage)
        updatePricePercent,
    required TResult Function(String value) updatePaymentMethod,
    required TResult Function(String value) updateTypeOfCurrencyBank,
    required TResult Function(String value) updateDollarAccount,
    required TResult Function(String value) updateNairaAccount,
    required TResult Function(BuildContext context, String value, String amount,
            Customer customer)
        initializeTransactionEvent,
    required TResult Function(String value) verifyTransactionEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult? Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult? Function(PostInvoiceEntity param)? postInvoice,
    TResult? Function(String identity)? getInvoice,
    TResult? Function()? getAllInvoice,
    TResult? Function()? getAllPayment,
    TResult? Function(String transactionId)? verifyPayment,
    TResult? Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult? Function(String value)? updatePaymentMethod,
    TResult? Function(String value)? updateTypeOfCurrencyBank,
    TResult? Function(String value)? updateDollarAccount,
    TResult? Function(String value)? updateNairaAccount,
    TResult? Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult? Function(String value)? verifyTransactionEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult Function(PostInvoiceEntity param)? postInvoice,
    TResult Function(String identity)? getInvoice,
    TResult Function()? getAllInvoice,
    TResult Function()? getAllPayment,
    TResult Function(String transactionId)? verifyPayment,
    TResult Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult Function(String value)? updatePaymentMethod,
    TResult Function(String value)? updateTypeOfCurrencyBank,
    TResult Function(String value)? updateDollarAccount,
    TResult Function(String value)? updateNairaAccount,
    TResult Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult Function(String value)? verifyTransactionEvent,
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
    required TResult Function(_GetAllInvoice value) getAllInvoice,
    required TResult Function(_GetAllPayment value) getAllPayment,
    required TResult Function(_VerifyPayment value) verifyPayment,
    required TResult Function(_UpdatePricePercent value) updatePricePercent,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateTypeOfCurrencyBank value)
        updateTypeOfCurrencyBank,
    required TResult Function(_UpdateDollarAccount value) updateDollarAccount,
    required TResult Function(_UpdateNairaAccount value) updateNairaAccount,
    required TResult Function(_InitializeTransactionEvent value)
        initializeTransactionEvent,
    required TResult Function(_VerifyTransactionEvent value)
        verifyTransactionEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TransferPayment value)? transferPayment,
    TResult? Function(_CardPayment value)? cardPayment,
    TResult? Function(_PostInvoice value)? postInvoice,
    TResult? Function(_GetInvoice value)? getInvoice,
    TResult? Function(_GetAllInvoice value)? getAllInvoice,
    TResult? Function(_GetAllPayment value)? getAllPayment,
    TResult? Function(_VerifyPayment value)? verifyPayment,
    TResult? Function(_UpdatePricePercent value)? updatePricePercent,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateTypeOfCurrencyBank value)?
        updateTypeOfCurrencyBank,
    TResult? Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult? Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult? Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult? Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TransferPayment value)? transferPayment,
    TResult Function(_CardPayment value)? cardPayment,
    TResult Function(_PostInvoice value)? postInvoice,
    TResult Function(_GetInvoice value)? getInvoice,
    TResult Function(_GetAllInvoice value)? getAllInvoice,
    TResult Function(_GetAllPayment value)? getAllPayment,
    TResult Function(_VerifyPayment value)? verifyPayment,
    TResult Function(_UpdatePricePercent value)? updatePricePercent,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateTypeOfCurrencyBank value)? updateTypeOfCurrencyBank,
    TResult Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
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
    required TResult Function(String identity) getInvoice,
    required TResult Function() getAllInvoice,
    required TResult Function() getAllPayment,
    required TResult Function(String transactionId) verifyPayment,
    required TResult Function(
            String value, double totalPrice, double percentage)
        updatePricePercent,
    required TResult Function(String value) updatePaymentMethod,
    required TResult Function(String value) updateTypeOfCurrencyBank,
    required TResult Function(String value) updateDollarAccount,
    required TResult Function(String value) updateNairaAccount,
    required TResult Function(BuildContext context, String value, String amount,
            Customer customer)
        initializeTransactionEvent,
    required TResult Function(String value) verifyTransactionEvent,
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
    TResult? Function(String identity)? getInvoice,
    TResult? Function()? getAllInvoice,
    TResult? Function()? getAllPayment,
    TResult? Function(String transactionId)? verifyPayment,
    TResult? Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult? Function(String value)? updatePaymentMethod,
    TResult? Function(String value)? updateTypeOfCurrencyBank,
    TResult? Function(String value)? updateDollarAccount,
    TResult? Function(String value)? updateNairaAccount,
    TResult? Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult? Function(String value)? verifyTransactionEvent,
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
    TResult Function(String identity)? getInvoice,
    TResult Function()? getAllInvoice,
    TResult Function()? getAllPayment,
    TResult Function(String transactionId)? verifyPayment,
    TResult Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult Function(String value)? updatePaymentMethod,
    TResult Function(String value)? updateTypeOfCurrencyBank,
    TResult Function(String value)? updateDollarAccount,
    TResult Function(String value)? updateNairaAccount,
    TResult Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult Function(String value)? verifyTransactionEvent,
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
    required TResult Function(_GetAllInvoice value) getAllInvoice,
    required TResult Function(_GetAllPayment value) getAllPayment,
    required TResult Function(_VerifyPayment value) verifyPayment,
    required TResult Function(_UpdatePricePercent value) updatePricePercent,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateTypeOfCurrencyBank value)
        updateTypeOfCurrencyBank,
    required TResult Function(_UpdateDollarAccount value) updateDollarAccount,
    required TResult Function(_UpdateNairaAccount value) updateNairaAccount,
    required TResult Function(_InitializeTransactionEvent value)
        initializeTransactionEvent,
    required TResult Function(_VerifyTransactionEvent value)
        verifyTransactionEvent,
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
    TResult? Function(_GetAllInvoice value)? getAllInvoice,
    TResult? Function(_GetAllPayment value)? getAllPayment,
    TResult? Function(_VerifyPayment value)? verifyPayment,
    TResult? Function(_UpdatePricePercent value)? updatePricePercent,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateTypeOfCurrencyBank value)?
        updateTypeOfCurrencyBank,
    TResult? Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult? Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult? Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult? Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
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
    TResult Function(_GetAllInvoice value)? getAllInvoice,
    TResult Function(_GetAllPayment value)? getAllPayment,
    TResult Function(_VerifyPayment value)? verifyPayment,
    TResult Function(_UpdatePricePercent value)? updatePricePercent,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateTypeOfCurrencyBank value)? updateTypeOfCurrencyBank,
    TResult Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
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
    required TResult Function(String identity) getInvoice,
    required TResult Function() getAllInvoice,
    required TResult Function() getAllPayment,
    required TResult Function(String transactionId) verifyPayment,
    required TResult Function(
            String value, double totalPrice, double percentage)
        updatePricePercent,
    required TResult Function(String value) updatePaymentMethod,
    required TResult Function(String value) updateTypeOfCurrencyBank,
    required TResult Function(String value) updateDollarAccount,
    required TResult Function(String value) updateNairaAccount,
    required TResult Function(BuildContext context, String value, String amount,
            Customer customer)
        initializeTransactionEvent,
    required TResult Function(String value) verifyTransactionEvent,
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
    TResult? Function(String identity)? getInvoice,
    TResult? Function()? getAllInvoice,
    TResult? Function()? getAllPayment,
    TResult? Function(String transactionId)? verifyPayment,
    TResult? Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult? Function(String value)? updatePaymentMethod,
    TResult? Function(String value)? updateTypeOfCurrencyBank,
    TResult? Function(String value)? updateDollarAccount,
    TResult? Function(String value)? updateNairaAccount,
    TResult? Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult? Function(String value)? verifyTransactionEvent,
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
    TResult Function(String identity)? getInvoice,
    TResult Function()? getAllInvoice,
    TResult Function()? getAllPayment,
    TResult Function(String transactionId)? verifyPayment,
    TResult Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult Function(String value)? updatePaymentMethod,
    TResult Function(String value)? updateTypeOfCurrencyBank,
    TResult Function(String value)? updateDollarAccount,
    TResult Function(String value)? updateNairaAccount,
    TResult Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult Function(String value)? verifyTransactionEvent,
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
    required TResult Function(_GetAllInvoice value) getAllInvoice,
    required TResult Function(_GetAllPayment value) getAllPayment,
    required TResult Function(_VerifyPayment value) verifyPayment,
    required TResult Function(_UpdatePricePercent value) updatePricePercent,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateTypeOfCurrencyBank value)
        updateTypeOfCurrencyBank,
    required TResult Function(_UpdateDollarAccount value) updateDollarAccount,
    required TResult Function(_UpdateNairaAccount value) updateNairaAccount,
    required TResult Function(_InitializeTransactionEvent value)
        initializeTransactionEvent,
    required TResult Function(_VerifyTransactionEvent value)
        verifyTransactionEvent,
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
    TResult? Function(_GetAllInvoice value)? getAllInvoice,
    TResult? Function(_GetAllPayment value)? getAllPayment,
    TResult? Function(_VerifyPayment value)? verifyPayment,
    TResult? Function(_UpdatePricePercent value)? updatePricePercent,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateTypeOfCurrencyBank value)?
        updateTypeOfCurrencyBank,
    TResult? Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult? Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult? Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult? Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
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
    TResult Function(_GetAllInvoice value)? getAllInvoice,
    TResult Function(_GetAllPayment value)? getAllPayment,
    TResult Function(_VerifyPayment value)? verifyPayment,
    TResult Function(_UpdatePricePercent value)? updatePricePercent,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateTypeOfCurrencyBank value)? updateTypeOfCurrencyBank,
    TResult Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
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
    required TResult Function(String identity) getInvoice,
    required TResult Function() getAllInvoice,
    required TResult Function() getAllPayment,
    required TResult Function(String transactionId) verifyPayment,
    required TResult Function(
            String value, double totalPrice, double percentage)
        updatePricePercent,
    required TResult Function(String value) updatePaymentMethod,
    required TResult Function(String value) updateTypeOfCurrencyBank,
    required TResult Function(String value) updateDollarAccount,
    required TResult Function(String value) updateNairaAccount,
    required TResult Function(BuildContext context, String value, String amount,
            Customer customer)
        initializeTransactionEvent,
    required TResult Function(String value) verifyTransactionEvent,
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
    TResult? Function(String identity)? getInvoice,
    TResult? Function()? getAllInvoice,
    TResult? Function()? getAllPayment,
    TResult? Function(String transactionId)? verifyPayment,
    TResult? Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult? Function(String value)? updatePaymentMethod,
    TResult? Function(String value)? updateTypeOfCurrencyBank,
    TResult? Function(String value)? updateDollarAccount,
    TResult? Function(String value)? updateNairaAccount,
    TResult? Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult? Function(String value)? verifyTransactionEvent,
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
    TResult Function(String identity)? getInvoice,
    TResult Function()? getAllInvoice,
    TResult Function()? getAllPayment,
    TResult Function(String transactionId)? verifyPayment,
    TResult Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult Function(String value)? updatePaymentMethod,
    TResult Function(String value)? updateTypeOfCurrencyBank,
    TResult Function(String value)? updateDollarAccount,
    TResult Function(String value)? updateNairaAccount,
    TResult Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult Function(String value)? verifyTransactionEvent,
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
    required TResult Function(_GetAllInvoice value) getAllInvoice,
    required TResult Function(_GetAllPayment value) getAllPayment,
    required TResult Function(_VerifyPayment value) verifyPayment,
    required TResult Function(_UpdatePricePercent value) updatePricePercent,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateTypeOfCurrencyBank value)
        updateTypeOfCurrencyBank,
    required TResult Function(_UpdateDollarAccount value) updateDollarAccount,
    required TResult Function(_UpdateNairaAccount value) updateNairaAccount,
    required TResult Function(_InitializeTransactionEvent value)
        initializeTransactionEvent,
    required TResult Function(_VerifyTransactionEvent value)
        verifyTransactionEvent,
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
    TResult? Function(_GetAllInvoice value)? getAllInvoice,
    TResult? Function(_GetAllPayment value)? getAllPayment,
    TResult? Function(_VerifyPayment value)? verifyPayment,
    TResult? Function(_UpdatePricePercent value)? updatePricePercent,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateTypeOfCurrencyBank value)?
        updateTypeOfCurrencyBank,
    TResult? Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult? Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult? Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult? Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
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
    TResult Function(_GetAllInvoice value)? getAllInvoice,
    TResult Function(_GetAllPayment value)? getAllPayment,
    TResult Function(_VerifyPayment value)? verifyPayment,
    TResult Function(_UpdatePricePercent value)? updatePricePercent,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateTypeOfCurrencyBank value)? updateTypeOfCurrencyBank,
    TResult Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
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
    required TResult Function(String identity) getInvoice,
    required TResult Function() getAllInvoice,
    required TResult Function() getAllPayment,
    required TResult Function(String transactionId) verifyPayment,
    required TResult Function(
            String value, double totalPrice, double percentage)
        updatePricePercent,
    required TResult Function(String value) updatePaymentMethod,
    required TResult Function(String value) updateTypeOfCurrencyBank,
    required TResult Function(String value) updateDollarAccount,
    required TResult Function(String value) updateNairaAccount,
    required TResult Function(BuildContext context, String value, String amount,
            Customer customer)
        initializeTransactionEvent,
    required TResult Function(String value) verifyTransactionEvent,
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
    TResult? Function(String identity)? getInvoice,
    TResult? Function()? getAllInvoice,
    TResult? Function()? getAllPayment,
    TResult? Function(String transactionId)? verifyPayment,
    TResult? Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult? Function(String value)? updatePaymentMethod,
    TResult? Function(String value)? updateTypeOfCurrencyBank,
    TResult? Function(String value)? updateDollarAccount,
    TResult? Function(String value)? updateNairaAccount,
    TResult? Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult? Function(String value)? verifyTransactionEvent,
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
    TResult Function(String identity)? getInvoice,
    TResult Function()? getAllInvoice,
    TResult Function()? getAllPayment,
    TResult Function(String transactionId)? verifyPayment,
    TResult Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult Function(String value)? updatePaymentMethod,
    TResult Function(String value)? updateTypeOfCurrencyBank,
    TResult Function(String value)? updateDollarAccount,
    TResult Function(String value)? updateNairaAccount,
    TResult Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult Function(String value)? verifyTransactionEvent,
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
    required TResult Function(_GetAllInvoice value) getAllInvoice,
    required TResult Function(_GetAllPayment value) getAllPayment,
    required TResult Function(_VerifyPayment value) verifyPayment,
    required TResult Function(_UpdatePricePercent value) updatePricePercent,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateTypeOfCurrencyBank value)
        updateTypeOfCurrencyBank,
    required TResult Function(_UpdateDollarAccount value) updateDollarAccount,
    required TResult Function(_UpdateNairaAccount value) updateNairaAccount,
    required TResult Function(_InitializeTransactionEvent value)
        initializeTransactionEvent,
    required TResult Function(_VerifyTransactionEvent value)
        verifyTransactionEvent,
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
    TResult? Function(_GetAllInvoice value)? getAllInvoice,
    TResult? Function(_GetAllPayment value)? getAllPayment,
    TResult? Function(_VerifyPayment value)? verifyPayment,
    TResult? Function(_UpdatePricePercent value)? updatePricePercent,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateTypeOfCurrencyBank value)?
        updateTypeOfCurrencyBank,
    TResult? Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult? Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult? Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult? Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
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
    TResult Function(_GetAllInvoice value)? getAllInvoice,
    TResult Function(_GetAllPayment value)? getAllPayment,
    TResult Function(_VerifyPayment value)? verifyPayment,
    TResult Function(_UpdatePricePercent value)? updatePricePercent,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateTypeOfCurrencyBank value)? updateTypeOfCurrencyBank,
    TResult Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
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
  @useResult
  $Res call({String identity});
}

/// @nodoc
class __$$GetInvoiceImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$GetInvoiceImpl>
    implements _$$GetInvoiceImplCopyWith<$Res> {
  __$$GetInvoiceImplCopyWithImpl(
      _$GetInvoiceImpl _value, $Res Function(_$GetInvoiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identity = null,
  }) {
    return _then(_$GetInvoiceImpl(
      null == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetInvoiceImpl implements _GetInvoice {
  const _$GetInvoiceImpl(this.identity);

  @override
  final String identity;

  @override
  String toString() {
    return 'PaymentEvent.getInvoice(identity: $identity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInvoiceImpl &&
            (identical(other.identity, identity) ||
                other.identity == identity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, identity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInvoiceImplCopyWith<_$GetInvoiceImpl> get copyWith =>
      __$$GetInvoiceImplCopyWithImpl<_$GetInvoiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TransferPaymentDetailsEntity param)
        transferPayment,
    required TResult Function(CardPaymentDetailsEntity param) cardPayment,
    required TResult Function(PostInvoiceEntity param) postInvoice,
    required TResult Function(String identity) getInvoice,
    required TResult Function() getAllInvoice,
    required TResult Function() getAllPayment,
    required TResult Function(String transactionId) verifyPayment,
    required TResult Function(
            String value, double totalPrice, double percentage)
        updatePricePercent,
    required TResult Function(String value) updatePaymentMethod,
    required TResult Function(String value) updateTypeOfCurrencyBank,
    required TResult Function(String value) updateDollarAccount,
    required TResult Function(String value) updateNairaAccount,
    required TResult Function(BuildContext context, String value, String amount,
            Customer customer)
        initializeTransactionEvent,
    required TResult Function(String value) verifyTransactionEvent,
  }) {
    return getInvoice(identity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult? Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult? Function(PostInvoiceEntity param)? postInvoice,
    TResult? Function(String identity)? getInvoice,
    TResult? Function()? getAllInvoice,
    TResult? Function()? getAllPayment,
    TResult? Function(String transactionId)? verifyPayment,
    TResult? Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult? Function(String value)? updatePaymentMethod,
    TResult? Function(String value)? updateTypeOfCurrencyBank,
    TResult? Function(String value)? updateDollarAccount,
    TResult? Function(String value)? updateNairaAccount,
    TResult? Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult? Function(String value)? verifyTransactionEvent,
  }) {
    return getInvoice?.call(identity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult Function(PostInvoiceEntity param)? postInvoice,
    TResult Function(String identity)? getInvoice,
    TResult Function()? getAllInvoice,
    TResult Function()? getAllPayment,
    TResult Function(String transactionId)? verifyPayment,
    TResult Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult Function(String value)? updatePaymentMethod,
    TResult Function(String value)? updateTypeOfCurrencyBank,
    TResult Function(String value)? updateDollarAccount,
    TResult Function(String value)? updateNairaAccount,
    TResult Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult Function(String value)? verifyTransactionEvent,
    required TResult orElse(),
  }) {
    if (getInvoice != null) {
      return getInvoice(identity);
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
    required TResult Function(_GetAllInvoice value) getAllInvoice,
    required TResult Function(_GetAllPayment value) getAllPayment,
    required TResult Function(_VerifyPayment value) verifyPayment,
    required TResult Function(_UpdatePricePercent value) updatePricePercent,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateTypeOfCurrencyBank value)
        updateTypeOfCurrencyBank,
    required TResult Function(_UpdateDollarAccount value) updateDollarAccount,
    required TResult Function(_UpdateNairaAccount value) updateNairaAccount,
    required TResult Function(_InitializeTransactionEvent value)
        initializeTransactionEvent,
    required TResult Function(_VerifyTransactionEvent value)
        verifyTransactionEvent,
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
    TResult? Function(_GetAllInvoice value)? getAllInvoice,
    TResult? Function(_GetAllPayment value)? getAllPayment,
    TResult? Function(_VerifyPayment value)? verifyPayment,
    TResult? Function(_UpdatePricePercent value)? updatePricePercent,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateTypeOfCurrencyBank value)?
        updateTypeOfCurrencyBank,
    TResult? Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult? Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult? Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult? Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
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
    TResult Function(_GetAllInvoice value)? getAllInvoice,
    TResult Function(_GetAllPayment value)? getAllPayment,
    TResult Function(_VerifyPayment value)? verifyPayment,
    TResult Function(_UpdatePricePercent value)? updatePricePercent,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateTypeOfCurrencyBank value)? updateTypeOfCurrencyBank,
    TResult Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
    required TResult orElse(),
  }) {
    if (getInvoice != null) {
      return getInvoice(this);
    }
    return orElse();
  }
}

abstract class _GetInvoice implements PaymentEvent {
  const factory _GetInvoice(final String identity) = _$GetInvoiceImpl;

  String get identity;
  @JsonKey(ignore: true)
  _$$GetInvoiceImplCopyWith<_$GetInvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllInvoiceImplCopyWith<$Res> {
  factory _$$GetAllInvoiceImplCopyWith(
          _$GetAllInvoiceImpl value, $Res Function(_$GetAllInvoiceImpl) then) =
      __$$GetAllInvoiceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllInvoiceImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$GetAllInvoiceImpl>
    implements _$$GetAllInvoiceImplCopyWith<$Res> {
  __$$GetAllInvoiceImplCopyWithImpl(
      _$GetAllInvoiceImpl _value, $Res Function(_$GetAllInvoiceImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllInvoiceImpl implements _GetAllInvoice {
  const _$GetAllInvoiceImpl();

  @override
  String toString() {
    return 'PaymentEvent.getAllInvoice()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllInvoiceImpl);
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
    required TResult Function(String identity) getInvoice,
    required TResult Function() getAllInvoice,
    required TResult Function() getAllPayment,
    required TResult Function(String transactionId) verifyPayment,
    required TResult Function(
            String value, double totalPrice, double percentage)
        updatePricePercent,
    required TResult Function(String value) updatePaymentMethod,
    required TResult Function(String value) updateTypeOfCurrencyBank,
    required TResult Function(String value) updateDollarAccount,
    required TResult Function(String value) updateNairaAccount,
    required TResult Function(BuildContext context, String value, String amount,
            Customer customer)
        initializeTransactionEvent,
    required TResult Function(String value) verifyTransactionEvent,
  }) {
    return getAllInvoice();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult? Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult? Function(PostInvoiceEntity param)? postInvoice,
    TResult? Function(String identity)? getInvoice,
    TResult? Function()? getAllInvoice,
    TResult? Function()? getAllPayment,
    TResult? Function(String transactionId)? verifyPayment,
    TResult? Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult? Function(String value)? updatePaymentMethod,
    TResult? Function(String value)? updateTypeOfCurrencyBank,
    TResult? Function(String value)? updateDollarAccount,
    TResult? Function(String value)? updateNairaAccount,
    TResult? Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult? Function(String value)? verifyTransactionEvent,
  }) {
    return getAllInvoice?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult Function(PostInvoiceEntity param)? postInvoice,
    TResult Function(String identity)? getInvoice,
    TResult Function()? getAllInvoice,
    TResult Function()? getAllPayment,
    TResult Function(String transactionId)? verifyPayment,
    TResult Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult Function(String value)? updatePaymentMethod,
    TResult Function(String value)? updateTypeOfCurrencyBank,
    TResult Function(String value)? updateDollarAccount,
    TResult Function(String value)? updateNairaAccount,
    TResult Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult Function(String value)? verifyTransactionEvent,
    required TResult orElse(),
  }) {
    if (getAllInvoice != null) {
      return getAllInvoice();
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
    required TResult Function(_GetAllInvoice value) getAllInvoice,
    required TResult Function(_GetAllPayment value) getAllPayment,
    required TResult Function(_VerifyPayment value) verifyPayment,
    required TResult Function(_UpdatePricePercent value) updatePricePercent,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateTypeOfCurrencyBank value)
        updateTypeOfCurrencyBank,
    required TResult Function(_UpdateDollarAccount value) updateDollarAccount,
    required TResult Function(_UpdateNairaAccount value) updateNairaAccount,
    required TResult Function(_InitializeTransactionEvent value)
        initializeTransactionEvent,
    required TResult Function(_VerifyTransactionEvent value)
        verifyTransactionEvent,
  }) {
    return getAllInvoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TransferPayment value)? transferPayment,
    TResult? Function(_CardPayment value)? cardPayment,
    TResult? Function(_PostInvoice value)? postInvoice,
    TResult? Function(_GetInvoice value)? getInvoice,
    TResult? Function(_GetAllInvoice value)? getAllInvoice,
    TResult? Function(_GetAllPayment value)? getAllPayment,
    TResult? Function(_VerifyPayment value)? verifyPayment,
    TResult? Function(_UpdatePricePercent value)? updatePricePercent,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateTypeOfCurrencyBank value)?
        updateTypeOfCurrencyBank,
    TResult? Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult? Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult? Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult? Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
  }) {
    return getAllInvoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TransferPayment value)? transferPayment,
    TResult Function(_CardPayment value)? cardPayment,
    TResult Function(_PostInvoice value)? postInvoice,
    TResult Function(_GetInvoice value)? getInvoice,
    TResult Function(_GetAllInvoice value)? getAllInvoice,
    TResult Function(_GetAllPayment value)? getAllPayment,
    TResult Function(_VerifyPayment value)? verifyPayment,
    TResult Function(_UpdatePricePercent value)? updatePricePercent,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateTypeOfCurrencyBank value)? updateTypeOfCurrencyBank,
    TResult Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
    required TResult orElse(),
  }) {
    if (getAllInvoice != null) {
      return getAllInvoice(this);
    }
    return orElse();
  }
}

abstract class _GetAllInvoice implements PaymentEvent {
  const factory _GetAllInvoice() = _$GetAllInvoiceImpl;
}

/// @nodoc
abstract class _$$GetAllPaymentImplCopyWith<$Res> {
  factory _$$GetAllPaymentImplCopyWith(
          _$GetAllPaymentImpl value, $Res Function(_$GetAllPaymentImpl) then) =
      __$$GetAllPaymentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllPaymentImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$GetAllPaymentImpl>
    implements _$$GetAllPaymentImplCopyWith<$Res> {
  __$$GetAllPaymentImplCopyWithImpl(
      _$GetAllPaymentImpl _value, $Res Function(_$GetAllPaymentImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllPaymentImpl implements _GetAllPayment {
  const _$GetAllPaymentImpl();

  @override
  String toString() {
    return 'PaymentEvent.getAllPayment()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllPaymentImpl);
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
    required TResult Function(String identity) getInvoice,
    required TResult Function() getAllInvoice,
    required TResult Function() getAllPayment,
    required TResult Function(String transactionId) verifyPayment,
    required TResult Function(
            String value, double totalPrice, double percentage)
        updatePricePercent,
    required TResult Function(String value) updatePaymentMethod,
    required TResult Function(String value) updateTypeOfCurrencyBank,
    required TResult Function(String value) updateDollarAccount,
    required TResult Function(String value) updateNairaAccount,
    required TResult Function(BuildContext context, String value, String amount,
            Customer customer)
        initializeTransactionEvent,
    required TResult Function(String value) verifyTransactionEvent,
  }) {
    return getAllPayment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult? Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult? Function(PostInvoiceEntity param)? postInvoice,
    TResult? Function(String identity)? getInvoice,
    TResult? Function()? getAllInvoice,
    TResult? Function()? getAllPayment,
    TResult? Function(String transactionId)? verifyPayment,
    TResult? Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult? Function(String value)? updatePaymentMethod,
    TResult? Function(String value)? updateTypeOfCurrencyBank,
    TResult? Function(String value)? updateDollarAccount,
    TResult? Function(String value)? updateNairaAccount,
    TResult? Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult? Function(String value)? verifyTransactionEvent,
  }) {
    return getAllPayment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult Function(PostInvoiceEntity param)? postInvoice,
    TResult Function(String identity)? getInvoice,
    TResult Function()? getAllInvoice,
    TResult Function()? getAllPayment,
    TResult Function(String transactionId)? verifyPayment,
    TResult Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult Function(String value)? updatePaymentMethod,
    TResult Function(String value)? updateTypeOfCurrencyBank,
    TResult Function(String value)? updateDollarAccount,
    TResult Function(String value)? updateNairaAccount,
    TResult Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult Function(String value)? verifyTransactionEvent,
    required TResult orElse(),
  }) {
    if (getAllPayment != null) {
      return getAllPayment();
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
    required TResult Function(_GetAllInvoice value) getAllInvoice,
    required TResult Function(_GetAllPayment value) getAllPayment,
    required TResult Function(_VerifyPayment value) verifyPayment,
    required TResult Function(_UpdatePricePercent value) updatePricePercent,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateTypeOfCurrencyBank value)
        updateTypeOfCurrencyBank,
    required TResult Function(_UpdateDollarAccount value) updateDollarAccount,
    required TResult Function(_UpdateNairaAccount value) updateNairaAccount,
    required TResult Function(_InitializeTransactionEvent value)
        initializeTransactionEvent,
    required TResult Function(_VerifyTransactionEvent value)
        verifyTransactionEvent,
  }) {
    return getAllPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TransferPayment value)? transferPayment,
    TResult? Function(_CardPayment value)? cardPayment,
    TResult? Function(_PostInvoice value)? postInvoice,
    TResult? Function(_GetInvoice value)? getInvoice,
    TResult? Function(_GetAllInvoice value)? getAllInvoice,
    TResult? Function(_GetAllPayment value)? getAllPayment,
    TResult? Function(_VerifyPayment value)? verifyPayment,
    TResult? Function(_UpdatePricePercent value)? updatePricePercent,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateTypeOfCurrencyBank value)?
        updateTypeOfCurrencyBank,
    TResult? Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult? Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult? Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult? Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
  }) {
    return getAllPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TransferPayment value)? transferPayment,
    TResult Function(_CardPayment value)? cardPayment,
    TResult Function(_PostInvoice value)? postInvoice,
    TResult Function(_GetInvoice value)? getInvoice,
    TResult Function(_GetAllInvoice value)? getAllInvoice,
    TResult Function(_GetAllPayment value)? getAllPayment,
    TResult Function(_VerifyPayment value)? verifyPayment,
    TResult Function(_UpdatePricePercent value)? updatePricePercent,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateTypeOfCurrencyBank value)? updateTypeOfCurrencyBank,
    TResult Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
    required TResult orElse(),
  }) {
    if (getAllPayment != null) {
      return getAllPayment(this);
    }
    return orElse();
  }
}

abstract class _GetAllPayment implements PaymentEvent {
  const factory _GetAllPayment() = _$GetAllPaymentImpl;
}

/// @nodoc
abstract class _$$VerifyPaymentImplCopyWith<$Res> {
  factory _$$VerifyPaymentImplCopyWith(
          _$VerifyPaymentImpl value, $Res Function(_$VerifyPaymentImpl) then) =
      __$$VerifyPaymentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String transactionId});
}

/// @nodoc
class __$$VerifyPaymentImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$VerifyPaymentImpl>
    implements _$$VerifyPaymentImplCopyWith<$Res> {
  __$$VerifyPaymentImplCopyWithImpl(
      _$VerifyPaymentImpl _value, $Res Function(_$VerifyPaymentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
  }) {
    return _then(_$VerifyPaymentImpl(
      null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyPaymentImpl implements _VerifyPayment {
  const _$VerifyPaymentImpl(this.transactionId);

  @override
  final String transactionId;

  @override
  String toString() {
    return 'PaymentEvent.verifyPayment(transactionId: $transactionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyPaymentImpl &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyPaymentImplCopyWith<_$VerifyPaymentImpl> get copyWith =>
      __$$VerifyPaymentImplCopyWithImpl<_$VerifyPaymentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TransferPaymentDetailsEntity param)
        transferPayment,
    required TResult Function(CardPaymentDetailsEntity param) cardPayment,
    required TResult Function(PostInvoiceEntity param) postInvoice,
    required TResult Function(String identity) getInvoice,
    required TResult Function() getAllInvoice,
    required TResult Function() getAllPayment,
    required TResult Function(String transactionId) verifyPayment,
    required TResult Function(
            String value, double totalPrice, double percentage)
        updatePricePercent,
    required TResult Function(String value) updatePaymentMethod,
    required TResult Function(String value) updateTypeOfCurrencyBank,
    required TResult Function(String value) updateDollarAccount,
    required TResult Function(String value) updateNairaAccount,
    required TResult Function(BuildContext context, String value, String amount,
            Customer customer)
        initializeTransactionEvent,
    required TResult Function(String value) verifyTransactionEvent,
  }) {
    return verifyPayment(transactionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult? Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult? Function(PostInvoiceEntity param)? postInvoice,
    TResult? Function(String identity)? getInvoice,
    TResult? Function()? getAllInvoice,
    TResult? Function()? getAllPayment,
    TResult? Function(String transactionId)? verifyPayment,
    TResult? Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult? Function(String value)? updatePaymentMethod,
    TResult? Function(String value)? updateTypeOfCurrencyBank,
    TResult? Function(String value)? updateDollarAccount,
    TResult? Function(String value)? updateNairaAccount,
    TResult? Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult? Function(String value)? verifyTransactionEvent,
  }) {
    return verifyPayment?.call(transactionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult Function(PostInvoiceEntity param)? postInvoice,
    TResult Function(String identity)? getInvoice,
    TResult Function()? getAllInvoice,
    TResult Function()? getAllPayment,
    TResult Function(String transactionId)? verifyPayment,
    TResult Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult Function(String value)? updatePaymentMethod,
    TResult Function(String value)? updateTypeOfCurrencyBank,
    TResult Function(String value)? updateDollarAccount,
    TResult Function(String value)? updateNairaAccount,
    TResult Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult Function(String value)? verifyTransactionEvent,
    required TResult orElse(),
  }) {
    if (verifyPayment != null) {
      return verifyPayment(transactionId);
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
    required TResult Function(_GetAllInvoice value) getAllInvoice,
    required TResult Function(_GetAllPayment value) getAllPayment,
    required TResult Function(_VerifyPayment value) verifyPayment,
    required TResult Function(_UpdatePricePercent value) updatePricePercent,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateTypeOfCurrencyBank value)
        updateTypeOfCurrencyBank,
    required TResult Function(_UpdateDollarAccount value) updateDollarAccount,
    required TResult Function(_UpdateNairaAccount value) updateNairaAccount,
    required TResult Function(_InitializeTransactionEvent value)
        initializeTransactionEvent,
    required TResult Function(_VerifyTransactionEvent value)
        verifyTransactionEvent,
  }) {
    return verifyPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TransferPayment value)? transferPayment,
    TResult? Function(_CardPayment value)? cardPayment,
    TResult? Function(_PostInvoice value)? postInvoice,
    TResult? Function(_GetInvoice value)? getInvoice,
    TResult? Function(_GetAllInvoice value)? getAllInvoice,
    TResult? Function(_GetAllPayment value)? getAllPayment,
    TResult? Function(_VerifyPayment value)? verifyPayment,
    TResult? Function(_UpdatePricePercent value)? updatePricePercent,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateTypeOfCurrencyBank value)?
        updateTypeOfCurrencyBank,
    TResult? Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult? Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult? Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult? Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
  }) {
    return verifyPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TransferPayment value)? transferPayment,
    TResult Function(_CardPayment value)? cardPayment,
    TResult Function(_PostInvoice value)? postInvoice,
    TResult Function(_GetInvoice value)? getInvoice,
    TResult Function(_GetAllInvoice value)? getAllInvoice,
    TResult Function(_GetAllPayment value)? getAllPayment,
    TResult Function(_VerifyPayment value)? verifyPayment,
    TResult Function(_UpdatePricePercent value)? updatePricePercent,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateTypeOfCurrencyBank value)? updateTypeOfCurrencyBank,
    TResult Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
    required TResult orElse(),
  }) {
    if (verifyPayment != null) {
      return verifyPayment(this);
    }
    return orElse();
  }
}

abstract class _VerifyPayment implements PaymentEvent {
  const factory _VerifyPayment(final String transactionId) =
      _$VerifyPaymentImpl;

  String get transactionId;
  @JsonKey(ignore: true)
  _$$VerifyPaymentImplCopyWith<_$VerifyPaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePricePercentImplCopyWith<$Res> {
  factory _$$UpdatePricePercentImplCopyWith(_$UpdatePricePercentImpl value,
          $Res Function(_$UpdatePricePercentImpl) then) =
      __$$UpdatePricePercentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value, double totalPrice, double percentage});
}

/// @nodoc
class __$$UpdatePricePercentImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$UpdatePricePercentImpl>
    implements _$$UpdatePricePercentImplCopyWith<$Res> {
  __$$UpdatePricePercentImplCopyWithImpl(_$UpdatePricePercentImpl _value,
      $Res Function(_$UpdatePricePercentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? totalPrice = null,
    Object? percentage = null,
  }) {
    return _then(_$UpdatePricePercentImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$UpdatePricePercentImpl implements _UpdatePricePercent {
  const _$UpdatePricePercentImpl(this.value, this.totalPrice, this.percentage);

  @override
  final String value;
  @override
  final double totalPrice;
  @override
  final double percentage;

  @override
  String toString() {
    return 'PaymentEvent.updatePricePercent(value: $value, totalPrice: $totalPrice, percentage: $percentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePricePercentImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, totalPrice, percentage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePricePercentImplCopyWith<_$UpdatePricePercentImpl> get copyWith =>
      __$$UpdatePricePercentImplCopyWithImpl<_$UpdatePricePercentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TransferPaymentDetailsEntity param)
        transferPayment,
    required TResult Function(CardPaymentDetailsEntity param) cardPayment,
    required TResult Function(PostInvoiceEntity param) postInvoice,
    required TResult Function(String identity) getInvoice,
    required TResult Function() getAllInvoice,
    required TResult Function() getAllPayment,
    required TResult Function(String transactionId) verifyPayment,
    required TResult Function(
            String value, double totalPrice, double percentage)
        updatePricePercent,
    required TResult Function(String value) updatePaymentMethod,
    required TResult Function(String value) updateTypeOfCurrencyBank,
    required TResult Function(String value) updateDollarAccount,
    required TResult Function(String value) updateNairaAccount,
    required TResult Function(BuildContext context, String value, String amount,
            Customer customer)
        initializeTransactionEvent,
    required TResult Function(String value) verifyTransactionEvent,
  }) {
    return updatePricePercent(value, totalPrice, percentage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult? Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult? Function(PostInvoiceEntity param)? postInvoice,
    TResult? Function(String identity)? getInvoice,
    TResult? Function()? getAllInvoice,
    TResult? Function()? getAllPayment,
    TResult? Function(String transactionId)? verifyPayment,
    TResult? Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult? Function(String value)? updatePaymentMethod,
    TResult? Function(String value)? updateTypeOfCurrencyBank,
    TResult? Function(String value)? updateDollarAccount,
    TResult? Function(String value)? updateNairaAccount,
    TResult? Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult? Function(String value)? verifyTransactionEvent,
  }) {
    return updatePricePercent?.call(value, totalPrice, percentage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult Function(PostInvoiceEntity param)? postInvoice,
    TResult Function(String identity)? getInvoice,
    TResult Function()? getAllInvoice,
    TResult Function()? getAllPayment,
    TResult Function(String transactionId)? verifyPayment,
    TResult Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult Function(String value)? updatePaymentMethod,
    TResult Function(String value)? updateTypeOfCurrencyBank,
    TResult Function(String value)? updateDollarAccount,
    TResult Function(String value)? updateNairaAccount,
    TResult Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult Function(String value)? verifyTransactionEvent,
    required TResult orElse(),
  }) {
    if (updatePricePercent != null) {
      return updatePricePercent(value, totalPrice, percentage);
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
    required TResult Function(_GetAllInvoice value) getAllInvoice,
    required TResult Function(_GetAllPayment value) getAllPayment,
    required TResult Function(_VerifyPayment value) verifyPayment,
    required TResult Function(_UpdatePricePercent value) updatePricePercent,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateTypeOfCurrencyBank value)
        updateTypeOfCurrencyBank,
    required TResult Function(_UpdateDollarAccount value) updateDollarAccount,
    required TResult Function(_UpdateNairaAccount value) updateNairaAccount,
    required TResult Function(_InitializeTransactionEvent value)
        initializeTransactionEvent,
    required TResult Function(_VerifyTransactionEvent value)
        verifyTransactionEvent,
  }) {
    return updatePricePercent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TransferPayment value)? transferPayment,
    TResult? Function(_CardPayment value)? cardPayment,
    TResult? Function(_PostInvoice value)? postInvoice,
    TResult? Function(_GetInvoice value)? getInvoice,
    TResult? Function(_GetAllInvoice value)? getAllInvoice,
    TResult? Function(_GetAllPayment value)? getAllPayment,
    TResult? Function(_VerifyPayment value)? verifyPayment,
    TResult? Function(_UpdatePricePercent value)? updatePricePercent,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateTypeOfCurrencyBank value)?
        updateTypeOfCurrencyBank,
    TResult? Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult? Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult? Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult? Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
  }) {
    return updatePricePercent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TransferPayment value)? transferPayment,
    TResult Function(_CardPayment value)? cardPayment,
    TResult Function(_PostInvoice value)? postInvoice,
    TResult Function(_GetInvoice value)? getInvoice,
    TResult Function(_GetAllInvoice value)? getAllInvoice,
    TResult Function(_GetAllPayment value)? getAllPayment,
    TResult Function(_VerifyPayment value)? verifyPayment,
    TResult Function(_UpdatePricePercent value)? updatePricePercent,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateTypeOfCurrencyBank value)? updateTypeOfCurrencyBank,
    TResult Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
    required TResult orElse(),
  }) {
    if (updatePricePercent != null) {
      return updatePricePercent(this);
    }
    return orElse();
  }
}

abstract class _UpdatePricePercent implements PaymentEvent {
  const factory _UpdatePricePercent(final String value, final double totalPrice,
      final double percentage) = _$UpdatePricePercentImpl;

  String get value;
  double get totalPrice;
  double get percentage;
  @JsonKey(ignore: true)
  _$$UpdatePricePercentImplCopyWith<_$UpdatePricePercentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePaymentMethodImplCopyWith<$Res> {
  factory _$$UpdatePaymentMethodImplCopyWith(_$UpdatePaymentMethodImpl value,
          $Res Function(_$UpdatePaymentMethodImpl) then) =
      __$$UpdatePaymentMethodImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UpdatePaymentMethodImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$UpdatePaymentMethodImpl>
    implements _$$UpdatePaymentMethodImplCopyWith<$Res> {
  __$$UpdatePaymentMethodImplCopyWithImpl(_$UpdatePaymentMethodImpl _value,
      $Res Function(_$UpdatePaymentMethodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UpdatePaymentMethodImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdatePaymentMethodImpl implements _UpdatePaymentMethod {
  const _$UpdatePaymentMethodImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'PaymentEvent.updatePaymentMethod(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePaymentMethodImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePaymentMethodImplCopyWith<_$UpdatePaymentMethodImpl> get copyWith =>
      __$$UpdatePaymentMethodImplCopyWithImpl<_$UpdatePaymentMethodImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TransferPaymentDetailsEntity param)
        transferPayment,
    required TResult Function(CardPaymentDetailsEntity param) cardPayment,
    required TResult Function(PostInvoiceEntity param) postInvoice,
    required TResult Function(String identity) getInvoice,
    required TResult Function() getAllInvoice,
    required TResult Function() getAllPayment,
    required TResult Function(String transactionId) verifyPayment,
    required TResult Function(
            String value, double totalPrice, double percentage)
        updatePricePercent,
    required TResult Function(String value) updatePaymentMethod,
    required TResult Function(String value) updateTypeOfCurrencyBank,
    required TResult Function(String value) updateDollarAccount,
    required TResult Function(String value) updateNairaAccount,
    required TResult Function(BuildContext context, String value, String amount,
            Customer customer)
        initializeTransactionEvent,
    required TResult Function(String value) verifyTransactionEvent,
  }) {
    return updatePaymentMethod(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult? Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult? Function(PostInvoiceEntity param)? postInvoice,
    TResult? Function(String identity)? getInvoice,
    TResult? Function()? getAllInvoice,
    TResult? Function()? getAllPayment,
    TResult? Function(String transactionId)? verifyPayment,
    TResult? Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult? Function(String value)? updatePaymentMethod,
    TResult? Function(String value)? updateTypeOfCurrencyBank,
    TResult? Function(String value)? updateDollarAccount,
    TResult? Function(String value)? updateNairaAccount,
    TResult? Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult? Function(String value)? verifyTransactionEvent,
  }) {
    return updatePaymentMethod?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult Function(PostInvoiceEntity param)? postInvoice,
    TResult Function(String identity)? getInvoice,
    TResult Function()? getAllInvoice,
    TResult Function()? getAllPayment,
    TResult Function(String transactionId)? verifyPayment,
    TResult Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult Function(String value)? updatePaymentMethod,
    TResult Function(String value)? updateTypeOfCurrencyBank,
    TResult Function(String value)? updateDollarAccount,
    TResult Function(String value)? updateNairaAccount,
    TResult Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult Function(String value)? verifyTransactionEvent,
    required TResult orElse(),
  }) {
    if (updatePaymentMethod != null) {
      return updatePaymentMethod(value);
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
    required TResult Function(_GetAllInvoice value) getAllInvoice,
    required TResult Function(_GetAllPayment value) getAllPayment,
    required TResult Function(_VerifyPayment value) verifyPayment,
    required TResult Function(_UpdatePricePercent value) updatePricePercent,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateTypeOfCurrencyBank value)
        updateTypeOfCurrencyBank,
    required TResult Function(_UpdateDollarAccount value) updateDollarAccount,
    required TResult Function(_UpdateNairaAccount value) updateNairaAccount,
    required TResult Function(_InitializeTransactionEvent value)
        initializeTransactionEvent,
    required TResult Function(_VerifyTransactionEvent value)
        verifyTransactionEvent,
  }) {
    return updatePaymentMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TransferPayment value)? transferPayment,
    TResult? Function(_CardPayment value)? cardPayment,
    TResult? Function(_PostInvoice value)? postInvoice,
    TResult? Function(_GetInvoice value)? getInvoice,
    TResult? Function(_GetAllInvoice value)? getAllInvoice,
    TResult? Function(_GetAllPayment value)? getAllPayment,
    TResult? Function(_VerifyPayment value)? verifyPayment,
    TResult? Function(_UpdatePricePercent value)? updatePricePercent,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateTypeOfCurrencyBank value)?
        updateTypeOfCurrencyBank,
    TResult? Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult? Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult? Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult? Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
  }) {
    return updatePaymentMethod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TransferPayment value)? transferPayment,
    TResult Function(_CardPayment value)? cardPayment,
    TResult Function(_PostInvoice value)? postInvoice,
    TResult Function(_GetInvoice value)? getInvoice,
    TResult Function(_GetAllInvoice value)? getAllInvoice,
    TResult Function(_GetAllPayment value)? getAllPayment,
    TResult Function(_VerifyPayment value)? verifyPayment,
    TResult Function(_UpdatePricePercent value)? updatePricePercent,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateTypeOfCurrencyBank value)? updateTypeOfCurrencyBank,
    TResult Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
    required TResult orElse(),
  }) {
    if (updatePaymentMethod != null) {
      return updatePaymentMethod(this);
    }
    return orElse();
  }
}

abstract class _UpdatePaymentMethod implements PaymentEvent {
  const factory _UpdatePaymentMethod(final String value) =
      _$UpdatePaymentMethodImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$UpdatePaymentMethodImplCopyWith<_$UpdatePaymentMethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTypeOfCurrencyBankImplCopyWith<$Res> {
  factory _$$UpdateTypeOfCurrencyBankImplCopyWith(
          _$UpdateTypeOfCurrencyBankImpl value,
          $Res Function(_$UpdateTypeOfCurrencyBankImpl) then) =
      __$$UpdateTypeOfCurrencyBankImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UpdateTypeOfCurrencyBankImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$UpdateTypeOfCurrencyBankImpl>
    implements _$$UpdateTypeOfCurrencyBankImplCopyWith<$Res> {
  __$$UpdateTypeOfCurrencyBankImplCopyWithImpl(
      _$UpdateTypeOfCurrencyBankImpl _value,
      $Res Function(_$UpdateTypeOfCurrencyBankImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UpdateTypeOfCurrencyBankImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateTypeOfCurrencyBankImpl implements _UpdateTypeOfCurrencyBank {
  const _$UpdateTypeOfCurrencyBankImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'PaymentEvent.updateTypeOfCurrencyBank(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTypeOfCurrencyBankImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTypeOfCurrencyBankImplCopyWith<_$UpdateTypeOfCurrencyBankImpl>
      get copyWith => __$$UpdateTypeOfCurrencyBankImplCopyWithImpl<
          _$UpdateTypeOfCurrencyBankImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TransferPaymentDetailsEntity param)
        transferPayment,
    required TResult Function(CardPaymentDetailsEntity param) cardPayment,
    required TResult Function(PostInvoiceEntity param) postInvoice,
    required TResult Function(String identity) getInvoice,
    required TResult Function() getAllInvoice,
    required TResult Function() getAllPayment,
    required TResult Function(String transactionId) verifyPayment,
    required TResult Function(
            String value, double totalPrice, double percentage)
        updatePricePercent,
    required TResult Function(String value) updatePaymentMethod,
    required TResult Function(String value) updateTypeOfCurrencyBank,
    required TResult Function(String value) updateDollarAccount,
    required TResult Function(String value) updateNairaAccount,
    required TResult Function(BuildContext context, String value, String amount,
            Customer customer)
        initializeTransactionEvent,
    required TResult Function(String value) verifyTransactionEvent,
  }) {
    return updateTypeOfCurrencyBank(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult? Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult? Function(PostInvoiceEntity param)? postInvoice,
    TResult? Function(String identity)? getInvoice,
    TResult? Function()? getAllInvoice,
    TResult? Function()? getAllPayment,
    TResult? Function(String transactionId)? verifyPayment,
    TResult? Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult? Function(String value)? updatePaymentMethod,
    TResult? Function(String value)? updateTypeOfCurrencyBank,
    TResult? Function(String value)? updateDollarAccount,
    TResult? Function(String value)? updateNairaAccount,
    TResult? Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult? Function(String value)? verifyTransactionEvent,
  }) {
    return updateTypeOfCurrencyBank?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult Function(PostInvoiceEntity param)? postInvoice,
    TResult Function(String identity)? getInvoice,
    TResult Function()? getAllInvoice,
    TResult Function()? getAllPayment,
    TResult Function(String transactionId)? verifyPayment,
    TResult Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult Function(String value)? updatePaymentMethod,
    TResult Function(String value)? updateTypeOfCurrencyBank,
    TResult Function(String value)? updateDollarAccount,
    TResult Function(String value)? updateNairaAccount,
    TResult Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult Function(String value)? verifyTransactionEvent,
    required TResult orElse(),
  }) {
    if (updateTypeOfCurrencyBank != null) {
      return updateTypeOfCurrencyBank(value);
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
    required TResult Function(_GetAllInvoice value) getAllInvoice,
    required TResult Function(_GetAllPayment value) getAllPayment,
    required TResult Function(_VerifyPayment value) verifyPayment,
    required TResult Function(_UpdatePricePercent value) updatePricePercent,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateTypeOfCurrencyBank value)
        updateTypeOfCurrencyBank,
    required TResult Function(_UpdateDollarAccount value) updateDollarAccount,
    required TResult Function(_UpdateNairaAccount value) updateNairaAccount,
    required TResult Function(_InitializeTransactionEvent value)
        initializeTransactionEvent,
    required TResult Function(_VerifyTransactionEvent value)
        verifyTransactionEvent,
  }) {
    return updateTypeOfCurrencyBank(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TransferPayment value)? transferPayment,
    TResult? Function(_CardPayment value)? cardPayment,
    TResult? Function(_PostInvoice value)? postInvoice,
    TResult? Function(_GetInvoice value)? getInvoice,
    TResult? Function(_GetAllInvoice value)? getAllInvoice,
    TResult? Function(_GetAllPayment value)? getAllPayment,
    TResult? Function(_VerifyPayment value)? verifyPayment,
    TResult? Function(_UpdatePricePercent value)? updatePricePercent,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateTypeOfCurrencyBank value)?
        updateTypeOfCurrencyBank,
    TResult? Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult? Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult? Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult? Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
  }) {
    return updateTypeOfCurrencyBank?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TransferPayment value)? transferPayment,
    TResult Function(_CardPayment value)? cardPayment,
    TResult Function(_PostInvoice value)? postInvoice,
    TResult Function(_GetInvoice value)? getInvoice,
    TResult Function(_GetAllInvoice value)? getAllInvoice,
    TResult Function(_GetAllPayment value)? getAllPayment,
    TResult Function(_VerifyPayment value)? verifyPayment,
    TResult Function(_UpdatePricePercent value)? updatePricePercent,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateTypeOfCurrencyBank value)? updateTypeOfCurrencyBank,
    TResult Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
    required TResult orElse(),
  }) {
    if (updateTypeOfCurrencyBank != null) {
      return updateTypeOfCurrencyBank(this);
    }
    return orElse();
  }
}

abstract class _UpdateTypeOfCurrencyBank implements PaymentEvent {
  const factory _UpdateTypeOfCurrencyBank(final String value) =
      _$UpdateTypeOfCurrencyBankImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$UpdateTypeOfCurrencyBankImplCopyWith<_$UpdateTypeOfCurrencyBankImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateDollarAccountImplCopyWith<$Res> {
  factory _$$UpdateDollarAccountImplCopyWith(_$UpdateDollarAccountImpl value,
          $Res Function(_$UpdateDollarAccountImpl) then) =
      __$$UpdateDollarAccountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UpdateDollarAccountImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$UpdateDollarAccountImpl>
    implements _$$UpdateDollarAccountImplCopyWith<$Res> {
  __$$UpdateDollarAccountImplCopyWithImpl(_$UpdateDollarAccountImpl _value,
      $Res Function(_$UpdateDollarAccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UpdateDollarAccountImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateDollarAccountImpl implements _UpdateDollarAccount {
  const _$UpdateDollarAccountImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'PaymentEvent.updateDollarAccount(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDollarAccountImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDollarAccountImplCopyWith<_$UpdateDollarAccountImpl> get copyWith =>
      __$$UpdateDollarAccountImplCopyWithImpl<_$UpdateDollarAccountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TransferPaymentDetailsEntity param)
        transferPayment,
    required TResult Function(CardPaymentDetailsEntity param) cardPayment,
    required TResult Function(PostInvoiceEntity param) postInvoice,
    required TResult Function(String identity) getInvoice,
    required TResult Function() getAllInvoice,
    required TResult Function() getAllPayment,
    required TResult Function(String transactionId) verifyPayment,
    required TResult Function(
            String value, double totalPrice, double percentage)
        updatePricePercent,
    required TResult Function(String value) updatePaymentMethod,
    required TResult Function(String value) updateTypeOfCurrencyBank,
    required TResult Function(String value) updateDollarAccount,
    required TResult Function(String value) updateNairaAccount,
    required TResult Function(BuildContext context, String value, String amount,
            Customer customer)
        initializeTransactionEvent,
    required TResult Function(String value) verifyTransactionEvent,
  }) {
    return updateDollarAccount(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult? Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult? Function(PostInvoiceEntity param)? postInvoice,
    TResult? Function(String identity)? getInvoice,
    TResult? Function()? getAllInvoice,
    TResult? Function()? getAllPayment,
    TResult? Function(String transactionId)? verifyPayment,
    TResult? Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult? Function(String value)? updatePaymentMethod,
    TResult? Function(String value)? updateTypeOfCurrencyBank,
    TResult? Function(String value)? updateDollarAccount,
    TResult? Function(String value)? updateNairaAccount,
    TResult? Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult? Function(String value)? verifyTransactionEvent,
  }) {
    return updateDollarAccount?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult Function(PostInvoiceEntity param)? postInvoice,
    TResult Function(String identity)? getInvoice,
    TResult Function()? getAllInvoice,
    TResult Function()? getAllPayment,
    TResult Function(String transactionId)? verifyPayment,
    TResult Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult Function(String value)? updatePaymentMethod,
    TResult Function(String value)? updateTypeOfCurrencyBank,
    TResult Function(String value)? updateDollarAccount,
    TResult Function(String value)? updateNairaAccount,
    TResult Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult Function(String value)? verifyTransactionEvent,
    required TResult orElse(),
  }) {
    if (updateDollarAccount != null) {
      return updateDollarAccount(value);
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
    required TResult Function(_GetAllInvoice value) getAllInvoice,
    required TResult Function(_GetAllPayment value) getAllPayment,
    required TResult Function(_VerifyPayment value) verifyPayment,
    required TResult Function(_UpdatePricePercent value) updatePricePercent,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateTypeOfCurrencyBank value)
        updateTypeOfCurrencyBank,
    required TResult Function(_UpdateDollarAccount value) updateDollarAccount,
    required TResult Function(_UpdateNairaAccount value) updateNairaAccount,
    required TResult Function(_InitializeTransactionEvent value)
        initializeTransactionEvent,
    required TResult Function(_VerifyTransactionEvent value)
        verifyTransactionEvent,
  }) {
    return updateDollarAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TransferPayment value)? transferPayment,
    TResult? Function(_CardPayment value)? cardPayment,
    TResult? Function(_PostInvoice value)? postInvoice,
    TResult? Function(_GetInvoice value)? getInvoice,
    TResult? Function(_GetAllInvoice value)? getAllInvoice,
    TResult? Function(_GetAllPayment value)? getAllPayment,
    TResult? Function(_VerifyPayment value)? verifyPayment,
    TResult? Function(_UpdatePricePercent value)? updatePricePercent,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateTypeOfCurrencyBank value)?
        updateTypeOfCurrencyBank,
    TResult? Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult? Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult? Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult? Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
  }) {
    return updateDollarAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TransferPayment value)? transferPayment,
    TResult Function(_CardPayment value)? cardPayment,
    TResult Function(_PostInvoice value)? postInvoice,
    TResult Function(_GetInvoice value)? getInvoice,
    TResult Function(_GetAllInvoice value)? getAllInvoice,
    TResult Function(_GetAllPayment value)? getAllPayment,
    TResult Function(_VerifyPayment value)? verifyPayment,
    TResult Function(_UpdatePricePercent value)? updatePricePercent,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateTypeOfCurrencyBank value)? updateTypeOfCurrencyBank,
    TResult Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
    required TResult orElse(),
  }) {
    if (updateDollarAccount != null) {
      return updateDollarAccount(this);
    }
    return orElse();
  }
}

abstract class _UpdateDollarAccount implements PaymentEvent {
  const factory _UpdateDollarAccount(final String value) =
      _$UpdateDollarAccountImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$UpdateDollarAccountImplCopyWith<_$UpdateDollarAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateNairaAccountImplCopyWith<$Res> {
  factory _$$UpdateNairaAccountImplCopyWith(_$UpdateNairaAccountImpl value,
          $Res Function(_$UpdateNairaAccountImpl) then) =
      __$$UpdateNairaAccountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UpdateNairaAccountImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$UpdateNairaAccountImpl>
    implements _$$UpdateNairaAccountImplCopyWith<$Res> {
  __$$UpdateNairaAccountImplCopyWithImpl(_$UpdateNairaAccountImpl _value,
      $Res Function(_$UpdateNairaAccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UpdateNairaAccountImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateNairaAccountImpl implements _UpdateNairaAccount {
  const _$UpdateNairaAccountImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'PaymentEvent.updateNairaAccount(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNairaAccountImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNairaAccountImplCopyWith<_$UpdateNairaAccountImpl> get copyWith =>
      __$$UpdateNairaAccountImplCopyWithImpl<_$UpdateNairaAccountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TransferPaymentDetailsEntity param)
        transferPayment,
    required TResult Function(CardPaymentDetailsEntity param) cardPayment,
    required TResult Function(PostInvoiceEntity param) postInvoice,
    required TResult Function(String identity) getInvoice,
    required TResult Function() getAllInvoice,
    required TResult Function() getAllPayment,
    required TResult Function(String transactionId) verifyPayment,
    required TResult Function(
            String value, double totalPrice, double percentage)
        updatePricePercent,
    required TResult Function(String value) updatePaymentMethod,
    required TResult Function(String value) updateTypeOfCurrencyBank,
    required TResult Function(String value) updateDollarAccount,
    required TResult Function(String value) updateNairaAccount,
    required TResult Function(BuildContext context, String value, String amount,
            Customer customer)
        initializeTransactionEvent,
    required TResult Function(String value) verifyTransactionEvent,
  }) {
    return updateNairaAccount(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult? Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult? Function(PostInvoiceEntity param)? postInvoice,
    TResult? Function(String identity)? getInvoice,
    TResult? Function()? getAllInvoice,
    TResult? Function()? getAllPayment,
    TResult? Function(String transactionId)? verifyPayment,
    TResult? Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult? Function(String value)? updatePaymentMethod,
    TResult? Function(String value)? updateTypeOfCurrencyBank,
    TResult? Function(String value)? updateDollarAccount,
    TResult? Function(String value)? updateNairaAccount,
    TResult? Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult? Function(String value)? verifyTransactionEvent,
  }) {
    return updateNairaAccount?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult Function(PostInvoiceEntity param)? postInvoice,
    TResult Function(String identity)? getInvoice,
    TResult Function()? getAllInvoice,
    TResult Function()? getAllPayment,
    TResult Function(String transactionId)? verifyPayment,
    TResult Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult Function(String value)? updatePaymentMethod,
    TResult Function(String value)? updateTypeOfCurrencyBank,
    TResult Function(String value)? updateDollarAccount,
    TResult Function(String value)? updateNairaAccount,
    TResult Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult Function(String value)? verifyTransactionEvent,
    required TResult orElse(),
  }) {
    if (updateNairaAccount != null) {
      return updateNairaAccount(value);
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
    required TResult Function(_GetAllInvoice value) getAllInvoice,
    required TResult Function(_GetAllPayment value) getAllPayment,
    required TResult Function(_VerifyPayment value) verifyPayment,
    required TResult Function(_UpdatePricePercent value) updatePricePercent,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateTypeOfCurrencyBank value)
        updateTypeOfCurrencyBank,
    required TResult Function(_UpdateDollarAccount value) updateDollarAccount,
    required TResult Function(_UpdateNairaAccount value) updateNairaAccount,
    required TResult Function(_InitializeTransactionEvent value)
        initializeTransactionEvent,
    required TResult Function(_VerifyTransactionEvent value)
        verifyTransactionEvent,
  }) {
    return updateNairaAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TransferPayment value)? transferPayment,
    TResult? Function(_CardPayment value)? cardPayment,
    TResult? Function(_PostInvoice value)? postInvoice,
    TResult? Function(_GetInvoice value)? getInvoice,
    TResult? Function(_GetAllInvoice value)? getAllInvoice,
    TResult? Function(_GetAllPayment value)? getAllPayment,
    TResult? Function(_VerifyPayment value)? verifyPayment,
    TResult? Function(_UpdatePricePercent value)? updatePricePercent,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateTypeOfCurrencyBank value)?
        updateTypeOfCurrencyBank,
    TResult? Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult? Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult? Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult? Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
  }) {
    return updateNairaAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TransferPayment value)? transferPayment,
    TResult Function(_CardPayment value)? cardPayment,
    TResult Function(_PostInvoice value)? postInvoice,
    TResult Function(_GetInvoice value)? getInvoice,
    TResult Function(_GetAllInvoice value)? getAllInvoice,
    TResult Function(_GetAllPayment value)? getAllPayment,
    TResult Function(_VerifyPayment value)? verifyPayment,
    TResult Function(_UpdatePricePercent value)? updatePricePercent,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateTypeOfCurrencyBank value)? updateTypeOfCurrencyBank,
    TResult Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
    required TResult orElse(),
  }) {
    if (updateNairaAccount != null) {
      return updateNairaAccount(this);
    }
    return orElse();
  }
}

abstract class _UpdateNairaAccount implements PaymentEvent {
  const factory _UpdateNairaAccount(final String value) =
      _$UpdateNairaAccountImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$UpdateNairaAccountImplCopyWith<_$UpdateNairaAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitializeTransactionEventImplCopyWith<$Res> {
  factory _$$InitializeTransactionEventImplCopyWith(
          _$InitializeTransactionEventImpl value,
          $Res Function(_$InitializeTransactionEventImpl) then) =
      __$$InitializeTransactionEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BuildContext context, String value, String amount, Customer customer});
}

/// @nodoc
class __$$InitializeTransactionEventImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$InitializeTransactionEventImpl>
    implements _$$InitializeTransactionEventImplCopyWith<$Res> {
  __$$InitializeTransactionEventImplCopyWithImpl(
      _$InitializeTransactionEventImpl _value,
      $Res Function(_$InitializeTransactionEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? value = null,
    Object? amount = null,
    Object? customer = null,
  }) {
    return _then(_$InitializeTransactionEventImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
    ));
  }
}

/// @nodoc

class _$InitializeTransactionEventImpl implements _InitializeTransactionEvent {
  const _$InitializeTransactionEventImpl(
      this.context, this.value, this.amount, this.customer);

  @override
  final BuildContext context;
  @override
  final String value;
  @override
  final String amount;
  @override
  final Customer customer;

  @override
  String toString() {
    return 'PaymentEvent.initializeTransactionEvent(context: $context, value: $value, amount: $amount, customer: $customer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeTransactionEventImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.customer, customer) ||
                other.customer == customer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, context, value, amount, customer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeTransactionEventImplCopyWith<_$InitializeTransactionEventImpl>
      get copyWith => __$$InitializeTransactionEventImplCopyWithImpl<
          _$InitializeTransactionEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TransferPaymentDetailsEntity param)
        transferPayment,
    required TResult Function(CardPaymentDetailsEntity param) cardPayment,
    required TResult Function(PostInvoiceEntity param) postInvoice,
    required TResult Function(String identity) getInvoice,
    required TResult Function() getAllInvoice,
    required TResult Function() getAllPayment,
    required TResult Function(String transactionId) verifyPayment,
    required TResult Function(
            String value, double totalPrice, double percentage)
        updatePricePercent,
    required TResult Function(String value) updatePaymentMethod,
    required TResult Function(String value) updateTypeOfCurrencyBank,
    required TResult Function(String value) updateDollarAccount,
    required TResult Function(String value) updateNairaAccount,
    required TResult Function(BuildContext context, String value, String amount,
            Customer customer)
        initializeTransactionEvent,
    required TResult Function(String value) verifyTransactionEvent,
  }) {
    return initializeTransactionEvent(context, value, amount, customer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult? Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult? Function(PostInvoiceEntity param)? postInvoice,
    TResult? Function(String identity)? getInvoice,
    TResult? Function()? getAllInvoice,
    TResult? Function()? getAllPayment,
    TResult? Function(String transactionId)? verifyPayment,
    TResult? Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult? Function(String value)? updatePaymentMethod,
    TResult? Function(String value)? updateTypeOfCurrencyBank,
    TResult? Function(String value)? updateDollarAccount,
    TResult? Function(String value)? updateNairaAccount,
    TResult? Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult? Function(String value)? verifyTransactionEvent,
  }) {
    return initializeTransactionEvent?.call(context, value, amount, customer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult Function(PostInvoiceEntity param)? postInvoice,
    TResult Function(String identity)? getInvoice,
    TResult Function()? getAllInvoice,
    TResult Function()? getAllPayment,
    TResult Function(String transactionId)? verifyPayment,
    TResult Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult Function(String value)? updatePaymentMethod,
    TResult Function(String value)? updateTypeOfCurrencyBank,
    TResult Function(String value)? updateDollarAccount,
    TResult Function(String value)? updateNairaAccount,
    TResult Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult Function(String value)? verifyTransactionEvent,
    required TResult orElse(),
  }) {
    if (initializeTransactionEvent != null) {
      return initializeTransactionEvent(context, value, amount, customer);
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
    required TResult Function(_GetAllInvoice value) getAllInvoice,
    required TResult Function(_GetAllPayment value) getAllPayment,
    required TResult Function(_VerifyPayment value) verifyPayment,
    required TResult Function(_UpdatePricePercent value) updatePricePercent,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateTypeOfCurrencyBank value)
        updateTypeOfCurrencyBank,
    required TResult Function(_UpdateDollarAccount value) updateDollarAccount,
    required TResult Function(_UpdateNairaAccount value) updateNairaAccount,
    required TResult Function(_InitializeTransactionEvent value)
        initializeTransactionEvent,
    required TResult Function(_VerifyTransactionEvent value)
        verifyTransactionEvent,
  }) {
    return initializeTransactionEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TransferPayment value)? transferPayment,
    TResult? Function(_CardPayment value)? cardPayment,
    TResult? Function(_PostInvoice value)? postInvoice,
    TResult? Function(_GetInvoice value)? getInvoice,
    TResult? Function(_GetAllInvoice value)? getAllInvoice,
    TResult? Function(_GetAllPayment value)? getAllPayment,
    TResult? Function(_VerifyPayment value)? verifyPayment,
    TResult? Function(_UpdatePricePercent value)? updatePricePercent,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateTypeOfCurrencyBank value)?
        updateTypeOfCurrencyBank,
    TResult? Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult? Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult? Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult? Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
  }) {
    return initializeTransactionEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TransferPayment value)? transferPayment,
    TResult Function(_CardPayment value)? cardPayment,
    TResult Function(_PostInvoice value)? postInvoice,
    TResult Function(_GetInvoice value)? getInvoice,
    TResult Function(_GetAllInvoice value)? getAllInvoice,
    TResult Function(_GetAllPayment value)? getAllPayment,
    TResult Function(_VerifyPayment value)? verifyPayment,
    TResult Function(_UpdatePricePercent value)? updatePricePercent,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateTypeOfCurrencyBank value)? updateTypeOfCurrencyBank,
    TResult Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
    required TResult orElse(),
  }) {
    if (initializeTransactionEvent != null) {
      return initializeTransactionEvent(this);
    }
    return orElse();
  }
}

abstract class _InitializeTransactionEvent implements PaymentEvent {
  const factory _InitializeTransactionEvent(
      final BuildContext context,
      final String value,
      final String amount,
      final Customer customer) = _$InitializeTransactionEventImpl;

  BuildContext get context;
  String get value;
  String get amount;
  Customer get customer;
  @JsonKey(ignore: true)
  _$$InitializeTransactionEventImplCopyWith<_$InitializeTransactionEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyTransactionEventImplCopyWith<$Res> {
  factory _$$VerifyTransactionEventImplCopyWith(
          _$VerifyTransactionEventImpl value,
          $Res Function(_$VerifyTransactionEventImpl) then) =
      __$$VerifyTransactionEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$VerifyTransactionEventImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$VerifyTransactionEventImpl>
    implements _$$VerifyTransactionEventImplCopyWith<$Res> {
  __$$VerifyTransactionEventImplCopyWithImpl(
      _$VerifyTransactionEventImpl _value,
      $Res Function(_$VerifyTransactionEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$VerifyTransactionEventImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyTransactionEventImpl implements _VerifyTransactionEvent {
  const _$VerifyTransactionEventImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'PaymentEvent.verifyTransactionEvent(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyTransactionEventImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyTransactionEventImplCopyWith<_$VerifyTransactionEventImpl>
      get copyWith => __$$VerifyTransactionEventImplCopyWithImpl<
          _$VerifyTransactionEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TransferPaymentDetailsEntity param)
        transferPayment,
    required TResult Function(CardPaymentDetailsEntity param) cardPayment,
    required TResult Function(PostInvoiceEntity param) postInvoice,
    required TResult Function(String identity) getInvoice,
    required TResult Function() getAllInvoice,
    required TResult Function() getAllPayment,
    required TResult Function(String transactionId) verifyPayment,
    required TResult Function(
            String value, double totalPrice, double percentage)
        updatePricePercent,
    required TResult Function(String value) updatePaymentMethod,
    required TResult Function(String value) updateTypeOfCurrencyBank,
    required TResult Function(String value) updateDollarAccount,
    required TResult Function(String value) updateNairaAccount,
    required TResult Function(BuildContext context, String value, String amount,
            Customer customer)
        initializeTransactionEvent,
    required TResult Function(String value) verifyTransactionEvent,
  }) {
    return verifyTransactionEvent(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult? Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult? Function(PostInvoiceEntity param)? postInvoice,
    TResult? Function(String identity)? getInvoice,
    TResult? Function()? getAllInvoice,
    TResult? Function()? getAllPayment,
    TResult? Function(String transactionId)? verifyPayment,
    TResult? Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult? Function(String value)? updatePaymentMethod,
    TResult? Function(String value)? updateTypeOfCurrencyBank,
    TResult? Function(String value)? updateDollarAccount,
    TResult? Function(String value)? updateNairaAccount,
    TResult? Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult? Function(String value)? verifyTransactionEvent,
  }) {
    return verifyTransactionEvent?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TransferPaymentDetailsEntity param)? transferPayment,
    TResult Function(CardPaymentDetailsEntity param)? cardPayment,
    TResult Function(PostInvoiceEntity param)? postInvoice,
    TResult Function(String identity)? getInvoice,
    TResult Function()? getAllInvoice,
    TResult Function()? getAllPayment,
    TResult Function(String transactionId)? verifyPayment,
    TResult Function(String value, double totalPrice, double percentage)?
        updatePricePercent,
    TResult Function(String value)? updatePaymentMethod,
    TResult Function(String value)? updateTypeOfCurrencyBank,
    TResult Function(String value)? updateDollarAccount,
    TResult Function(String value)? updateNairaAccount,
    TResult Function(BuildContext context, String value, String amount,
            Customer customer)?
        initializeTransactionEvent,
    TResult Function(String value)? verifyTransactionEvent,
    required TResult orElse(),
  }) {
    if (verifyTransactionEvent != null) {
      return verifyTransactionEvent(value);
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
    required TResult Function(_GetAllInvoice value) getAllInvoice,
    required TResult Function(_GetAllPayment value) getAllPayment,
    required TResult Function(_VerifyPayment value) verifyPayment,
    required TResult Function(_UpdatePricePercent value) updatePricePercent,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateTypeOfCurrencyBank value)
        updateTypeOfCurrencyBank,
    required TResult Function(_UpdateDollarAccount value) updateDollarAccount,
    required TResult Function(_UpdateNairaAccount value) updateNairaAccount,
    required TResult Function(_InitializeTransactionEvent value)
        initializeTransactionEvent,
    required TResult Function(_VerifyTransactionEvent value)
        verifyTransactionEvent,
  }) {
    return verifyTransactionEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TransferPayment value)? transferPayment,
    TResult? Function(_CardPayment value)? cardPayment,
    TResult? Function(_PostInvoice value)? postInvoice,
    TResult? Function(_GetInvoice value)? getInvoice,
    TResult? Function(_GetAllInvoice value)? getAllInvoice,
    TResult? Function(_GetAllPayment value)? getAllPayment,
    TResult? Function(_VerifyPayment value)? verifyPayment,
    TResult? Function(_UpdatePricePercent value)? updatePricePercent,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateTypeOfCurrencyBank value)?
        updateTypeOfCurrencyBank,
    TResult? Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult? Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult? Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult? Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
  }) {
    return verifyTransactionEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TransferPayment value)? transferPayment,
    TResult Function(_CardPayment value)? cardPayment,
    TResult Function(_PostInvoice value)? postInvoice,
    TResult Function(_GetInvoice value)? getInvoice,
    TResult Function(_GetAllInvoice value)? getAllInvoice,
    TResult Function(_GetAllPayment value)? getAllPayment,
    TResult Function(_VerifyPayment value)? verifyPayment,
    TResult Function(_UpdatePricePercent value)? updatePricePercent,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateTypeOfCurrencyBank value)? updateTypeOfCurrencyBank,
    TResult Function(_UpdateDollarAccount value)? updateDollarAccount,
    TResult Function(_UpdateNairaAccount value)? updateNairaAccount,
    TResult Function(_InitializeTransactionEvent value)?
        initializeTransactionEvent,
    TResult Function(_VerifyTransactionEvent value)? verifyTransactionEvent,
    required TResult orElse(),
  }) {
    if (verifyTransactionEvent != null) {
      return verifyTransactionEvent(this);
    }
    return orElse();
  }
}

abstract class _VerifyTransactionEvent implements PaymentEvent {
  const factory _VerifyTransactionEvent(final String value) =
      _$VerifyTransactionEventImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$VerifyTransactionEventImplCopyWith<_$VerifyTransactionEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentState {
  GetInvoiceEntity? get getInvoice => throw _privateConstructorUsedError;
  List<AllInvoiceEntity> get invoices => throw _privateConstructorUsedError;
  List<AllPaymentEntity> get payments => throw _privateConstructorUsedError;
  VerifyFlutterwavePaymentEntity? get verifyFlutterwavePaymentEntity =>
      throw _privateConstructorUsedError;
  String? get payingAll => throw _privateConstructorUsedError;
  String? get typeOfCurrencyBank => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String get dollarAccount => throw _privateConstructorUsedError;
  String get nairaAccount => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  double? get percentage => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  double? get balance => throw _privateConstructorUsedError;
  double? get selectedPercentage => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  PostInvoiceState get postInvoiceState => throw _privateConstructorUsedError;
  TransferPaymentState get transferPaymentState =>
      throw _privateConstructorUsedError;
  CardPaymentState get cardPaymentState => throw _privateConstructorUsedError;
  GetInvoiceState get getInvoiceState => throw _privateConstructorUsedError;
  GetAllInvoiceState get getAllInvoiceState =>
      throw _privateConstructorUsedError;
  GetAllPaymentState get getAllPaymentState =>
      throw _privateConstructorUsedError;
  FlutterWavePaymentState get flutterwavePaymentState =>
      throw _privateConstructorUsedError;
  List<String> get payingAllList => throw _privateConstructorUsedError;
  List<String> get typeOfCurrencyBankList => throw _privateConstructorUsedError;
  List<String> get paymentMethodList => throw _privateConstructorUsedError;
  List<String> get dollarAccountList => throw _privateConstructorUsedError;
  List<String> get nairaAccountList => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GetInvoiceEntity? getInvoice,
            List<AllInvoiceEntity> invoices,
            List<AllPaymentEntity> payments,
            VerifyFlutterwavePaymentEntity? verifyFlutterwavePaymentEntity,
            String? payingAll,
            String? typeOfCurrencyBank,
            String? errorMessage,
            String dollarAccount,
            String nairaAccount,
            double? price,
            double? percentage,
            double? amount,
            double? balance,
            double? selectedPercentage,
            String paymentMethod,
            PostInvoiceState postInvoiceState,
            TransferPaymentState transferPaymentState,
            CardPaymentState cardPaymentState,
            GetInvoiceState getInvoiceState,
            GetAllInvoiceState getAllInvoiceState,
            GetAllPaymentState getAllPaymentState,
            FlutterWavePaymentState flutterwavePaymentState,
            List<String> payingAllList,
            List<String> typeOfCurrencyBankList,
            List<String> paymentMethodList,
            List<String> dollarAccountList,
            List<String> nairaAccountList)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            GetInvoiceEntity? getInvoice,
            List<AllInvoiceEntity> invoices,
            List<AllPaymentEntity> payments,
            VerifyFlutterwavePaymentEntity? verifyFlutterwavePaymentEntity,
            String? payingAll,
            String? typeOfCurrencyBank,
            String? errorMessage,
            String dollarAccount,
            String nairaAccount,
            double? price,
            double? percentage,
            double? amount,
            double? balance,
            double? selectedPercentage,
            String paymentMethod,
            PostInvoiceState postInvoiceState,
            TransferPaymentState transferPaymentState,
            CardPaymentState cardPaymentState,
            GetInvoiceState getInvoiceState,
            GetAllInvoiceState getAllInvoiceState,
            GetAllPaymentState getAllPaymentState,
            FlutterWavePaymentState flutterwavePaymentState,
            List<String> payingAllList,
            List<String> typeOfCurrencyBankList,
            List<String> paymentMethodList,
            List<String> dollarAccountList,
            List<String> nairaAccountList)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GetInvoiceEntity? getInvoice,
            List<AllInvoiceEntity> invoices,
            List<AllPaymentEntity> payments,
            VerifyFlutterwavePaymentEntity? verifyFlutterwavePaymentEntity,
            String? payingAll,
            String? typeOfCurrencyBank,
            String? errorMessage,
            String dollarAccount,
            String nairaAccount,
            double? price,
            double? percentage,
            double? amount,
            double? balance,
            double? selectedPercentage,
            String paymentMethod,
            PostInvoiceState postInvoiceState,
            TransferPaymentState transferPaymentState,
            CardPaymentState cardPaymentState,
            GetInvoiceState getInvoiceState,
            GetAllInvoiceState getAllInvoiceState,
            GetAllPaymentState getAllPaymentState,
            FlutterWavePaymentState flutterwavePaymentState,
            List<String> payingAllList,
            List<String> typeOfCurrencyBankList,
            List<String> paymentMethodList,
            List<String> dollarAccountList,
            List<String> nairaAccountList)?
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
      List<AllInvoiceEntity> invoices,
      List<AllPaymentEntity> payments,
      VerifyFlutterwavePaymentEntity? verifyFlutterwavePaymentEntity,
      String? payingAll,
      String? typeOfCurrencyBank,
      String? errorMessage,
      String dollarAccount,
      String nairaAccount,
      double? price,
      double? percentage,
      double? amount,
      double? balance,
      double? selectedPercentage,
      String paymentMethod,
      PostInvoiceState postInvoiceState,
      TransferPaymentState transferPaymentState,
      CardPaymentState cardPaymentState,
      GetInvoiceState getInvoiceState,
      GetAllInvoiceState getAllInvoiceState,
      GetAllPaymentState getAllPaymentState,
      FlutterWavePaymentState flutterwavePaymentState,
      List<String> payingAllList,
      List<String> typeOfCurrencyBankList,
      List<String> paymentMethodList,
      List<String> dollarAccountList,
      List<String> nairaAccountList});
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
    Object? invoices = null,
    Object? payments = null,
    Object? verifyFlutterwavePaymentEntity = freezed,
    Object? payingAll = freezed,
    Object? typeOfCurrencyBank = freezed,
    Object? errorMessage = freezed,
    Object? dollarAccount = null,
    Object? nairaAccount = null,
    Object? price = freezed,
    Object? percentage = freezed,
    Object? amount = freezed,
    Object? balance = freezed,
    Object? selectedPercentage = freezed,
    Object? paymentMethod = null,
    Object? postInvoiceState = null,
    Object? transferPaymentState = null,
    Object? cardPaymentState = null,
    Object? getInvoiceState = null,
    Object? getAllInvoiceState = null,
    Object? getAllPaymentState = null,
    Object? flutterwavePaymentState = null,
    Object? payingAllList = null,
    Object? typeOfCurrencyBankList = null,
    Object? paymentMethodList = null,
    Object? dollarAccountList = null,
    Object? nairaAccountList = null,
  }) {
    return _then(_value.copyWith(
      getInvoice: freezed == getInvoice
          ? _value.getInvoice
          : getInvoice // ignore: cast_nullable_to_non_nullable
              as GetInvoiceEntity?,
      invoices: null == invoices
          ? _value.invoices
          : invoices // ignore: cast_nullable_to_non_nullable
              as List<AllInvoiceEntity>,
      payments: null == payments
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<AllPaymentEntity>,
      verifyFlutterwavePaymentEntity: freezed == verifyFlutterwavePaymentEntity
          ? _value.verifyFlutterwavePaymentEntity
          : verifyFlutterwavePaymentEntity // ignore: cast_nullable_to_non_nullable
              as VerifyFlutterwavePaymentEntity?,
      payingAll: freezed == payingAll
          ? _value.payingAll
          : payingAll // ignore: cast_nullable_to_non_nullable
              as String?,
      typeOfCurrencyBank: freezed == typeOfCurrencyBank
          ? _value.typeOfCurrencyBank
          : typeOfCurrencyBank // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      dollarAccount: null == dollarAccount
          ? _value.dollarAccount
          : dollarAccount // ignore: cast_nullable_to_non_nullable
              as String,
      nairaAccount: null == nairaAccount
          ? _value.nairaAccount
          : nairaAccount // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      selectedPercentage: freezed == selectedPercentage
          ? _value.selectedPercentage
          : selectedPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
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
      getAllInvoiceState: null == getAllInvoiceState
          ? _value.getAllInvoiceState
          : getAllInvoiceState // ignore: cast_nullable_to_non_nullable
              as GetAllInvoiceState,
      getAllPaymentState: null == getAllPaymentState
          ? _value.getAllPaymentState
          : getAllPaymentState // ignore: cast_nullable_to_non_nullable
              as GetAllPaymentState,
      flutterwavePaymentState: null == flutterwavePaymentState
          ? _value.flutterwavePaymentState
          : flutterwavePaymentState // ignore: cast_nullable_to_non_nullable
              as FlutterWavePaymentState,
      payingAllList: null == payingAllList
          ? _value.payingAllList
          : payingAllList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      typeOfCurrencyBankList: null == typeOfCurrencyBankList
          ? _value.typeOfCurrencyBankList
          : typeOfCurrencyBankList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      paymentMethodList: null == paymentMethodList
          ? _value.paymentMethodList
          : paymentMethodList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dollarAccountList: null == dollarAccountList
          ? _value.dollarAccountList
          : dollarAccountList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      nairaAccountList: null == nairaAccountList
          ? _value.nairaAccountList
          : nairaAccountList // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      List<AllInvoiceEntity> invoices,
      List<AllPaymentEntity> payments,
      VerifyFlutterwavePaymentEntity? verifyFlutterwavePaymentEntity,
      String? payingAll,
      String? typeOfCurrencyBank,
      String? errorMessage,
      String dollarAccount,
      String nairaAccount,
      double? price,
      double? percentage,
      double? amount,
      double? balance,
      double? selectedPercentage,
      String paymentMethod,
      PostInvoiceState postInvoiceState,
      TransferPaymentState transferPaymentState,
      CardPaymentState cardPaymentState,
      GetInvoiceState getInvoiceState,
      GetAllInvoiceState getAllInvoiceState,
      GetAllPaymentState getAllPaymentState,
      FlutterWavePaymentState flutterwavePaymentState,
      List<String> payingAllList,
      List<String> typeOfCurrencyBankList,
      List<String> paymentMethodList,
      List<String> dollarAccountList,
      List<String> nairaAccountList});
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
    Object? invoices = null,
    Object? payments = null,
    Object? verifyFlutterwavePaymentEntity = freezed,
    Object? payingAll = freezed,
    Object? typeOfCurrencyBank = freezed,
    Object? errorMessage = freezed,
    Object? dollarAccount = null,
    Object? nairaAccount = null,
    Object? price = freezed,
    Object? percentage = freezed,
    Object? amount = freezed,
    Object? balance = freezed,
    Object? selectedPercentage = freezed,
    Object? paymentMethod = null,
    Object? postInvoiceState = null,
    Object? transferPaymentState = null,
    Object? cardPaymentState = null,
    Object? getInvoiceState = null,
    Object? getAllInvoiceState = null,
    Object? getAllPaymentState = null,
    Object? flutterwavePaymentState = null,
    Object? payingAllList = null,
    Object? typeOfCurrencyBankList = null,
    Object? paymentMethodList = null,
    Object? dollarAccountList = null,
    Object? nairaAccountList = null,
  }) {
    return _then(_$InitialImpl(
      getInvoice: freezed == getInvoice
          ? _value.getInvoice
          : getInvoice // ignore: cast_nullable_to_non_nullable
              as GetInvoiceEntity?,
      invoices: null == invoices
          ? _value._invoices
          : invoices // ignore: cast_nullable_to_non_nullable
              as List<AllInvoiceEntity>,
      payments: null == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<AllPaymentEntity>,
      verifyFlutterwavePaymentEntity: freezed == verifyFlutterwavePaymentEntity
          ? _value.verifyFlutterwavePaymentEntity
          : verifyFlutterwavePaymentEntity // ignore: cast_nullable_to_non_nullable
              as VerifyFlutterwavePaymentEntity?,
      payingAll: freezed == payingAll
          ? _value.payingAll
          : payingAll // ignore: cast_nullable_to_non_nullable
              as String?,
      typeOfCurrencyBank: freezed == typeOfCurrencyBank
          ? _value.typeOfCurrencyBank
          : typeOfCurrencyBank // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      dollarAccount: null == dollarAccount
          ? _value.dollarAccount
          : dollarAccount // ignore: cast_nullable_to_non_nullable
              as String,
      nairaAccount: null == nairaAccount
          ? _value.nairaAccount
          : nairaAccount // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      selectedPercentage: freezed == selectedPercentage
          ? _value.selectedPercentage
          : selectedPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
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
      getAllInvoiceState: null == getAllInvoiceState
          ? _value.getAllInvoiceState
          : getAllInvoiceState // ignore: cast_nullable_to_non_nullable
              as GetAllInvoiceState,
      getAllPaymentState: null == getAllPaymentState
          ? _value.getAllPaymentState
          : getAllPaymentState // ignore: cast_nullable_to_non_nullable
              as GetAllPaymentState,
      flutterwavePaymentState: null == flutterwavePaymentState
          ? _value.flutterwavePaymentState
          : flutterwavePaymentState // ignore: cast_nullable_to_non_nullable
              as FlutterWavePaymentState,
      payingAllList: null == payingAllList
          ? _value._payingAllList
          : payingAllList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      typeOfCurrencyBankList: null == typeOfCurrencyBankList
          ? _value._typeOfCurrencyBankList
          : typeOfCurrencyBankList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      paymentMethodList: null == paymentMethodList
          ? _value._paymentMethodList
          : paymentMethodList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dollarAccountList: null == dollarAccountList
          ? _value._dollarAccountList
          : dollarAccountList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      nairaAccountList: null == nairaAccountList
          ? _value._nairaAccountList
          : nairaAccountList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.getInvoice,
      final List<AllInvoiceEntity> invoices = const [],
      final List<AllPaymentEntity> payments = const [],
      this.verifyFlutterwavePaymentEntity,
      this.payingAll,
      this.typeOfCurrencyBank,
      this.errorMessage,
      this.dollarAccount = '--Select--',
      this.nairaAccount = '--Select--',
      this.price,
      this.percentage,
      this.amount,
      this.balance,
      this.selectedPercentage,
      this.paymentMethod = '--Select--',
      this.postInvoiceState = PostInvoiceState.idle,
      this.transferPaymentState = TransferPaymentState.idle,
      this.cardPaymentState = CardPaymentState.idle,
      this.getInvoiceState = GetInvoiceState.idle,
      this.getAllInvoiceState = GetAllInvoiceState.idle,
      this.getAllPaymentState = GetAllPaymentState.idle,
      this.flutterwavePaymentState = FlutterWavePaymentState.idle,
      final List<String> payingAllList = const ["75", "100"],
      final List<String> typeOfCurrencyBankList = const [
        "Naira Accounts",
        "Dollar Accounts"
      ],
      final List<String> paymentMethodList = const [
        "--Select--",
        "Pay With Card",
        "Bank Transfer"
      ],
      final List<String> dollarAccountList = const [
        "--Select--",
        "ACCESS Bank",
        "SWISS Bank"
      ],
      final List<String> nairaAccountList = const [
        "--Select--",
        "ABC Bank",
        "DEFA Bank"
      ]})
      : _invoices = invoices,
        _payments = payments,
        _payingAllList = payingAllList,
        _typeOfCurrencyBankList = typeOfCurrencyBankList,
        _paymentMethodList = paymentMethodList,
        _dollarAccountList = dollarAccountList,
        _nairaAccountList = nairaAccountList;

  @override
  final GetInvoiceEntity? getInvoice;
  final List<AllInvoiceEntity> _invoices;
  @override
  @JsonKey()
  List<AllInvoiceEntity> get invoices {
    if (_invoices is EqualUnmodifiableListView) return _invoices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_invoices);
  }

  final List<AllPaymentEntity> _payments;
  @override
  @JsonKey()
  List<AllPaymentEntity> get payments {
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payments);
  }

  @override
  final VerifyFlutterwavePaymentEntity? verifyFlutterwavePaymentEntity;
  @override
  final String? payingAll;
  @override
  final String? typeOfCurrencyBank;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final String dollarAccount;
  @override
  @JsonKey()
  final String nairaAccount;
  @override
  final double? price;
  @override
  final double? percentage;
  @override
  final double? amount;
  @override
  final double? balance;
  @override
  final double? selectedPercentage;
  @override
  @JsonKey()
  final String paymentMethod;
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
  @JsonKey()
  final GetAllInvoiceState getAllInvoiceState;
  @override
  @JsonKey()
  final GetAllPaymentState getAllPaymentState;
  @override
  @JsonKey()
  final FlutterWavePaymentState flutterwavePaymentState;
  final List<String> _payingAllList;
  @override
  @JsonKey()
  List<String> get payingAllList {
    if (_payingAllList is EqualUnmodifiableListView) return _payingAllList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payingAllList);
  }

  final List<String> _typeOfCurrencyBankList;
  @override
  @JsonKey()
  List<String> get typeOfCurrencyBankList {
    if (_typeOfCurrencyBankList is EqualUnmodifiableListView)
      return _typeOfCurrencyBankList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_typeOfCurrencyBankList);
  }

  final List<String> _paymentMethodList;
  @override
  @JsonKey()
  List<String> get paymentMethodList {
    if (_paymentMethodList is EqualUnmodifiableListView)
      return _paymentMethodList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentMethodList);
  }

  final List<String> _dollarAccountList;
  @override
  @JsonKey()
  List<String> get dollarAccountList {
    if (_dollarAccountList is EqualUnmodifiableListView)
      return _dollarAccountList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dollarAccountList);
  }

  final List<String> _nairaAccountList;
  @override
  @JsonKey()
  List<String> get nairaAccountList {
    if (_nairaAccountList is EqualUnmodifiableListView)
      return _nairaAccountList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nairaAccountList);
  }

  @override
  String toString() {
    return 'PaymentState.initial(getInvoice: $getInvoice, invoices: $invoices, payments: $payments, verifyFlutterwavePaymentEntity: $verifyFlutterwavePaymentEntity, payingAll: $payingAll, typeOfCurrencyBank: $typeOfCurrencyBank, errorMessage: $errorMessage, dollarAccount: $dollarAccount, nairaAccount: $nairaAccount, price: $price, percentage: $percentage, amount: $amount, balance: $balance, selectedPercentage: $selectedPercentage, paymentMethod: $paymentMethod, postInvoiceState: $postInvoiceState, transferPaymentState: $transferPaymentState, cardPaymentState: $cardPaymentState, getInvoiceState: $getInvoiceState, getAllInvoiceState: $getAllInvoiceState, getAllPaymentState: $getAllPaymentState, flutterwavePaymentState: $flutterwavePaymentState, payingAllList: $payingAllList, typeOfCurrencyBankList: $typeOfCurrencyBankList, paymentMethodList: $paymentMethodList, dollarAccountList: $dollarAccountList, nairaAccountList: $nairaAccountList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.getInvoice, getInvoice) ||
                other.getInvoice == getInvoice) &&
            const DeepCollectionEquality().equals(other._invoices, _invoices) &&
            const DeepCollectionEquality().equals(other._payments, _payments) &&
            (identical(other.verifyFlutterwavePaymentEntity,
                    verifyFlutterwavePaymentEntity) ||
                other.verifyFlutterwavePaymentEntity ==
                    verifyFlutterwavePaymentEntity) &&
            (identical(other.payingAll, payingAll) ||
                other.payingAll == payingAll) &&
            (identical(other.typeOfCurrencyBank, typeOfCurrencyBank) ||
                other.typeOfCurrencyBank == typeOfCurrencyBank) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.dollarAccount, dollarAccount) ||
                other.dollarAccount == dollarAccount) &&
            (identical(other.nairaAccount, nairaAccount) ||
                other.nairaAccount == nairaAccount) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.selectedPercentage, selectedPercentage) ||
                other.selectedPercentage == selectedPercentage) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.postInvoiceState, postInvoiceState) ||
                other.postInvoiceState == postInvoiceState) &&
            (identical(other.transferPaymentState, transferPaymentState) ||
                other.transferPaymentState == transferPaymentState) &&
            (identical(other.cardPaymentState, cardPaymentState) ||
                other.cardPaymentState == cardPaymentState) &&
            (identical(other.getInvoiceState, getInvoiceState) ||
                other.getInvoiceState == getInvoiceState) &&
            (identical(other.getAllInvoiceState, getAllInvoiceState) ||
                other.getAllInvoiceState == getAllInvoiceState) &&
            (identical(other.getAllPaymentState, getAllPaymentState) ||
                other.getAllPaymentState == getAllPaymentState) &&
            (identical(
                    other.flutterwavePaymentState, flutterwavePaymentState) ||
                other.flutterwavePaymentState == flutterwavePaymentState) &&
            const DeepCollectionEquality()
                .equals(other._payingAllList, _payingAllList) &&
            const DeepCollectionEquality().equals(
                other._typeOfCurrencyBankList, _typeOfCurrencyBankList) &&
            const DeepCollectionEquality()
                .equals(other._paymentMethodList, _paymentMethodList) &&
            const DeepCollectionEquality()
                .equals(other._dollarAccountList, _dollarAccountList) &&
            const DeepCollectionEquality()
                .equals(other._nairaAccountList, _nairaAccountList));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        getInvoice,
        const DeepCollectionEquality().hash(_invoices),
        const DeepCollectionEquality().hash(_payments),
        verifyFlutterwavePaymentEntity,
        payingAll,
        typeOfCurrencyBank,
        errorMessage,
        dollarAccount,
        nairaAccount,
        price,
        percentage,
        amount,
        balance,
        selectedPercentage,
        paymentMethod,
        postInvoiceState,
        transferPaymentState,
        cardPaymentState,
        getInvoiceState,
        getAllInvoiceState,
        getAllPaymentState,
        flutterwavePaymentState,
        const DeepCollectionEquality().hash(_payingAllList),
        const DeepCollectionEquality().hash(_typeOfCurrencyBankList),
        const DeepCollectionEquality().hash(_paymentMethodList),
        const DeepCollectionEquality().hash(_dollarAccountList),
        const DeepCollectionEquality().hash(_nairaAccountList)
      ]);

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
            List<AllInvoiceEntity> invoices,
            List<AllPaymentEntity> payments,
            VerifyFlutterwavePaymentEntity? verifyFlutterwavePaymentEntity,
            String? payingAll,
            String? typeOfCurrencyBank,
            String? errorMessage,
            String dollarAccount,
            String nairaAccount,
            double? price,
            double? percentage,
            double? amount,
            double? balance,
            double? selectedPercentage,
            String paymentMethod,
            PostInvoiceState postInvoiceState,
            TransferPaymentState transferPaymentState,
            CardPaymentState cardPaymentState,
            GetInvoiceState getInvoiceState,
            GetAllInvoiceState getAllInvoiceState,
            GetAllPaymentState getAllPaymentState,
            FlutterWavePaymentState flutterwavePaymentState,
            List<String> payingAllList,
            List<String> typeOfCurrencyBankList,
            List<String> paymentMethodList,
            List<String> dollarAccountList,
            List<String> nairaAccountList)
        initial,
  }) {
    return initial(
        getInvoice,
        invoices,
        payments,
        verifyFlutterwavePaymentEntity,
        payingAll,
        typeOfCurrencyBank,
        errorMessage,
        dollarAccount,
        nairaAccount,
        price,
        percentage,
        amount,
        balance,
        selectedPercentage,
        paymentMethod,
        postInvoiceState,
        transferPaymentState,
        cardPaymentState,
        getInvoiceState,
        getAllInvoiceState,
        getAllPaymentState,
        flutterwavePaymentState,
        payingAllList,
        typeOfCurrencyBankList,
        paymentMethodList,
        dollarAccountList,
        nairaAccountList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            GetInvoiceEntity? getInvoice,
            List<AllInvoiceEntity> invoices,
            List<AllPaymentEntity> payments,
            VerifyFlutterwavePaymentEntity? verifyFlutterwavePaymentEntity,
            String? payingAll,
            String? typeOfCurrencyBank,
            String? errorMessage,
            String dollarAccount,
            String nairaAccount,
            double? price,
            double? percentage,
            double? amount,
            double? balance,
            double? selectedPercentage,
            String paymentMethod,
            PostInvoiceState postInvoiceState,
            TransferPaymentState transferPaymentState,
            CardPaymentState cardPaymentState,
            GetInvoiceState getInvoiceState,
            GetAllInvoiceState getAllInvoiceState,
            GetAllPaymentState getAllPaymentState,
            FlutterWavePaymentState flutterwavePaymentState,
            List<String> payingAllList,
            List<String> typeOfCurrencyBankList,
            List<String> paymentMethodList,
            List<String> dollarAccountList,
            List<String> nairaAccountList)?
        initial,
  }) {
    return initial?.call(
        getInvoice,
        invoices,
        payments,
        verifyFlutterwavePaymentEntity,
        payingAll,
        typeOfCurrencyBank,
        errorMessage,
        dollarAccount,
        nairaAccount,
        price,
        percentage,
        amount,
        balance,
        selectedPercentage,
        paymentMethod,
        postInvoiceState,
        transferPaymentState,
        cardPaymentState,
        getInvoiceState,
        getAllInvoiceState,
        getAllPaymentState,
        flutterwavePaymentState,
        payingAllList,
        typeOfCurrencyBankList,
        paymentMethodList,
        dollarAccountList,
        nairaAccountList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GetInvoiceEntity? getInvoice,
            List<AllInvoiceEntity> invoices,
            List<AllPaymentEntity> payments,
            VerifyFlutterwavePaymentEntity? verifyFlutterwavePaymentEntity,
            String? payingAll,
            String? typeOfCurrencyBank,
            String? errorMessage,
            String dollarAccount,
            String nairaAccount,
            double? price,
            double? percentage,
            double? amount,
            double? balance,
            double? selectedPercentage,
            String paymentMethod,
            PostInvoiceState postInvoiceState,
            TransferPaymentState transferPaymentState,
            CardPaymentState cardPaymentState,
            GetInvoiceState getInvoiceState,
            GetAllInvoiceState getAllInvoiceState,
            GetAllPaymentState getAllPaymentState,
            FlutterWavePaymentState flutterwavePaymentState,
            List<String> payingAllList,
            List<String> typeOfCurrencyBankList,
            List<String> paymentMethodList,
            List<String> dollarAccountList,
            List<String> nairaAccountList)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          getInvoice,
          invoices,
          payments,
          verifyFlutterwavePaymentEntity,
          payingAll,
          typeOfCurrencyBank,
          errorMessage,
          dollarAccount,
          nairaAccount,
          price,
          percentage,
          amount,
          balance,
          selectedPercentage,
          paymentMethod,
          postInvoiceState,
          transferPaymentState,
          cardPaymentState,
          getInvoiceState,
          getAllInvoiceState,
          getAllPaymentState,
          flutterwavePaymentState,
          payingAllList,
          typeOfCurrencyBankList,
          paymentMethodList,
          dollarAccountList,
          nairaAccountList);
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
      final List<AllInvoiceEntity> invoices,
      final List<AllPaymentEntity> payments,
      final VerifyFlutterwavePaymentEntity? verifyFlutterwavePaymentEntity,
      final String? payingAll,
      final String? typeOfCurrencyBank,
      final String? errorMessage,
      final String dollarAccount,
      final String nairaAccount,
      final double? price,
      final double? percentage,
      final double? amount,
      final double? balance,
      final double? selectedPercentage,
      final String paymentMethod,
      final PostInvoiceState postInvoiceState,
      final TransferPaymentState transferPaymentState,
      final CardPaymentState cardPaymentState,
      final GetInvoiceState getInvoiceState,
      final GetAllInvoiceState getAllInvoiceState,
      final GetAllPaymentState getAllPaymentState,
      final FlutterWavePaymentState flutterwavePaymentState,
      final List<String> payingAllList,
      final List<String> typeOfCurrencyBankList,
      final List<String> paymentMethodList,
      final List<String> dollarAccountList,
      final List<String> nairaAccountList}) = _$InitialImpl;

  @override
  GetInvoiceEntity? get getInvoice;
  @override
  List<AllInvoiceEntity> get invoices;
  @override
  List<AllPaymentEntity> get payments;
  @override
  VerifyFlutterwavePaymentEntity? get verifyFlutterwavePaymentEntity;
  @override
  String? get payingAll;
  @override
  String? get typeOfCurrencyBank;
  @override
  String? get errorMessage;
  @override
  String get dollarAccount;
  @override
  String get nairaAccount;
  @override
  double? get price;
  @override
  double? get percentage;
  @override
  double? get amount;
  @override
  double? get balance;
  @override
  double? get selectedPercentage;
  @override
  String get paymentMethod;
  @override
  PostInvoiceState get postInvoiceState;
  @override
  TransferPaymentState get transferPaymentState;
  @override
  CardPaymentState get cardPaymentState;
  @override
  GetInvoiceState get getInvoiceState;
  @override
  GetAllInvoiceState get getAllInvoiceState;
  @override
  GetAllPaymentState get getAllPaymentState;
  @override
  FlutterWavePaymentState get flutterwavePaymentState;
  @override
  List<String> get payingAllList;
  @override
  List<String> get typeOfCurrencyBankList;
  @override
  List<String> get paymentMethodList;
  @override
  List<String> get dollarAccountList;
  @override
  List<String> get nairaAccountList;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
