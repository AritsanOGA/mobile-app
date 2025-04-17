import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/features/payment/presentation/bloc/payment_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ViewhierarchyItemWidget extends StatefulWidget {
  final String identity;
  final String planName;
  final String planPrices;

  ViewhierarchyItemWidget({
    required this.identity,
    required this.planName,
    required this.planPrices,
  });

  @override
  _ViewhierarchyItemWidgetState createState() =>
      _ViewhierarchyItemWidgetState();
}

class _ViewhierarchyItemWidgetState extends State<ViewhierarchyItemWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentBloc, PaymentState>(
      bloc: context.read<PaymentBloc>()
        ..add(PaymentEvent.getNoOfCandidate(widget.identity)),
      builder: (context, state) {
        return Stack(
          clipBehavior: Clip.none,
          children: [
            Material(
              elevation: 3,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 3.h,
                  vertical: 15.v,
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 2, color: Colors.grey.withOpacity(0.3)),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15.v),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Per Position ",
                        style: CustomTextStyles.labelLargePrimaryContainer13,
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "₦" + widget.planPrices.toString(),
                        style: CustomTextStyles.titleSmallSecondaryContainer,
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Row(
                      children: [
                        SvgPicture.asset(
                          ImageConstant.imgLetsIconsCheckFill,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 3.h,
                            top: 4.v,
                          ),
                          child: Text(
                            "Job Posting",
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 13.v),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            ImageConstant.imgLetsIconsCheckFill,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 4.h,
                              top: 3.v,
                            ),
                            child: Text(
                              widget.planName == 'Silver'
                                  ? "2-3 Verified Candidates"
                                  : widget.planName == 'Gold'
                                      ? "2-4 Verified Candidates"
                                      : "2-5 Verified Candidates",
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 13.v),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            widget.planName == 'Platinum'
                                ? ImageConstant.imgIcRoundCancel
                                : ImageConstant.imgLetsIconsCheckFill,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 4.h,
                              top: 3.v,
                            ),
                            child: Text(
                              "Soft Skill Training",
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            widget.planName == 'Platinum'
                                ? ImageConstant.imgIcRoundCancel
                                : ImageConstant.imgLetsIconsCheckFill,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 4.h,
                              top: 3.v,
                            ),
                            child: Text(
                              widget.planName == 'Silver'
                                  ? "1 Replacement warranty\n(1st 3 months)"
                                  : widget.planName == 'Gold'
                                      ? "2 Replacements warranty\n(1st 6 months)"
                                      : "3 Replacements warranty\n(1st 12 months)",
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            widget.planName == 'Platinum'
                                ? ImageConstant.imgIcRoundCancel
                                : ImageConstant.imgLetsIconsCheckFill,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 4.h,
                              top: 3.v,
                            ),
                            child: Text(
                              "Dedicated Support",
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15.v),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          final String candidate =
                              state.noOfCandidateEntity?.candidate ?? '';
                          Navigator.pushNamed(
                            context,
                            AppRoutes.createInvoicePage,
                            arguments: {
                              'identity': widget.identity,
                              "planName": widget.planName,
                              "amount": widget.planPrices,
                              'candidate': candidate
                            },
                          );
                        },
                        child: Container(
                          height: 40.h,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: theme.colorScheme.primary.withOpacity(0.8),
                          ),
                          child: Center(
                              child: Text(
                            'Select',
                            style: CustomTextStyles.titleMediumGray50_1,
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: -15,
              left: 20,
              right: 20,
              child: Container(
                height: 40.h,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: theme.colorScheme.primary.withOpacity(0.8),
                ),
                child: Center(
                    child: Text(
                  widget.planName.toString(),
                  style: CustomTextStyles.titleMediumGray50_1,
                )),
              ),
            ),
          ],
        );
      },
    );
  }
}
