import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';

class ApplyForJobsOneScreen extends StatelessWidget {
  const ApplyForJobsOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 12.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12.v),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 88.v,
                  width: 83.h,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 80.adaptSize,
                          width: 80.adaptSize,
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(
                              40.h,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 26.adaptSize,
                          width: 26.adaptSize,
                          margin: EdgeInsets.only(
                            right: 5.h,
                            bottom: 5.v,
                          ),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimaryContainer
                                .withOpacity(1),
                            borderRadius: BorderRadius.circular(
                              13.h,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgBitcoinIconsVerifyFilled,
                        height: 35.adaptSize,
                        width: 35.adaptSize,
                        alignment: Alignment.bottomRight,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGameIconsClothes,
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                          left: 22.h,
                          top: 20.v,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 11.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "DTCLOTHING",
                  style: CustomTextStyles.headlineSmallPrimary,
                ),
              ),
              SizedBox(height: 7.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Fashion Production Manager",
                  style: CustomTextStyles.titleMediumGray700Medium,
                ),
              ),
              SizedBox(height: 25.v),
              _buildHiringType(context),
              SizedBox(height: 26.v),
              _buildLocation(context),
              SizedBox(height: 27.v),
              Text(
                "Overview",
                style: CustomTextStyles.titleMedium18,
              ),
              SizedBox(height: 8.v),
              SizedBox(
                width: 376.h,
                child: Text(
                  "Must have at least 5 year’s experience in tailoring, garment production and manufacturing. Can be male or female.  The candidates MUST know about pattern drafting and pattern using. This role has to be someone that has been a tailor and knows how to sew.",
                  maxLines: 7,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumGray700,
                ),
              ),
              SizedBox(height: 26.v),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  "Job Position",
                  style: CustomTextStyles.titleMedium18,
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  "1",
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 17.v),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  "Education",
                  style: CustomTextStyles.titleMedium18,
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  "Fashion Inclined",
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 17.v),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  "Accommodation",
                  style: CustomTextStyles.titleMedium18,
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  "No",
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  "Required Skill",
                  style: CustomTextStyles.titleMedium18,
                ),
              ),
              SizedBox(height: 11.v),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  "Production Manager",
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 9.v),
              CustomElevatedButton(
                text: "Apply Now", onPressed: () {  },
      
                // buttonTextStyle:
                //     CustomTextStyles.titleLargeOnPrimaryContainerSemiBold,
              ),
              SizedBox(height: 25.v),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 130.h,
                  child: Divider(
                    color: theme.colorScheme.primaryContainer.withOpacity(1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHiringType(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hiring Type",
              style: CustomTextStyles.titleSmallPrimaryContainer_1,
            ),
            SizedBox(height: 4.v),
            Text(
              "Full-Time",
              style: theme.textTheme.bodySmall,
            ),
          ],
        ),
        Spacer(
          flex: 58,
        ),
        Column(
          children: [
            Text(
              "Date Posted",
              style: CustomTextStyles.titleSmallPrimaryContainer_1,
            ),
            SizedBox(height: 5.v),
            Text(
              "2024-02-15 14:00:00",
              style: theme.textTheme.bodySmall,
            ),
          ],
        ),
        Spacer(
          flex: 41,
        ),
        Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Qualification ",
                style: CustomTextStyles.titleSmallPrimaryContainer_1,
              ),
            ),
            SizedBox(height: 5.v),
            Text(
              "Fashion Inclined",
              style: theme.textTheme.bodySmall,
            ),
          ],
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLocation(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildDeadline(
          context,
          deadlineText: "Location",
          dateText: "Lagos, Yaba",
        ),
        Column(
          children: [
            Text(
              "Pay",
              style: CustomTextStyles.titleSmallPrimaryContainer_1,
            ),
            SizedBox(height: 5.v),
            Text(
              "₦130,000 - ₦150,000",
              style: theme.textTheme.bodySmall,
            ),
          ],
        ),
        _buildDeadline(
          context,
          deadlineText: "Deadline",
          dateText: "2024-02-21",
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildDeadline(
    BuildContext context, {
    required String deadlineText,
    required String dateText,
  }) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            deadlineText,
            style: CustomTextStyles.titleSmallPrimaryContainer_1.copyWith(
              color: theme.colorScheme.primaryContainer.withOpacity(1),
            ),
          ),
        ),
        SizedBox(height: 5.v),
        Text(
          dateText,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray700,
          ),
        ),
      ],
    );
  }
}
