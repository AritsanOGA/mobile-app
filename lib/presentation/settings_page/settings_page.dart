// import 'package:flutter/material.dart';
// import 'package:artisan_oga/core/app_export.dart';

// class SettingsPage extends StatelessWidget {
//   const SettingsPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             appBar: AppBar(
//               leading: Icon(Icons.arrow_back),
//             ),
//             body: Container(
//                 width: double.maxFinite,
//                 decoration: AppDecoration.fillGray,
//                 child: Container(
//                     padding:
//                         EdgeInsets.symmetric(horizontal: 22.h, vertical: 38.v),
//                     child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 CustomImageView(
//                                     imagePath:
//                                         ImageConstant.imgArrowLeftOnprimary,
//                                     height: 16.adaptSize,
//                                     width: 16.adaptSize,
//                                     margin:
//                                         EdgeInsets.only(top: 2.v, bottom: 6.v),
//                                     onTap: () {
//                                       onTapImgArrowLeft(context);
//                                     }),
//                                 Padding(
//                                     padding: EdgeInsets.only(left: 137.h),
//                                     child: Text("Settings",
//                                         style: theme.textTheme.titleLarge))
//                               ]),
//                           SizedBox(height: 20.v),
//                           _buildLucyWilliams(context),
//                           SizedBox(height: 24.v),
//                           Divider(indent: 3.h, endIndent: 4.h),
//                           SizedBox(height: 27.v),

//                           /*   Padding(
//                               padding: EdgeInsets.only(left: 4.h),
//                               child: Row(children: [
//                                 CustomImageView(
//                                     imagePath: ImageConstant.imgLocation,
//                                     height: 21.v,
//                                     width: 16.h,
//                                     margin: EdgeInsets.only(bottom: 1.v)),
//                                 Padding(
//                                     padding:
//                                         EdgeInsets.only(left: 19.h, top: 2.v),
//                                     child: Text("Change Password",
//                                         style: CustomTextStyles
//                                             .titleMediumPrimaryContainerMedium_1))
//                               ])),*/

//                           // SizedBox(height: 30.v),
//                           Padding(
//                               padding: EdgeInsets.only(left: 4.h),
//                               child: Row(children: [
//                                 CustomImageView(
//                                     imagePath: ImageConstant.imgBookmark,
//                                     height: 15.v,
//                                     width: 20.h,
//                                     margin:
//                                         EdgeInsets.symmetric(vertical: 2.v)),
//                                 Padding(
//                                     padding: EdgeInsets.only(left: 15.h),
//                                     child: Text("Payment Integration",
//                                         style: CustomTextStyles
//                                             .titleMediumPrimaryContainerMedium_1))
//                               ])),
//                           SizedBox(height: 32.v),
//                           Padding(
//                               padding: EdgeInsets.only(left: 4.h),
//                               child: Row(children: [
//                                 CustomImageView(
//                                     imagePath: ImageConstant.imgTrendingUp,
//                                     height: 20.adaptSize,
//                                     width: 20.adaptSize),
//                                 Padding(
//                                     padding: EdgeInsets.only(left: 15.h),
//                                     child: Text("Update Profile",
//                                         style: CustomTextStyles
//                                             .titleMediumPrimaryContainerMedium_1))
//                               ])),
//                           SizedBox(height: 34.v),
//                           Padding(
//                               padding: EdgeInsets.only(left: 3.h),
//                               child: Row(children: [
//                                 CustomImageView(
//                                     imagePath: ImageConstant
//                                         .imgThumbsUpPrimarycontainer22x22,
//                                     height: 22.adaptSize,
//                                     width: 22.adaptSize),
//                                 Padding(
//                                     padding: EdgeInsets.only(left: 14.h),
//                                     child: Text("Log out",
//                                         style: CustomTextStyles
//                                             .titleMediumPrimaryContainerMedium_1))
//                               ])),
//                           SizedBox(height: 5.v)
//                         ])))));
//   }

//   /// Section Widget
//   Widget _buildLucyWilliams(BuildContext context) {
//     return Padding(
//         padding: EdgeInsets.only(left: 3.h, right: 4.h),
//         child: Row(children: [
//           CustomImageView(
//               imagePath: ImageConstant.imgEllipse38,
//               height: 57.adaptSize,
//               width: 57.adaptSize,
//               radius: BorderRadius.circular(28.h)),
//           Padding(
//               padding: EdgeInsets.only(left: 15.h, top: 5.v, bottom: 5.v),
//               child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text("Lucy Williams",
//                         style: CustomTextStyles.titleLargePrimary),
//                     SizedBox(height: 1.v),
//                     Text("Assistant Manager at IT Support",
//                         style: theme.textTheme.titleSmall)
//                   ])),
//           Spacer(),
//           CustomImageView(
//               imagePath: ImageConstant.imgPrinter,
//               height: 18.adaptSize,
//               width: 18.adaptSize,
//               margin: EdgeInsets.only(top: 24.v, bottom: 15.v))
//         ]));
//   }

//   /// Navigates back to the previous screen.
//   onTapImgArrowLeft(BuildContext context) {
//     Navigator.pop(context);
//   }
// }
