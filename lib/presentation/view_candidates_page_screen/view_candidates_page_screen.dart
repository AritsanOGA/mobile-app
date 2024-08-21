import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:hive/hive.dart';
import '../../services/default.dart';
import '../candidates_profile_accept_page_screen/candidates_profile_accept_page_screen.dart';
import 'widgets/userprofilegrid_item_widget.dart';

class ViewCandidatesPageScreen extends StatefulWidget {
  final dynamic job_id; // Replace 'dynamic' with the appropriate data type

  ViewCandidatesPageScreen({Key? key, required this.job_id}) : super(key: key);

  @override
  _ViewCandidatesPageScreenState createState() =>
      _ViewCandidatesPageScreenState();
}

class _ViewCandidatesPageScreenState extends State<ViewCandidatesPageScreen> {
  var employer_info = Hive.box("artisan").get("employer_user_data");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("Applicants"),
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
                future: Default().getJobApplicants(widget.job_id.toString()),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }

                  if (snapshot.hasData) {
                    if (snapshot.data is List) {
                      final data = snapshot.data!;

                      return GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 6.h,
                          crossAxisSpacing: 6.h,
                        ),

                        scrollDirection: Axis.vertical, // Remove this line
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                              onTap: (() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CandidatesProfileAcceptPageScreen()),
                                );
                              }),
                              child: UserprofilegridItemWidget(
                                  fullName: data[index]["full_name"]));
                        },
                      );
                    } else {
                      return Center(
                        child: Text(
                          "A server error occured! Please tap to refresh",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      );
                    }
                  } else {
                    return Center(
                      child: Text(
                        "No applicants for this job",
                        style: TextStyle(fontSize: 19),
                      ),
                    );
                  }
                })));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
