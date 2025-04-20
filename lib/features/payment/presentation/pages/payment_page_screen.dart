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
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                ),
                child: SingleChildScrollView(
                    child: Column(children: [
                  Text(
                      "Select from our flexible plans to suit your requirements",
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium),
                  SizedBox(height: 22.h),
                  _buildViewHierarchy(context),
                  SizedBox(height: 40.h),
                ])))));
  }

  Widget _buildViewHierarchy(BuildContext context) {
    var planNames = ["Silver", "Gold", "Platinum"];

    var planPrices = ["35,000", "50,000", "80,000"];
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 330.h,
            crossAxisCount: 2,
            mainAxisSpacing: 30.h,
            crossAxisSpacing: 15.h),
        physics: NeverScrollableScrollPhysics(),
        itemCount: planNames.length,
        itemBuilder: (context, index) {
          return ViewhierarchyItemWidget(
              identity: identity,
              planName: planNames[index].toString(),
              planPrices: planPrices[index].toString());
        });
  }
}
