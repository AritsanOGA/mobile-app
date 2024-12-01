import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/utils/image_constant.dart';
import 'package:artisan_oga/core/utils/size_utils.dart';
import 'package:artisan_oga/shared/widgets/custom_image_view.dart';
import 'package:artisan_oga/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmployerJobWidget extends StatelessWidget {
  final String jobTitle;
  final String hireType;
  final String location;
  final String amount;
  final String dateCreated;

  const EmployerJobWidget(
      {super.key,
      required this.jobTitle,
      required this.hireType,
      required this.location,
      required this.amount,
      required this.dateCreated});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
          left: 4.h,
          right: 6.h,
          top: 20,
        ),
        child: Column(
          children: [
            Row(children: [
              CustomImageView(
                  imagePath: "assets/images/job-info-svgrepo-com.png",
                  height: 39.v,
                  width: 42.h,
                  alignment: Alignment.center),
              SizedBox(
                width: 15.v,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(jobTitle,
                    style: CustomTextStyles.titleMediumSecondaryContainer),
                // SizedBox(height: 5.h,),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Intern', style: CustomTextStyles.titleSmallGray50001),
                    SizedBox(
                      width: 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      //   crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('${amount}',
                            style:
                                CustomTextStyles.titleSmallSecondaryContainer),
                      ],
                    )
                  ],
                ),
              ]),
            ]),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(ImageConstant.location),
                    SizedBox(
                      width: 5.v,
                    ),
                    Text(location, style: CustomTextStyles.titleSmallGray50001),
                    SizedBox(
                      width: 20.v,
                    ),
                    SvgPicture.asset(ImageConstant.jobType),
                    SizedBox(
                      width: 5.v,
                    ),
                    Text(hireType, style: CustomTextStyles.titleSmallGray50001)
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: AppColors.kblack),
                    ),
                    SizedBox(
                      width: 5.v,
                    ),
                    Text(
                      dateCreated,
                      style: CustomTextStyles.titleMediumPrimaryContainer,
                    )
                  ],
                ),
              ],
            )
          ],
        ));
  }
}
