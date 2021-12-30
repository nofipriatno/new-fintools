class FailureException implements Exception {
  String? code;
  String? message;

  FailureException({
    this.code,
    this.message,
  });
}
