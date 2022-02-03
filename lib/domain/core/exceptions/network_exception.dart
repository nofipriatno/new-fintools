class NetworkException implements Exception {
  late dynamic message;
  int? statusCode;

  NetworkException({this.message, this.statusCode});
}
