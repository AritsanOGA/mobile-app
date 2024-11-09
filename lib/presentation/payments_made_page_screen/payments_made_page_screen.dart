import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/app_bar/appbar_leading_image.dart';
import 'package:artisan_oga/shared/widgets/app_bar/appbar_subtitle.dart';
import 'package:artisan_oga/shared/widgets/app_bar/custom_app_bar.dart';
import 'package:hive/hive.dart';

import '../../core/services/default.dart';

class PaymentsMadePageScreen extends StatefulWidget {
  @override
  _PaymentsMadePageScreenState createState() => _PaymentsMadePageScreenState();
}

class _PaymentsMadePageScreenState extends State<PaymentsMadePageScreen> {
  var employer_info = Hive.box("artisan").get("employer_user_data");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 12.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 6.v),
              Divider(
                color: appTheme.gray700.withOpacity(0.63),
              ),
              SizedBox(height: 15.v),
              Expanded(
                  child: FutureBuilder<dynamic>(
                      future: Default()
                          .getPayments(employer_info["data"]["id"].toString()),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(child: CircularProgressIndicator());
                        }

                        if (snapshot.hasData) {
                          final data = snapshot.data!;

                          return data.length > 0
                              ? ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount:
                                      data.length, // Display the widget 4 times
                                  itemBuilder: (context, index) {
                                    return _buildFrame3(
                                        context,
                                        data[index]["depositor_name"],
                                        data[index]["type_of_payment"],
                                        data[index]["status"],
                                        data[index]["purchase_date"]);
                                  })
                              : Center(
                                  child: Text("No payments yet"),
                                );
                        } else {
                          return SizedBox();
                        }
                      })),
              SizedBox(height: 16.v),
              Divider(
                color: appTheme.gray700.withOpacity(0.21),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 52.h,
      leading: IconButton(
          onPressed: (() {
            Navigator.pop(context);
          }),
          icon: Icon(Icons.arrow_back)),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Payment History",
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame3(BuildContext context, String depositorName,
      String paymentType, String status, String date) {
    return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(top: 20),
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: Color.fromARGB(163, 243, 243, 243),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              depositorName.toString(),
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            Container(
              width: double.maxFinite,
              child: Row(
                children: [
                  Text(
                    paymentType.toString(),
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color.fromARGB(255, 213, 128, 0)),
                  ),
                  Spacer(),
                  Text(
                    date.toString(),
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color.fromARGB(255, 2, 117, 27)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              width: double.maxFinite,
              child: Row(
                children: [
                  Text(
                    "Status".toString(),
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color.fromARGB(255, 35, 35, 35)),
                  ),
                  Spacer(),
                  Text(
                    status.toString(),
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color.fromARGB(255, 213, 128, 0)),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
