import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:dio/dio.dart' as eos;
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as path_provider;

class Auth {
  //static String userId = Hive.box('name').get('userID');
  static String baseUrl = "http://artisanoga.raffle-draw.name.ng/api/v1/";

  int min = 100000;
  int max = 999999;

  Future<dynamic> newCandidate(
      {@required String? fullname,
      @required String? email,
      @required String? password,
      @required String? confirmPassword,
      @required String? phone,
      @required String? address,
      @required int? country,
      @required String? dob,
      @required String? state,
      @required String? city,
      @required String? employmentHistory,
      @required String? companyName,
      @required String? jobDescription,
      @required String? jobRole,
      @required String? startYear,
      @required String? end_year,
      @required int? categories,
      @required String? qualification,
      @required String? schoolName,
      @required String? courseName,
      @required String? awardTitle,
      @required String? awardYear,
      @required List<int>? artisan_skills,
      @required String? guarantorName,
      @required String? guarantorAddress,
      @required String? guarantorPhone,
      @required String? guarantorEmail,
      @required String? gender,
      required File? passport,
      resume,
      @required String? commuteType}) async {
    var dio = eos.Dio();

    //Handle passport image

    // Get the file extension
    String fileExtension = path.extension(passport!.path);
    String pdfExtension = path.extension(resume!.path);

    // Check and validate the file type for passport
    if ((fileExtension == '.jpg' ||
            fileExtension == '.png' ||
            fileExtension == '.gif') &&
        (pdfExtension == '.pdf')) {
      print("running code...");

      List<int> imageBytes = await passport.readAsBytes();
      List<int> fileBytes = await resume.readAsBytes();
      // Encode bytes to base64
      //  String base64Image = base64Encode(imageBytes);

      // print(base64Image);
      var formData = eos.FormData.fromMap({
        'fullname': fullname,
        'email': email,
        'password': password,
        'password_confirmation': confirmPassword,
        'phone': phone,

        'passport': await eos.MultipartFile.fromFile(passport.path,
            filename: path.basename(passport.path)),
        'resume': await eos.MultipartFile.fromFile(resume.path,
            filename: path.basename(resume.path)), // Example for resume

        'DateOfBirth': dob,
        'StreetAddress': address,
        'country': country,
        'states': state,
        'city': city,
        'employment_history': employmentHistory,
        'company_name': companyName,
        'job_role': jobRole,
        'job_type': jobRole,
        'job_description': jobDescription,
        'start_year': startYear,
        'end_year': end_year,
        'categories': categories,
        'education_qualification': qualification,
        'school_name': schoolName,
        'course_name': courseName,
        // 'award_title': award_title,
        // 'award_year': award_year,
        'artisan_skills': artisan_skills,
        'guarantor_name': guarantorName,
        'guarantor_address': guarantorAddress,
        'guarantor_phone': guarantorPhone,
        'guarantor_email': guarantorEmail,
        'gender': gender,
        "commute_type": "Remote"
      });

      try {
        var response = await dio.post('${baseUrl}candidate/signup',
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
          if (data["msg"] == "success") {
            return "success";
          }
          //print(data.toString());
        }
      } on eos.DioError catch (e) {
        if (e.response != null) {
          // DioError has response data when available
          print(
            e.response!.data.toString(),
          );

          return (e.response!.data["message"][0].toString());
        } else {
          // Otherwise, print the error message
          print('Error message: $e');
          return 'An unknown error occured';
        }
        // return 'An unknown error occured';
      }
    } else {
      print("An error occured. No seleced Path");

      return "Error";
    }
  }

  Future<dynamic> checkEmailExists({
    @required String? email,
  }) async {
    var dio = eos.Dio();

    //Handle passport image

    var formData = eos.FormData.fromMap({
      'options': email!.trim(),
    });

    try {
      var response =
          await dio.get('${baseUrl}validate-user-details?options=$email',
              //  data: formData,
              options: eos.Options(
                headers: {
                  "Accept": "application/json",
                  //'Content-Type': 'multipart/form-data'
                },
              ));

      // print(response.data.toString());
      var data = response.data;
      if (response.statusCode == 200 || response.statusCode == 201) {
        if (data["msg"] == "error") {
          return "EXISTS";
        }
        //print(data.toString());
      }
    } on eos.DioError catch (e) {
      if (e.response != null) {
        // DioError has response data when available
        print(e.response!.data);

        if (e.response!.data["msg"] == "error") {
          return "EXISTS";
        }

        return (e.response!.data["message"].toString());
      } else {
        // Otherwise, print the error message
        print('Error message: $e');
        return 'An unknown error occured';
      }
      // return 'An unknown error occured';
    }
  }

