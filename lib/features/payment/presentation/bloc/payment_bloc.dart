import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/payment/domain/entities/card_payment_details_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/get_invoice_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/post_invoice_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/transfer_payment_details_entity.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc() : super(_Initial()) {
    on<PaymentEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
