import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/features/home/domain/entities/employer_job_response_entiity.dart';
import 'package:artisan_oga/shared/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timeago/timeago.dart' as timeago;

class ManageJobWidget extends StatelessWidget {
  final EmployerJobResponseEntity employerJobResponseEntity;

  const ManageJobWidget({super.key, required this.employerJobResponseEntity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset(
              'assets/images/job-info-svgrepo-com.png',
              width: 39.h,
              height: 42.v,
            ),
            Padding(
                padding: EdgeInsets.only(left: 16.h, top: 5.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(employerJobResponseEntity.jobTitle ?? '',
                          style:
                              CustomTextStyles.titleMediumSecondaryContainer),
                      Text(
                          "${employerJobResponseEntity.city} (${employerJobResponseEntity.commuteType})",
                          style: CustomTextStyles.titleSmallGray50001),
                      SizedBox(height: 1.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Active",
                                style:
                                    CustomTextStyles.titleSmallLightgreen900),
                            SizedBox(
                              width: 5.h,
                            ),
                            SvgPicture.asset(
                              ImageConstant.imgMingcuteQuestionFill,
                            ),
                            SizedBox(
                              width: 10.h,
                            ),
                            Container(
                                height: 4.adaptSize,
                                width: 4.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 7.v),
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.secondaryContainer
                                        .withOpacity(1),
                                    borderRadius: BorderRadius.circular(2.h))),
                            SizedBox(
                              width: 10.h,
                            ),
                            Text(
                                'Posted ${timeago.format(employerJobResponseEntity.createdAt ?? DateTime.now())}',

                                //"Posted 3mins ago",
                                style: CustomTextStyles
                                    .titleSmallSecondaryContainer)
                          ])
                    ])),
            Spacer(),
            CustomImageView(
                imagePath: ImageConstant.imgHumbleiconsPencil,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(top: 17.v, bottom: 23.v))
          ]),
          SizedBox(height: 7.v),
          Row(children: [
            SvgPicture.asset(
              ImageConstant.imgOiPeople,
            ),
            Padding(
                padding: EdgeInsets.only(left: 9.h, top: 3.v),
                child: Text(
                    employerJobResponseEntity.jobMergingCount == 0 ||
                            employerJobResponseEntity.jobMergingCount == 1
                        ? "${employerJobResponseEntity.jobMergingCount ?? 0}  applicant"
                        : "${employerJobResponseEntity.jobMergingCount ?? 0}  applicants",
                    style: CustomTextStyles.titleSmallPrimaryContainer_1)),
            Container(
                height: 4.adaptSize,
                width: 4.adaptSize,
                margin: EdgeInsets.only(left: 10.h, top: 9.v, bottom: 8.v),
                decoration: BoxDecoration(
                    color: theme.colorScheme.secondaryContainer.withOpacity(1),
                    borderRadius: BorderRadius.circular(2.h))),
            Padding(
                padding: EdgeInsets.only(left: 9.h, top: 2.v),
                child: Text("1 views",
                    style: CustomTextStyles.titleSmallSecondaryContainer))
          ]),
          // SizedBox(height: 7.v),
          // Row(children: [
          //   SvgPicture.asset(
          //     ImageConstant.imgFluentMdl2PostUpdate,
          //   ),
          //   Padding(
          //       padding: EdgeInsets.only(left: 7.h, top: 3.v, bottom: 3.v),
          //       child: Text('Package: Free',
          //           style: CustomTextStyles.titleSmallPrimaryContainer_1
          //               .copyWith(
          //                   color: theme.colorScheme.primaryContainer
          //                       .withOpacity(1))))
          // ]),
          SizedBox(height: 20.v),
          Row(
            children: [
              CustomOutlinedButton(
                  onPressed: (() {
                    print('jobid ${employerJobResponseEntity.id}');
                    Navigator.pushNamed(
                      context,
                      AppRoutes.viewCandidatesPageScreen,
                      arguments: {
                        'jobId': employerJobResponseEntity.id.toString(),
                        "jobIdentity": employerJobResponseEntity.identity
                      },
                    );
                  }),
                  width: 153.h,
                  text: "View Applicants",
                  margin: EdgeInsets.only(left: 4.h)),
              SizedBox(
                width: 20,
              ),
              CustomOutlinedButton(
                  onPressed: (() {
                    print('jobid ${employerJobResponseEntity.id}');
                    Navigator.pushNamed(
                      context,
                      AppRoutes.paymentPageScreen,
                    );
                  }),
                  width: 153.h,
                  text: "Pay Now",
                  margin: EdgeInsets.only(left: 4.h)),
            ],
          ),
          SizedBox(height: 20.v),
          Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text("Job Description",
                  style: CustomTextStyles.titleMediumPrimaryContainerMedium_1)),
          SizedBox(height: 7.v),
          Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text(employerJobResponseEntity.jobDescription ?? '',
                  style: CustomTextStyles.bodyMediumPrimaryContainer)),
          SizedBox(height: 18.v),
          Divider(indent: 4.h, endIndent: 6.h),
        ],
      ),
    );
  }
}
