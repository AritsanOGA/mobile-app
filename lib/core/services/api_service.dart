// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';

import 'package:artisan_oga/core/app_constants/app_api_endpoints.dart';
import 'package:artisan_oga/core/error/exceptions.dart';
import 'package:artisan_oga/core/routes/app_routes.dart';
import 'package:artisan_oga/core/services/local_storage.dart';
import 'package:artisan_oga/core/services/user_service.dart';
import 'package:artisan_oga/presentation/welcome_page_screen/welcome_page_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

abstract class ApiService {
  //? For making get request to the endpoint
  Future<dynamic> get({
    required String url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  });

  //? For making post request to the endpoint
  Future<dynamic> post({
    required String url,
    required dynamic body,
    Map<String, String> headers,
  });

  //? For making put request to the endpoint
  Future<dynamic> put({
    required String url,
    required dynamic body,
    Map<String, String> headers,
  });

  //? For making patch request to the endpoint
  Future<dynamic> patch({
    required String url,
    required Map<String, dynamic> body,
    Map<String, String> headers,
  });

  //? For making delete request to the endpoint
  Future<dynamic> delete({
    required String url,
    Map<String, dynamic>? queryParameters,
    Map<String, String> headers,
  });
// y [MapEntry(email: jaiyeola@yopmail.com), MapEntry(password: Jaiyeola20.), MapEntry(password_confirmation: Jaiyeola20.), MapEntry(country: 4), MapEntry(fullname: Jaiyeloa Adam), MapEntry(states: Adrar), MapEntry(city: epe), MapEntry(gender: Male), MapEntry(phone: 09055899858), MapEntry(DateOfBirth: 01/01/2002), MapEntry(employment_history: No Employment History), MapEntry(company_name: ), MapEntry(end_year: ), MapEntry(start_year: ), MapEntry(job_title: ), MapEntry(job_description: ), MapEntry(education_qualification: No Education), MapEntry(school_name: ), MapEntry(year_of_graduation: ), MapEntry(award_title: ), MapEntry(course_name: ), MapEntry(categories: 5), MapEntry(artisan_skills: Child Care ), MapEntry(guarantor_name: gbenga), MapEntry(guarantor_email: gbenga@yopmail.com), MapEntry(guarantor_address: gbenga@yopmail.com), MapEntry(job_type: Full Time), MapEntry(years_of_experience: 7), MapEntry(StreetAddress: epe), MapEntry(service_description: build app), MapEntry(guarantor_phone: 09078487477)]
  //? For downloading file from the endpoint
  Future<void> download({
    required String url,
    required String path,
    required Map<String, String> header,
  });
}

class ApiServiceImpl implements ApiService {
  ApiServiceImpl(this._dio, this.localStorage) {
    _log.i('Api constructed and DIO setup register');
  }
  final _log = Logger();
  final Dio _dio;
  final LocalStorageService localStorage;

