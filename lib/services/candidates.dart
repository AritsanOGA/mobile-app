import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:dio/dio.dart' as eos;

class Candidates {
  //static String userId = Hive.box('name').get('userID');
  static String baseUrl = "http://artisanoga.raffle-draw.name.ng/api/v1/";

  Future<dynamic> getJobsForYou(String user_id) async {
    var dio = eos.Dio();

    try {
      var response =
          await dio.get('${baseUrl}candidate/jobs-for-you?user_id=${user_id}',
              options: eos.Options(
                headers: {
                  "accept": "application/json",
                },
              ));

      // print(response.data.toString());
      var data = response.data;
      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.toString());
        if (data["msg"] == "Success") {
          //  print(data["data"].toString());
          print(data["data"]);
          return data["data"];
        } else {
          return [];
        }
      }
    } on eos.DioError catch (e) {
      print("Error:" + e.message.toString());
      return 400;
    }
  }

  Future<dynamic> getAwards(String user_id) async {
    var dio = eos.Dio();

    try {
      var response =
          await dio.get('${baseUrl}candidate/profile/awards?user_id=${user_id}',
              options: eos.Options(
                headers: {
                  "accept": "application/json",
                },
              ));

      // print(response.data.toString());
      var data = response.data;
      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.toString());
        if (data["msg"] == "Success") {
          //  print(data["data"].toString());
          print(data["data"]);
          return data["data"];
        } else {
          return [];
        }
      }
    } on eos.DioError catch (e) {
      print("Error:" + e.message.toString());
      return 400;
    }
  }

  Future<dynamic> getEducation(String user_id) async {
    var dio = eos.Dio();

    try {
      var response = await dio.get(
          '${baseUrl}candidate/profile/education?user_id=${user_id}',
          options: eos.Options(
            headers: {
              "accept": "application/json",
            },
          ));

      // print(response.data.toString());
      var data = response.data;
      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.toString());
        if (data["msg"] == "Success") {
          //  print(data["data"].toString());
          print(data["data"]);
          return data["data"];
        } else {
          return [];
        }
      }
    } on eos.DioError catch (e) {
      print("Error:" + e.message.toString());
      return 400;
    }
  }

  Future<dynamic> getExperience(String user_id) async {
    var dio = eos.Dio();

    try {
      var response = await dio.get(
          '${baseUrl}candidate/profile/experience?user_id=${user_id}',
          options: eos.Options(
            headers: {
              "accept": "application/json",
            },
          ));

      // print(response.data.toString());
      var data = response.data;
      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.toString());
        if (data["msg"] == "Success") {
          //  print(data["data"].toString());
          print(data["data"]);
          return data["data"];
        } else {
          return [];
        }
      }
    } on eos.DioError catch (e) {
      print("Error:" + e.message.toString());
      return 400;
    }
  }

  Future<dynamic> searchJobs(String searchTerm) async {
    var dio = eos.Dio();

    try {
      var response = await dio.get(
          '${baseUrl}candidate/job/search?search_item=$searchTerm',
          options: eos.Options(
            headers: {
              "accept": "application/json",
            },
          ));

      // print(response.data.toString());
      var data = response.data;
      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.toString());
        if (data["msg"] == "Success") {
          //  print(data["data"].toString());
          print(data["data"]);
          return data["data"];
        } else {
          return [];
        }
      }
    } on eos.DioError catch (e) {
      print("Error:" + e.message.toString());
      return 400;
    }
  }
}
