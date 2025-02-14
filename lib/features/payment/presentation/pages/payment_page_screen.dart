import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import '../widgets/viewhierarchy_item_widget.dart';

class PaymentPageScreen extends StatelessWidget {
  final String identity;
  const PaymentPageScreen({Key? key, required this.identity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.kwhite,
            appBar: CustomAppBar(
              title: 'Affordable Pricing',
            ),
            body: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 12.v),
                child: SingleChildScrollView(
                    child: Column(children: [
                  Text(
                      "Select from our flexible plans to suit your requirements",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium),
                  SizedBox(height: 22.v),
                  _buildViewHierarchy(context),
                  SizedBox(height: 87.v),
                  SizedBox(
                      width: 130.h,
                      child: Divider(
                          color: theme.colorScheme.primaryContainer
                              .withOpacity(1)))
                ])))));
  }

  /// Section Widget
  Widget _buildViewHierarchy(BuildContext context) {
    var planNames = ["Silver", "Gold", "Platinum"];

    var planPrices = ["25,000", "35,000", "50,000"];
    return Padding(
        padding: EdgeInsets.only(left: 3.h, right: 2.h),
        child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 320.v,
                crossAxisCount: 2,
                mainAxisSpacing: 20.h,
                crossAxisSpacing: 20.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount: planNames.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(
                  //   context,
                  //   AppRoutes.invoicePage,
                  // );
                  Navigator.pushNamed(
                    context,
                    AppRoutes.createInvoicePage,
                    arguments: {
                      'identity': identity,
                      "planName": planNames[index],
                      "amount": planPrices[index]
                    },
                  );
                },
                child: ViewhierarchyItemWidget(
                    planName: planNames[index].toString(),
                    planPrices: planPrices[index].toString()),
              );
            }));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
