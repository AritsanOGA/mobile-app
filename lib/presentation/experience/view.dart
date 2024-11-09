import 'package:artisan_oga/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';

import '../../core/utils/app_formatter.dart';
import '../../core/services/candidates.dart';

class ViewExperiencePage extends StatefulWidget {
  @override
  _ViewExperiencePageState createState() => _ViewExperiencePageState();
}

class _ViewExperiencePageState extends State<ViewExperiencePage> {
  TextEditingController searchController = TextEditingController();

  var jobseekerInfo = Hive.box("artisan").get("jobseeker_user_data");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Container(
                width: double.maxFinite,
                child: Row(
                  children: [
                    Spacer(),
                    Text("Experience"),
                    Spacer(),
                    Text(
                      "Add+",
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  height: double.maxFinite,
                  child: FutureBuilder<dynamic>(
                      future: Candidates().getExperience(
                          jobseekerInfo["data"]["id"].toString()),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(
                              child: CircularProgressIndicator(
                            color: Colors.orange,
                          ));
                        } else if (snapshot.hasData) {
                          final data = snapshot.data!;

                          if (data.length > 0) {
                            return ListView.builder(
                              itemCount:
                                  data.length, // Display the widget 4 times
                              itemBuilder: (context, index) {
                                return Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.h),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 2.h, right: 112.h),
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [])),
                                          SizedBox(height: 29.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 4.h),
                                              child: Text("Title",
                                                  style: TextStyle(
                                                      color: Colors.orange,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold))),
                                          SizedBox(height: 9.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 4.h),
                                              child: Text(
                                                  removeHtmlTags(
                                                      data[index]["title"]),
                                                  //  maxLines: 4,
                                                  // overflow: TextOverflow.ellipsis,
                                                  style: CustomTextStyles
                                                      .bodyMediumPrimaryContainer)),
                                          SizedBox(height: 7.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 4.h),
                                              child: Text("Description",
                                                  style: TextStyle(
                                                      color: Colors.orange,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold))),
                                          SizedBox(height: 7.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 4.h),
                                              child: Text(data[index]["desc"],
                                                  //  maxLines: 4,
                                                  // overflow: TextOverflow.ellipsis,
                                                  style: CustomTextStyles
                                                      .bodyMediumPrimaryContainer)),
                                          SizedBox(height: 8.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 4.h),
                                              child: Text("Year",
                                                  style: TextStyle(
                                                      color: Colors.orange,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold))),
                                          SizedBox(height: 7.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 4.h),
                                              child: Text(
                                                  data[index]["year"] == null
                                                      ? "--"
                                                      : data[index]["year"]
                                                          .toString(),
                                                  //  maxLines: 4,
                                                  // overflow: TextOverflow.ellipsis,
                                                  style: CustomTextStyles
                                                      .bodyMediumPrimaryContainer)),
                                          SizedBox(height: 23.v),
                                          Divider(indent: 4.h, endIndent: 6.h),
                                        ])); // Replace with your own widget
                              },
                            );
                          } else {
                            return Center(
                              child: Text(
                                "You have not been matched with any jobs",
                                style: TextStyle(color: Colors.orange),
                              ),
                            );
                          }
                        } else {
                          return Center(
                            child: Text(
                              "An error occured. Please refresh",
                              style: TextStyle(color: Colors.orange),
                            ),
                          );
                        }
                      })),
            )));
  }
}
