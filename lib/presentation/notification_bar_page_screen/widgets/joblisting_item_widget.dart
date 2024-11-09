import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class JoblistingItemWidget extends StatelessWidget {
  const JoblistingItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 24.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 6.adaptSize,
                    width: 6.adaptSize,
                    margin: EdgeInsets.only(
                      top: 23.v,
                      bottom: 30.v,
                    ),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        3.h,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle180,
                    height: 49.v,
                    width: 54.h,
                    margin: EdgeInsets.only(
                      left: 5.h,
                      top: 1.v,
                      bottom: 9.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 200.h,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Junior product designer",
                                  style: CustomTextStyles.titleMediumff3a332c,
                                ),
                                TextSpan(
                                  text: ": 1\nopportunity in ",
                                  style: CustomTextStyles
                                      .titleMediumff3a332cMedium,
                                ),
                                TextSpan(
                                  text: "Califonia",
                                  style: CustomTextStyles.titleMediumff3a332c,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 2.v),
                        Text(
                          "4 hours ago",
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildJobListingButton(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildJobListingButton(BuildContext context) {
    return CustomElevatedButton(
      height: 34.v,
      width: 86.h,
      text: "View Job",
      margin: EdgeInsets.only(
        left: 20.h,
        top: 50.v,
      ),
      buttonStyle: CustomButtonStyles.fillPrimaryTL8,
      buttonTextStyle: CustomTextStyles.titleSmallGray50,
    );
  }
}
