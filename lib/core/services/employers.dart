import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart' as eos;

class Employers {
  //static String userId = Hive.box('name').get('userID');
  static String baseUrl = "http://artisanoga.raffle-draw.name.ng/api/v1/";

  Future<dynamic> getProfile(String user_id) async {
    var dio = eos.Dio();

    try {
      var response =
          await dio.get('${baseUrl}employer/profile?user_id=${user_id}',
              options: eos.Options(
                headers: {
                  "accept": "application/json",
                },
              ));

      // print(response.data.toString());
      var data = response.data;
      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.toString());
        return data["data"];
      }
    } on eos.DioException catch (e) {
      print("Error:" + e.message.toString());
      return 400;
    }
  }

  Future<dynamic> newJob({
    @required String? user_id,
    @required String? job_title,
    @required String? position,
    @required String? job_description,
    @required String? work_type,
    @required String? industry,
    @required String? hire_type,
    @required String? no_of_applicant,
    @required String? state,
    @required String? city,
    @required int? business_category_id,
    @required int? experience,
    @required String? gender,
    @required String? level_of_education,
    @required String? skill_level,
    @required int? min_amount,
    @required int? max_amount,
    @required String? application_deadline,
    @required String? office_address,
    @required String? accommodation_available,
    @required String? accommodation_for,
    @required String? currency,
  }) async {
    DateTime now = DateTime.now();

    var dio = eos.Dio();

    var formData = eos.FormData.fromMap({
      'user_id': user_id,
      'job_title': job_title,
      'job_description': job_description,
      'work_type': work_type,
      'industry': industry,
      'position': job_title,
      'hire_type': hire_type,
      'no_of_applicant': no_of_applicant,
      'state': state,
      'city': city,
      'business_category_id': business_category_id,
      'experience': experience,
      'gender': gender,
      'level_of_education': level_of_education,
      'skill_level': skill_level,
      'min_amount': min_amount,
      'max_amount': max_amount,
      'application_deadline': application_deadline,
      'office_address': office_address,
      'accommodation_available': accommodation_available,
      'accommodation_for': accommodation_for,
      'currency': currency,
      'payment_method': "FLUTTERWAVE",
      'payment_id': now.millisecondsSinceEpoch.toString(),
    });

    try {
      var response = await dio.post('${baseUrl}employer/post-a-job',
          data: formData,
          options: eos.Options(
            headers: {
              "Accept": "application/json",
              //'Content-Type': 'multipart/form-data'
            },
          ));

      // print(response.data.toString());
      var data = response.data;
      if (response.statusCode == 200 || response.statusCode == 201) {
        if (data["msg"] == "Job Posted Successfully.") {
          return "success";
        }
        //print(data.toString());
      }
    } on eos.DioException catch (e) {
      if (e.response != null) {
        // DioError has response data when available
        print(e.response!.data);

        return (e.response!.data["message"].toString());
      } else {
        // Otherwise, print the error message
        print('Error message: $e');
        return 'An unknown error occured';
      }
      // return 'An unknown error occured';
    }
  }
}
