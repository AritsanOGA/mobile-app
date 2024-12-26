import 'package:intl/intl.dart';

String removeHtmlTags(String htmlString) {
  final RegExp htmlRegExp = RegExp(r'<[^>]*>');
  return htmlString.replaceAll(htmlRegExp, '');
}

class AppFormatter {
  static final formatCurrency =
      NumberFormat.currency(locale: 'en_US', symbol: '₦');

  static final formatCurrencyNoDecimal =
      NumberFormat.currency(locale: 'en_US', symbol: '₦', decimalDigits: 0);
  static final formatNumber = NumberFormat.decimalPattern();

  static final dateFormatter = DateFormat('dd-MM-yyyy');
  static final monthYearFormatter = DateFormat('MM-yyyy');
  static final dateFormatterYMD = DateFormat('yyyy-MM-dd');
  static final dateFormatterMonth = DateFormat('MMM');
  static final dateTimeFormatter = DateFormat('dd-MM-yyyy hh:mm a');
  static final timeFormatter = DateFormat('hh:mm a');
  static final kNumberFormat = NumberFormat.compactCurrency(
    decimalDigits: 0,
    symbol: '',
  );
}

String getTimeAgo(DateTime timestamp) {
  final now = DateTime.now();
  final difference = now.difference(timestamp);

  if (difference.inDays == 0) {
    return 'Today';
  } else if (difference.inDays == 1) {
    return 'Yesterday';
  } else if (difference.inDays == 2) {
    return 'Two days ago';
  } else if (difference.inDays < 7) {
    return '${difference.inDays} days ago';
  } else {
    return DateFormat.yMMMMd().format(timestamp);
  }
}

extension StringExtension on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }
}
