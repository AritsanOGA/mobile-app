import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
//import 'package:flutterwave_standard/flutterwave.dart';
import 'package:hive/hive.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../core/services/employers.dart';
import '../../../home/presentation/pages/employer_dashboard_page.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatefulWidget {
  // You can pass any required parameters here
  final String? planName;
  final String? planPrices;

  ViewhierarchyItemWidget({
    this.planName,
    this.planPrices,
  });

  @override
  _ViewhierarchyItemWidgetState createState() =>
      _ViewhierarchyItemWidgetState();
}

class _ViewhierarchyItemWidgetState extends State<ViewhierarchyItemWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 390.v,
      width: 180.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 6.h,
                vertical: 15.v,
              ),
              decoration: AppDecoration.outlineBlack9001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15.v),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Per Position",
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
                          ImageConstant.imgIcRoundCancel,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            top: 3.v,
                          ),
                          child: Text(
                            "2-3 Verified Candidates",
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
                          ImageConstant.imgIcRoundCancel,
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
                          ImageConstant.imgIcRoundCancel,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            top: 3.v,
                          ),
                          child: Text(
                            "Replacement warranty",
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
                          ImageConstant.imgIcRoundCancel,
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
                ],
              ),
            ),
          ),
          Positioned(
            child: Container(
              height: 40.h,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: theme.colorScheme.primary,
              ),
              child: Center(
                  child: Text(
                widget.planName.toString(),
                style: CustomTextStyles.titleMediumGray50_1,
              )),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSelect(BuildContext context, String package, String price) {
    return CustomElevatedButton(
      onPressed: (() {
        if (widget.planName != "Free") {
          _handlePaymentInitialization(context, price);
        } else {
          var newJobData = Hive.box("artisan").get("new_job_data");
          var userData = Hive.box("artisan").get("employer_user_data");
          Map<String, dynamic> formData = parseData(newJobData);
          EasyLoading.show();
          print("employer id " + userData["data"]["id"].toString());

          Employers()
              .newJob(
                user_id: userData["data"]["id"].toString(),
                job_title: formData["job_title"],
                job_description: formData["job_description"],
                work_type: formData["work_type"],
                industry: formData["industry"],
                position: formData["job_title"],
                hire_type: formData["hire_type"],
                no_of_applicant: formData["no_of_applicant"],
                state: formData["state"],
                city: formData["city"],
                business_category_id: formData["business_category_id"],
                experience: int.parse(formData["experience"]),
                gender: formData["gender"],
                level_of_education: formData["level_of_education"],
                skill_level: formData["skill_level"],
                min_amount: int.parse(formData["min_amount"]),
                max_amount: int.parse(formData["max_amount"]),
                application_deadline: formData["application_deadline"],
                office_address: formData["office_address"],
                accommodation_available: formData["accommodation_available"],
                accommodation_for: formData["accommodation_for"],
                currency: formData["currency"],
              )
              .then((value) => {
                    if (value == "success")
                      {
                        EasyLoading.dismiss(),
                        Fluttertoast.showToast(
                            msg:
                                "Job has been successfully created. You will see your job as soon as it is approved. ",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor:
                                const Color.fromARGB(255, 86, 86, 86)
                                    .withOpacity(0.6),
                            textColor: Colors.white,
                            fontSize: 16.0),
                        Navigator.push(
                            context,
                            PageTransition(
                                duration: Duration(milliseconds: 500),
                                type: PageTransitionType.rightToLeft,
                                child: EmployerDashboardPage()))
                      }
                    else
                      {
                        EasyLoading.dismiss(),
                        Fluttertoast.showToast(
                            msg: value,
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor:
                                const Color.fromARGB(255, 86, 86, 86)
                                    .withOpacity(0.6),
                            textColor: Colors.white,
                            fontSize: 16.0),
                      }
                  });
        }
      }),
      // height: 29.v,
      // width: 122.h,
      text: "Select",
      // buttonStyle: CustomButtonStyles.outlineBlack,
      // buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainer,
      // alignment: Alignment.center,
    );
  }

  Map<String, dynamic> parseData(List<Map<String, dynamic>> data) {
    Map<String, dynamic> result = {};

    for (var item in data) {
      item.forEach((key, value) {
        result[key] = value;
      });
    }

    return result;
  }

  /// Section Widget
  Widget _buildFree(BuildContext context) {
    return CustomElevatedButton(
      // height: 29.v,
      // width: 122.h,
      text: widget.planName.toString(), onPressed: () {},
      // buttonStyle: CustomButtonStyles.outlineBlack,
      // buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainer,
      // alignment: Alignment.topCenter,
    );
  }

  _handlePaymentInitialization(context, String price) async {
    //int intPrice = int.parse(price);

    print(price);

    String valueWithoutComma = price.replaceAll(",", "");

    // final Customer customer = Customer(email: "customer@customer.com");

    //   final Flutterwave flutterwave = Flutterwave(
    //       context: context,
    //       publicKey: "FLWPUBK_TEST-c501afa423b7f306de5c70693b48b28d-X",
    //       currency: "NGN",
    //       redirectUrl: 'https://artisanoga.com',
    //       txRef: "9382839283923",
    //       amount: valueWithoutComma,
    //       customer: customer,
    //       paymentOptions: "card, payattitude, barter, bank transfer, ussd",
    //       customization: Customization(title: "Test Payment"),
    //       isTestMode: false);
    //   final ChargeResponse response = await flutterwave.charge();
    //   // this.showLoading(response.toString());
    //   print("${response.toJson()}");
  }
}
