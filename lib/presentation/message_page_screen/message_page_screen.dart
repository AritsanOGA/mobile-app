import 'package:flutter/material.dart';import 'package:artisan_oga/core/app_export.dart';import 'package:artisan_oga/widgets/app_bar/appbar_leading_image.dart';import 'package:artisan_oga/widgets/app_bar/appbar_subtitle.dart';import 'package:artisan_oga/widgets/app_bar/custom_app_bar.dart';import 'widgets/messagepage_item_widget.dart';import 'widgets/userprofile_item_widget.dart';class MessagePageScreen extends StatelessWidget {const MessagePageScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 12.v), child: Column(children: [SizedBox(height: 2.v), _buildUserProfile(context), SizedBox(height: 25.v), _buildMessagePage(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 38.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftOnprimary, margin: EdgeInsets.only(left: 22.h, top: 20.v, bottom: 19.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "Chat")); } 
/// Section Widget
Widget _buildUserProfile(BuildContext context) { return Align(alignment: Alignment.centerRight, child: SizedBox(height: 84.v, child: ListView.separated(padding: EdgeInsets.only(left: 25.h), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 23.h);}, itemCount: 6, itemBuilder: (context, index) {return UserprofileItemWidget();}))); } 
/// Section Widget
Widget _buildMessagePage(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 10.5.v), child: SizedBox(width: 130.h, child: Divider(height: 6.v, thickness: 6.v, color: theme.colorScheme.primaryContainer.withOpacity(1))));}, itemCount: 9, itemBuilder: (context, index) {return MessagepageItemWidget();})); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
