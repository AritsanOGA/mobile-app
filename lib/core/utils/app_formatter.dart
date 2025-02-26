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

String formatCardinalDate(DateTime date) {
  int day = date.day;
  String suffix = (day >= 11 && day <= 13)
      ? "th"
      : ["th", "st", "nd", "rd"][day % 10 > 3 ? 0 : day % 10];
  return "$day$suffix, ${DateFormat('MMM y').format(date)}";
}

String formatDateString(String dateStr) {
  // Convert string to DateTime
  // Ensure proper zero-padding for months and days
  List<String> parts =
      dateStr.split('-'); // Split "2025-2-28" → ["2025", "2", "28"]
  String formattedDateStr =
      "${parts[0]}-${parts[1].padLeft(2, '0')}-${parts[2].padLeft(2, '0')}";

  // Convert to DateTime
  DateTime date = DateTime.parse(formattedDateStr);

  // Extract day, month, and year
  int day = date.day;
  String month = DateFormat('MMM').format(date); // "Feb"
  String year = DateFormat('y').format(date); // "2025"

  // Add correct ordinal suffix (st, nd, rd, th)
  String suffix = (day >= 11 && day <= 13)
      ? "th"
      : ["th", "st", "nd", "rd"][day % 10 > 3 ? 0 : day % 10];

  return "$day$suffix, $month $year";
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