  Future<dynamic> newEmployer({
    @required String? fullname,
    @required String? email,
    @required String? password,
    @required String? confirmPassword,
    @required String? phone,
    @required int? country,
    @required int? state,
    @required String? city,
    required File? logo,
    @required String? businessName,
    @required String? companyName,
    String? education_qualification,
  }) async {
    var dio = eos.Dio();

    // Get the file extension

    if (logo != null) {
      String fileExtension = path.extension(logo!.path);

      // Check and validate the file type for passport
      if (fileExtension == '.jpg' ||
          fileExtension == '.png' ||
          fileExtension == '.gif') {
        var formData = eos.FormData.fromMap({
          'fullname': fullname,
          'email': email,
          'password': password,
          'confirm_password': confirmPassword,
          'phone': phone,
          'country': country,
          'state': state,
          'city': city,
          'logo': await MultipartFile.fromFile(
            logo.path,
            filename: path.basename(logo.path),
          ),
          'business_name': businessName,
          'company_name': companyName,
          'education_qualification':
              education_qualification != null ? education_qualification : ""
        });

        try {
          var response = await dio.post('${baseUrl}employer/signup',
              data: formData,
              options: eos.Options(
                headers: {
                  "accept": "application/json",
                },
              ));

          // print(response.data.toString());
          var data = response.data;
          if (response.statusCode == 200 || response.statusCode == 201) {
            if (data["msg"] == "Success") {
              return "success";
            }
          }
        } on eos.DioError catch (e) {
          if (e.response != null) {
            if (e.response!.statusCode == 400) {
              return (e.response!);
            } else {
              return (e.response!.data["message"].toString());
            }
          }

          return (e.toString());
        }
      }
    } else {
      var formData = eos.FormData.fromMap({
        'fullname': fullname,
        'email': email,
        'password': password,
        'confirm_password': confirmPassword,
        'phone': phone,
        'country': country,
        'state': state,
        'city': city,
        'business_name': businessName,
        'company_name': companyName,
      });

      try {
        var response = await dio.post('${baseUrl}employer/signup',
            data: formData,
            options: eos.Options(
              headers: {
                "accept": "application/json",
              },
            ));

        // print(response.data.toString());
        var data = response.data;
        if (response.statusCode == 200 || response.statusCode == 201) {
          if (data["msg"] == "Success") {
            return "success";
          }
        }
      } on eos.DioError catch (e) {
        if (e.response != null) {
          if (e.response!.statusCode == 400) {
            print("hgj " + e.response!.data["message"].toString());
            return (e.response!.data.toString());
          } else {
            print("hgj " + e.response!.data["message"].toString());
            return (e.response!.data["message"]);
          }
        }

        return (e.toString());
      }
    }
  }

  Future<dynamic> loginJobSeeker({
    @required String? email,
    @required String? password,
  }) async {
    var dio = eos.Dio();

    var formData = eos.FormData.fromMap({
      'options': email,
      'password': password,
    });

    try {
      var response = await dio.post('${baseUrl}login',
          data: formData,
          options: eos.Options(
            headers: {
              "accept": "application/json",
            },
          ));

      // print(response.data.toString());
      var data = response.data;
      if (response.statusCode == 200 || response.statusCode == 201) {
        if (data["data"]["role"] != "Employer" &&
            data["data"]["role"] != null) {
          Hive.box("artisan").put("jobseeker_user_data", data);
          Hive.box("artisan").put("user_role", "Artisan");
          return "success";
        } else {
          return "That account belongs to an Employer. Please use employer portal to signin";
        }
      }
    } on eos.DioError catch (e) {
      if (e.response != null) {
        if (e.response!.data != null) {
          if (e.response!.statusCode == 400 &&
              e.response!.data["data"] != null) {
            print("Error returned: " + e.response!.data["data"].toString());
            return (e.response!.data["data"]);
          } else {
            return "A network or server error occured";
          }
        } else {
          return "A network or server error occured";
        }
      }

      // return e.response!.statusCode;
    }
  }

  Future<dynamic> loginEmployer({
    @required String? email,
    @required String? password,
  }) async {
    var dio = eos.Dio();

    var formData = eos.FormData.fromMap({
      'options': email,
      'password': password,
    });

    try {
      var response = await dio.post('${baseUrl}login',
          data: formData,
          options: eos.Options(
            headers: {
              "accept": "application/json",
            },
          ));

      // print(response.data.toString());
      var data = response.data;
      if (response.statusCode == 200 || response.statusCode == 201) {
        Hive.box("artisan").put("employer_user_data", data);
        Hive.box("artisan").put("user_role", "Employer");

        print("SUCCESSFUL!");
        return "success";
      }
    } on eos.DioError catch (e) {
      print("ERROR!");
      if (e.response != null) {
        if (e.response!.data != null) {
          if (e.response!.statusCode == 400 &&
              e.response!.data["data"] != null) {
            return (e.response!.data["data"]);
          } else {
            return "A network or server error occured";
          }
        } else {
          return "A network or server error occured";
        }
      }

      // return e.response!.statusCode;
    }
  }
}
