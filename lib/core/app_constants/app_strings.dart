class AppStrings {
  static const genericErrorMessage = 'Something went wrong';

  static List<String> yearList1980to2025 = [
    '--Select--',
    ...List<String>.generate(
        2030 - 1980 + 1, (index) => (1980 + index).toString()),
  ];
}
