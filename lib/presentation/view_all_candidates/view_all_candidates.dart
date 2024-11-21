
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:hive/hive.dart';
import 'package:page_transition/page_transition.dart';
import '../../core/services/default.dart';
import '../candidates_profile_accept_page_screen/candidates_profile_accept_page_screen.dart';
import 'widgets/userprofilegrid_item_widget.dart';

class ViewAllCandidatesPageScreen extends StatefulWidget {
  ViewAllCandidatesPageScreen({
    Key? key,
  }) : super(key: key);

  @override
  _ViewAllCandidatesPageScreenState createState() =>
      _ViewAllCandidatesPageScreenState();
}

class _ViewAllCandidatesPageScreenState
    extends State<ViewAllCandidatesPageScreen> {
  var employer_info = Hive.box("artisan").get("employer_user_data");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("Screened Applicants"),
            ),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 12.v),
                child: Column(children: [
                  SizedBox(height: 26.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [])),
                  SizedBox(height: 19.v),
                  Text("Click on any applicant to view their profile",
                      style: theme.textTheme.bodyMedium),
                  SizedBox(height: 36.v),
                  _buildUserProfileGrid(context),
                ]))));
  }

  /// Section Widget
  Widget _buildUserProfileGrid(BuildContext context) {
    return Expanded(
        child: Container(
            // height: double.maxFinite,
            child: FutureBuilder<dynamic>(
                future: Default().getAllJobApplicants(
                    employer_info["data"]["id"].toString()),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }

                  if (snapshot.hasData) {
                    if (snapshot.data is List) {
                      final data = snapshot.data!;

                      return data.length > 0
                          ? GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 6.h,
                                crossAxisSpacing: 6.h,
                              ),

                              scrollDirection:
                                  Axis.vertical, // Remove this line
                              itemCount: data.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                    onTap: (() {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              type: PageTransitionType
                                                  .rightToLeft,
                                              child:
                                                  CandidatesProfileAcceptPageScreen()));
                                    }),
                                    child: UserprofilegridItemWidget(
                                        fullName: data[index]["full_name"]));
                              },
                            )
                          : Center(
                              child: Text("No candidates were found"),
                            );
                    } else {
                      return Center(
                        child: Text(
                          "You have no screened and assigned",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      );
                    }
                  } else {
                    return SizedBox();
                  }
                })));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
