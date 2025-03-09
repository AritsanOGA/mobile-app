import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/payment/presentation/bloc/payment_bloc.dart';
import 'package:artisan_oga/features/payment/presentation/widgets/account_details_dialog.dart';
import 'package:artisan_oga/features/payment/presentation/widgets/separtor_widget.dart';
import 'package:artisan_oga/features/settings/presentation/bloc/setting_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';

class InvoiceScreen extends HookWidget {
  const InvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.read<SettingBloc>().add(SettingEvent.getEmployerProfile());
      return null;
    }, []);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kwhite,
        appBar: CustomAppBar(
          title: 'Invoice',
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.v),
                Center(
                  child: Text("Kindly Create an Invoice to Initiate Payment",
                      style: theme.textTheme.bodyMedium),
                ),
                SizedBox(height: 20.v),
                BlocBuilder<PaymentBloc, PaymentState>(
                  bloc: context.read<PaymentBloc>()
                    ..add(PaymentEvent.getInvoice()),
                  builder: (context, state) {
                    // if (state.getInvoiceState == GetInvoiceState.loading) {
                    //   return Center(child: CircularProgressIndicator());
                    // }

                    if (state.getInvoiceState == GetJobSeekerJobState.failure) {
                      return Center(child: Text('Error: '));
                    }

                    return Column(
                      children: [
                        Material(
                          elevation: 3,
                          child: Container(
                            height: 500.h,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: theme.primaryColor, width: 2)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 20.h,
                                ),
                                Container(
                                  height: 20.h,
                                  color: theme.primaryColor,
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                          ImageConstant.artisanSmallLogo),
                                      Text(DateFormat("dd MMM, yyyy").format(
                                          state.getInvoice?.createdAt ??
                                              DateTime.now()))
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5.v),
                                MySeparator(color: theme.primaryColor),
                                SizedBox(height: 10.v),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text('Invoice No',
                                      style: theme.textTheme.bodyMedium),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                      state.getInvoice?.invoiceNumber
                                              .toString() ??
                                          '',
                                      style: theme.textTheme.bodyMedium
                                          ?.copyWith(
                                              fontWeight: FontWeight.w600)),
                                ),
                                Center(
                                    child: Text('Invoice',
                                        style: theme.textTheme.bodyMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                color: theme.primaryColor))),
                                SizedBox(height: 10.v),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Billed to:',
                                          style: theme.textTheme.bodyMedium),
                                      Text('Status',
                                          style: theme.textTheme.bodyMedium)
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              '${state.getInvoice?.users.fullName ?? ''}',
                                              style: theme.textTheme.bodyMedium
                                                  ?.copyWith(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18)),
                                          Text(
                                              '${state.getInvoice?.users.email ?? ''}',
                                              style: theme.textTheme.bodyMedium)
                                        ],
                                      ),
                                      Container(
                                        height: 30.h,
                                        width: 70.h,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.red),
                                        child: Center(
                                            child: Text('Unpaid',
                                                style: theme
                                                    .textTheme.bodyMedium
                                                    ?.copyWith(
                                                        fontSize: 10,
                                                        color:
                                                            AppColors.kwhite))),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 15.v),
                                Container(
                                    width: double.infinity,
                                    height: 30.h,
                                    color: Colors.grey.withOpacity(0.50),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Center(
                                          child: Text('Description',
                                              style: theme.textTheme.bodyMedium
                                                  ?.copyWith(
                                                      fontWeight:
                                                          FontWeight.w600))),
                                    )),
                                SizedBox(height: 20.v),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                          'Initial Payment (${state.getInvoice?.percentage ?? ''}%)',
                                          style: theme.textTheme.bodyMedium
                                              ?.copyWith(
                                                  fontWeight: FontWeight.w600)),
                                      Text(
                                          '₦ ${NumberFormat("#,##0.00", "en_US").format(double.tryParse(state.getInvoice?.amountWithVat ?? ''))}',
                                          style: theme.textTheme.bodyMedium
                                              ?.copyWith(
                                                  fontWeight: FontWeight.w700)),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10.v),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Balance',
                                          style: theme.textTheme.bodyMedium
                                              ?.copyWith(
                                                  fontWeight: FontWeight.w600)),
                                      Text(
                                          '₦ ${NumberFormat("#,##0.00", "en_US").format(double.tryParse(state.getInvoice?.balWithVat ?? ''))}',
                                          style: theme.textTheme.bodyMedium
                                              ?.copyWith(
                                                  fontWeight: FontWeight.w700)),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10.v),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('VAT Tax (7.5%)',
                                          style: theme.textTheme.bodyMedium
                                              ?.copyWith(
                                                  fontWeight: FontWeight.w600)),
                                      Text(
                                          '₦ ${NumberFormat("#,##0.00", "en_US").format(double.tryParse(state.getInvoice?.vat ?? ''))}',
                                          style: theme.textTheme.bodyMedium
                                              ?.copyWith(
                                                  fontWeight: FontWeight.w700)),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 30.v),
                                Container(
                                    height: 30.h,
                                    color: Colors.grey.withOpacity(0.50),
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Sub Total',
                                            style: theme.textTheme.bodyMedium
                                                ?.copyWith(
                                                    fontWeight:
                                                        FontWeight.w600)),
                                        Text(
                                            '₦ ${NumberFormat("#,##0.00", "en_US").format(double.tryParse(state.getInvoice?.totalWithVat ?? ''))}',
                                            style: theme.textTheme.bodyMedium
                                                ?.copyWith(
                                                    fontWeight:
                                                        FontWeight.w700))
                                      ],
                                    )),
                                SizedBox(height: 30.v),
                                Container(
                                  height: 30.h,
                                  color: theme.primaryColor,
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                          'For enquiries and complaints, kindly visit',
                                          style: theme.textTheme.bodyMedium
                                              ?.copyWith(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500)),
                                      Text('hr@artisanoga.com',
                                          style: theme.textTheme.bodyMedium
                                              ?.copyWith(
                                                  color: AppColors.kwhite,
                                                  fontSize: 10))
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5.v),
                                MySeparator(color: theme.primaryColor),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Amount to Pay ",
                                  style: CustomTextStyles.titleSmallff3a332c_1),
                              TextSpan(text: " "),
                              TextSpan(
                                  text:
                                      '₦ ${NumberFormat("#,##0.00", "en_US").format(double.tryParse(state.getInvoice?.totalWithVat ?? ''))}',
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15))
                            ]),
                            textAlign: TextAlign.left),
                        SizedBox(
                          height: 30.h,
                        ),
                        CustomDropDown<String>(
                          title: "Payment Method",
                          items: state.paymentMethodList,
                          selectedItem: state.paymentMethod ?? '',
                          itemLabel: (history) => history,
                          onChanged: (value) {
                            context.read<PaymentBloc>().add(
                                  PaymentEvent.updatePaymentMethod(value ?? ''),
                                );
                          },
                        ),
                        state.paymentMethod == 'Bank Transfer'
                            ? Column(
                                children: [
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(right: 74.h),
                                          child: CustomRadioButton(
                                              text: "Naira Accounts",
                                              value: state
                                                  .typeOfCurrencyBankList[0],
                                              groupValue:
                                                  state.typeOfCurrencyBank,
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 1.v),
                                              onChange: (value) {
                                                context.read<PaymentBloc>().add(
                                                      PaymentEvent
                                                          .updateTypeOfCurrencyBank(
                                                        value,
                                                      ),
                                                    );
                                              })),
                                      CustomRadioButton(
                                          text: "Dollar Acounts",
                                          value:
                                              state.typeOfCurrencyBankList[1],
                                          groupValue: state.typeOfCurrencyBank,
                                          padding: EdgeInsets.symmetric(
                                              vertical: 1.v),
                                          onChange: (value) {
                                            context.read<PaymentBloc>().add(
                                                  PaymentEvent
                                                      .updateTypeOfCurrencyBank(
                                                    value,
                                                  ),
                                                );
                                          }),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  state.typeOfCurrencyBank == 'Naira Accounts'
                                      ? CustomDropDown<String>(
                                          title: "Naira Account",
                                          items: state.nairaAccountList,
                                          selectedItem: state.nairaAccount,
                                          itemLabel: (history) => history,
                                          onChanged: (value) {
                                            context.read<PaymentBloc>().add(
                                                  PaymentEvent
                                                      .updateNairaAccount(
                                                          value ?? ''),
                                                );
                                            print('ssss ${value}');
                                          },
                                        )
                                      : SizedBox(),
                                  state.typeOfCurrencyBank == 'Dollar Accounts'
                                      ? CustomDropDown<String>(
                                          title: "Dollar Account",
                                          items: state.dollarAccountList,
                                          selectedItem: state.dollarAccount,
                                          itemLabel: (history) => history,
                                          onChanged: (value) {
                                            context.read<PaymentBloc>().add(
                                                  PaymentEvent
                                                      .updateDollarAccount(
                                                          value ?? ''),
                                                );
                                            print('dolla ${value}');
                                          },
                                        )
                                      : SizedBox()
                                ],
                              )
                            : SizedBox(),
                        SizedBox(
                          height: 30.h,
                        ),
                        CustomElevatedButton(
                            // isBusy: state.flutterwavePaymentState ==
                            //     FlutterWavePaymentState.loading,
                            text: 'Submit',
                            onPressed: () {
                              print('emi ${state.dollarAccount}');
                              // context.read<PaymentBloc>().add(
                              //     PaymentEvent.initializeTransactionEvent(
                              //         context,
                              //         '',
                              //         state.getInvoice?.amountWithVat ?? '',
                              //         Customer(
                              //             name:
                              //                 '${UserService().authData?.user.fullName?.split(" ")[0] ?? ''}',
                              //             phoneNumber:
                              //                 '${UserService().authData?.user.phoneNumber}',
                              //             email: 'samj@gmail.com')));
                              String bankName =
                                  state.typeOfCurrencyBank == 'Naira Accounts'
                                      ? state.nairaAccount
                                      : state.dollarAccount;
                              print(' ${state.typeOfCurrencyBank}');
                              print('mybank ${bankName}');
                              accountDetailsDialg(
                                  context,
                                  state.getInvoice?.identity ?? '',
                                  state.getInvoice?.totalWithVat ?? '',
                                  state.typeOfCurrencyBank ?? '',
                                  bankName);
                            }),
                        SizedBox(
                          height: 30.h,
                        ),
                      ],
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
