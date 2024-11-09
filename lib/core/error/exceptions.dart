class ServerException implements Exception {
  const ServerException({this.trace, this.message});
  final StackTrace? trace;
  final String? message;
}

class CachedException implements Exception {
  const CachedException({this.trace, this.message});
  final StackTrace? trace;
  final String? message;
}