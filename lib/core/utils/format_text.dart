String removeHtmlTags(String htmlString) {
  final RegExp htmlRegExp = RegExp(r'<[^>]*>');
  return htmlString.replaceAll(htmlRegExp, '');
}
