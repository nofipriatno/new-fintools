class AppEndpoint {
  AppEndpoint._();

  static const String _subdomain = 'ms-api';
  static const String _master = 'master';

  static const String surveyCheckingFormProcess =
      '$_subdomain/$_master/getcheckingformprocess';

  static const String surveyFormUpload =
      '$_subdomain/$_master/getformupload';
}
