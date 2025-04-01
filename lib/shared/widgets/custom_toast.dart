import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastUtils {
  static showRedToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.TOP,
        // timeInSecForIos: 4,
        backgroundColor: Colors.red,
        textColor: AppColors.kwhite,
        fontSize: 16.0);
  }

  static showGreenToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.TOP,
        // timeInSecForIos: 4,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  static showToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.TOP,
        // timeInSecForIos: 4,
        backgroundColor: Colors.white,
        textColor: Colors.blue,
        fontSize: 16.0);
  }

  static showToastCenter(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        // timeInSecForIos: 4,
        backgroundColor: Colors.white,
        textColor: Colors.blue,
        fontSize: 16.0);
  }
}
