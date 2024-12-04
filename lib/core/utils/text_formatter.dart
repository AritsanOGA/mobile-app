import 'package:flutter/services.dart';

class DateInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // Remove any non-digit characters
    var newText = newValue.text.replaceAll(RegExp('[^0-9]'), '');

    // Add slashes to format MM/DD/YYYY
    if (newText.length > 2) {
      newText = '${newText.substring(0, 2)}/${newText.substring(2)}';
    }
    if (newText.length > 5) {
      newText = '${newText.substring(0, 5)}/${newText.substring(5)}';
    }

    // Limit the input to 10 characters (MM/DD/YYYY format)
    if (newText.length > 10) {
      newText = newText.substring(0, 10);
    }

    // Return the updated value
    return newValue.copyWith(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}

class DateInputFormatter2 extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // Remove any non-digit characters
    var newText = newValue.text.replaceAll(RegExp('[^0-9]'), '');

    // Add dashes to format YYYY-MM-DD
    if (newText.length > 4) {
      newText = '${newText.substring(0, 4)}-${newText.substring(4)}';
    }
    if (newText.length > 7) {
      newText = '${newText.substring(0, 7)}-${newText.substring(7)}';
    }

    // Limit the input to 10 characters (YYYY-MM-DD format)
    if (newText.length > 10) {
      newText = newText.substring(0, 10);
    }

    // Return the updated value
    return newValue.copyWith(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}
