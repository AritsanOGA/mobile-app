import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:dio/dio.dart' as eos;

class Default {
  //static String userId = Hive.box('name').get('userID');
  static String baseUrl = "http://artisanoga.raffle-draw.name.ng/api/v1/";

  Future<dynamic> getCountries() async {
    var dio = eos.Dio();

    try {
      var response = await dio.get('${baseUrl}countries',
          options: eos.Options(
            headers: {
              "accept": "application/json",
            },
          ));

      // print(response.data.toString());
      var data = response.data;
      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.toString());
        if (data["msg"] == "success") {
          print("Countries: " + data["data"].toString());
          return data["data"];
        } else {
          print("failed");
          return [];
        }
      }
    } on eos.DioException catch (e) {
      print("Error:" + e.message.toString());
      return [];
    }
  }

  Future<dynamic> getStates(String countryId) async {
    var dio = eos.Dio();

    try {
      var response =
          await dio.get('${baseUrl}countries/states?country_id=$countryId',
              options: eos.Options(
                headers: {
                  "accept": "application/json",
                },
              ));

      // print(response.data.toString());
      var data = response.data;
      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.toString());
        if (data["msg"] == "success") {
          print("States: " + data["data"].toString());
          return data["data"];
        } else {
          print("failed");
          return [];
        }
      }
    } on eos.DioException catch (e) {
      print("Error:" + e.message.toString());
      return [];
    }
  }

  Future<dynamic> getCategories() async {
    var dio = eos.Dio();

    try {
      var response = await dio.get('${baseUrl}categories',
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
          return data["data"];
        } else {
          return [];
        }
      }
    } on eos.DioException catch (e) {
      print("Error:" + e.message.toString());
      return 400;
    }
  }

  Future<dynamic> getJobCategories() async {
    var dio = eos.Dio();

    try {
      var response = await dio.get('${baseUrl}categories-with-jobs',
          options: eos.Options(
            headers: {
              "accept": "application/json",
            },
          ));

      // print(response.data.toString());
      var data = response.data;
      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.toString());
        if (data["msg"] == "success") {
          //  print(data["data"].toString());
          print(data["data"]);
          return data["data"];
        } else {
          return [];
        }
      }
    } on eos.DioException catch (e) {
      print("Error:" + e.message.toString());
      return 400;
    }
  }

  Future<dynamic> getEmployerJobs(String user_id) async {
    var dio = eos.Dio();

    try {
      var response =
          await dio.get('${baseUrl}employer/get-all-jobs?user_id=${user_id}',
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
    } on eos.DioException catch (e) {
      print("Error:" + e.message.toString());
      return [];
    }
  }

  Future<dynamic> getAllJobApplicants(String user_id) async {
    var dio = eos.Dio();

    var formData = eos.FormData.fromMap({
      'user_id': user_id,
    });

    try {
      var response = await dio.post('${baseUrl}employer/applicants',
          data: formData,
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
    } on eos.DioException catch (e) {
      print("Error:" + e.message.toString());
      return [];
    }
  }

  Future<dynamic> getJobApplicants(String job_id) async {
    print("job ID " + job_id);
    var dio = eos.Dio();

    var formData = eos.FormData.fromMap({
      'job_id': job_id,
    });

    try {
      var response = await dio.post('${baseUrl}employer/jobs/applicants',
          data: formData,
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
    } on eos.DioException catch (e) {
      print("Error:" + e.message.toString());
      return [];
    }
  }

  Future<dynamic> applyForJob(
      {required String job_id, required String user_id}) async {
    var dio = eos.Dio();

    var formData = eos.FormData.fromMap({
      'job_id': job_id,
      'user_id': user_id,
    });

    try {
      var response = await dio.post('${baseUrl}candidate/job/apply',
          data: formData,
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
    } on eos.DioException catch (e) {
      print("Error:" + e.message.toString());
      return [];
    }
  }

  Future<dynamic> getPayments(String user_id) async {
    var dio = eos.Dio();

    try {
      var response =
          await dio.get('${baseUrl}employer/payments?user_id=${user_id}',
              options: eos.Options(
                headers: {
                  "accept": "application/json",
                },
              ));

      // print(response.data.toString());
      var data = response.data;
      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.toString());
        if (data["msg"] == "success") {
          //  print(data["data"].toString());
          print(data["data"]);
          return data["data"];
        } else {
          return [];
        }
      }
    } on eos.DioException catch (e) {
      print("Error:" + e.message.toString());
      return [];
    }
  }

  Future<dynamic> getSkills({@required int? categoryID}) async {
    var dio = eos.Dio();

    try {
      var response = await dio.get(
          '${baseUrl}categories/skills?category_id=' + categoryID.toString(),
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
          return data["data"];
        } else {
          return [];
        }
      }
    } on eos.DioException catch (e) {
      print("Error:" + e.message.toString());
      return [];
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

        print("SUCCESSFUL!");
        return "success";
      }
    } on eos.DioException catch (e) {
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
