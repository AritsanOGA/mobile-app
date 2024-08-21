import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'widgets/viewhierarchy_item_widget.dart';

class PaymentPageScreen extends StatelessWidget {
  const PaymentPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 12.v),
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 26.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(right: 106.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgArrowLeftOnprimary,
                                    height: 16.adaptSize,
                                    width: 16.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 2.v, bottom: 6.v),
                                    onTap: () {
                                      onTapImgArrowLeft(context);
                                    }),
                                Padding(
                                    padding: EdgeInsets.only(left: 91.h),
                                    child: Text("Affordable Pricing",
                                        style: theme.textTheme.titleLarge))
                              ]))),
                  SizedBox(height: 17.v),
                  Container(
                      width: 290.h,
                      margin: EdgeInsets.only(left: 48.h, right: 47.h),
                      child: Text("Select your preferred package",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyMedium)),
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
    var planNames = ["Free", "Silver", "Gold", "Platinum"];

    var planPrices = ["0.00", "25,000", "35,000", "50,000"];
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
              return ViewhierarchyItemWidget(
                  planName: planNames[index].toString(),
                  planPrices: planPrices[index].toString());
            }));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
