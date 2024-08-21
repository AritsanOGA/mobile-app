import 'package:flutter/material.dart';import 'package:artisan_oga/core/app_export.dart';import 'package:artisan_oga/widgets/app_bar/appbar_leading_image.dart';import 'package:artisan_oga/widgets/app_bar/appbar_subtitle.dart';import 'package:artisan_oga/widgets/app_bar/custom_app_bar.dart';import 'package:artisan_oga/widgets/custom_search_view.dart';
// ignore_for_file: must_be_immutable
class SearchResultPageScreen extends StatelessWidget {SearchResultPageScreen({Key? key}) : super(key: key);

TextEditingController searchController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 12.v), child: Column(children: [SizedBox(height: 9.v), CustomSearchView(controller: searchController, hintText: "Search"), Spacer(flex: 32), SizedBox(height: 161.v, width: 220.h, child: Stack(alignment: Alignment.bottomCenter, children: [CustomImageView(imagePath: ImageConstant.imgBf82526241556f3, height: 133.v, width: 202.h, alignment: Alignment.topCenter), Align(alignment: Alignment.bottomCenter, child: Text("No Result Found?", style: theme.textTheme.headlineMedium))])), SizedBox(height: 22.v), Container(width: 288.h, margin: EdgeInsets.only(left: 46.h, right: 45.h), child: Text("Please ensure you input the correct keywords.", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleMediumGray700Medium17)), Spacer(flex: 67), SizedBox(width: 130.h, child: Divider(color: theme.colorScheme.primaryContainer.withOpacity(1)))])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 38.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftOnprimary, margin: EdgeInsets.only(left: 22.h, top: 20.v, bottom: 19.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "Search Result")); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