  @override
  Future<dynamic> get({
    required String url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async {
    _log.i(
      'Making Get Request to $url with the following '
      'data \n${jsonEncode(queryParameters)}',
    );
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        url.toString(),
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
          followRedirects: false,
          validateStatus: (status) => true,
          // validateStatus: (status) {
          //   return status != null &&
          //       (status < 400 || status == 400 || status == 500);
          // }
        ),
      );
      print('myres ${response}');
      //    if (response.statusCode != null &&
      //     response.statusCode! >= 300 &&
      //     response.statusCode! < 500) {
      //   throw Exception('Client-side error: ${response.statusCode}');
      // } else if (response.statusCode != null && response.statusCode! >= 500) {
      //   throw Exception('Server-side error: ${response.statusCode}');
      // }
      _log.i('Response from $url \n${response.data}');
      return response.data;
    } on DioException catch (error, trace) {
      // if (error.response?.statusCode == 500) {
      //   _log.e('Server error occurred: $error.response.data}');
      //   throw ServerException(
      //       message: 'Internal Server Error: ${error.response?.data}');
      // }
      _log.e('Error from $url', error: error.response?.statusCode);
      throw ServerException(
        trace: trace,
        message:
            //error.response?.data['msg'] as String? ??
            'An unknown error occurred',
      );
    }
  }

  @override
  Future<dynamic> post({
    required String url,
    required dynamic body,
    Map<String, String>? headers,
  }) async {
    //final jsonBody = jsonEncode(body);
    print('hiii ${body.toString()}');
    // _log.i(
    //   'Making Post Request to $url with the following data'
    //   ' \n${jsonBody.substring(0, jsonBody.length ~/ 2)}',
    // );
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        url.toString(),
        data: body,
        options: Options(
          headers: headers,
          followRedirects: false,
          validateStatus: (status) => true,
        ),
      );

      if (response.statusCode != null &&
          response.statusCode! >= 300 &&
          response.statusCode! < 500) {
        print('my error ${response.data?['msg']}');
        throw ServerException(
          trace: StackTrace.current,
          message: '${response.data?['data'] ?? 'Something went wronng'}',
        );
      } else if (response.statusCode != null && response.statusCode! >= 500) {
        throw ServerException(
          trace: StackTrace.current,
          message: ' ${response.data?['message'] ?? 'Something went wronng'}',
        );

        //Exception('Server-side error: ${response.statusCode}');
      }

      _log.i('Response from $url \n${response.data}');
      print('statys${response.statusCode}');
      return response.data;
    } on DioException catch (error, trace) {
      _log.e('Error from ', error: error.message);
      print('errrpr ni ${error.response?.data['data']}');
      throw ServerException(
        trace: trace,
        message: error.response?.data['message'] ?? 'Error Occuured',
      );
    }
  }

  @override
  Future<dynamic> put({
    required String url,
    required dynamic body,
    Map<String, String>? headers,
  }) async {
    final jsonBody = jsonEncode(body);
    _log.i(
      'Making Post Request to $url with the following data'
      ' \n${jsonBody.substring(0, jsonBody.length ~/ 2)}',
    );
    try {
      final response = await _dio.put<Map<String, dynamic>>(
        url.toString(),
        data: body,
        options: Options(
          headers: headers,
        ),
      );
      _log.i('Response from $url \n${response.data}');
      return response.data;
    } on DioException catch (error, trace) {
      _log.e('Error from $url', error: error.response?.data['message']);
      throw ServerException(
        trace: trace,
        message: error.response?.data['msg'] as String?,
      );
    }
  }

  @override
  Future<dynamic> patch({
    required String url,
    required Map<String, dynamic> body,
    Map<String, String>? headers,
  }) async {
    _log.i('Making Patch Request to $url with the following data \n$body');
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        url.toString(),
        data: body,
        options: Options(
          headers: headers,
        ),
      );

      _log.i('Response from $url \n${response.data}');
      return response.data;
    } on DioException catch (error, trace) {
      _log.e('Error from $url', error: error.toString());
      throw ServerException(
        trace: trace,
        message: error.response?.data['message'] as String?,
      );
    }
  }

  @override
  Future<dynamic> delete({
    required String url,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    _log.i('Making Delete Request to $url.');
    try {
      final response = await _dio.delete<Map<String, dynamic>>(
        url.toString(),
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );
      _log.i('Response from $url \n${response.data}');
      return response.data;
    } on DioException catch (error, trace) {
      _log.e('Error from $url', error: error.toString());
      throw ServerException(
        trace: trace,
        message: error.response?.data['message'] as String?,
      );
    }
  }

  @override
  Future<void> download({
    required String url,
    required String path,
    required Map<String, String> header,
  }) async {
    try {
      final response = await _dio.download(
        url.toString(),
        path,
        onReceiveProgress: (received, total) {
          _log.e('$received $total $path');
        },
        options: Options(
          headers: header,
        ),
      );
      _log.i('Response from $url \n${response.data}');
      return response.data;
    } on DioException catch (error, trace) {
      _log.e('Error from $url', error: error.toString());
      throw ServerException(
        trace: trace,
        message: error.response?.data['message'] as String?,
      );
    }
  }

  Future<void> refreshToken() async {
    final response = await _dio.post(
      AppApiEndpoint.refreshToken.toString(),
      data: {'rtoken': '${UserService().authData?.user.refreshToken}'},
      options: Options(
        headers: {
          'Authorization': 'Bearer ${UserService().authData?.user.token}',
          'Content-Type': 'application/json',
        },
      ),
    );

    if (response.statusCode == 200) {
      final newRefreshToken = response.data['data']['token'];
      print('hello${response.data['data']['token']}');
      localStorage.saveToDisk('refreshToken', newRefreshToken);
      print('new ref${localStorage.getFromDisk('refreshToken')}');
    } else {
      await Navigator.pushAndRemoveUntil(
        AppRoutes.navigatorKey.currentContext!,
        MaterialPageRoute<Widget>(
          builder: (_) => WelcomePageScreen(
            key: UniqueKey(),
          ),
        ),
        (route) => false,
      );
    }
  }

  Future<Response<dynamic>> _retry(RequestOptions requestOption) {
    final option = Options(
      method: requestOption.method,
      headers: requestOption.headers,
      sendTimeout: const Duration(seconds: 5),
    );
    print('christ on RETRY ${requestOption.path}');
    print('christ on HEADER ${option.headers}');
    return _dio.request(
      requestOption.path,
      data: requestOption.data,
      queryParameters: requestOption.queryParameters,
      options: option,
    );
  }
}
