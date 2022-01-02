class AppEndpoint {
  AppEndpoint._();

  static const String _subdomain = 'ms-api';
  static const String _master = 'master';
  static const String _auth = 'auth';
  static const String _task = 'task';

  static const String surveyCheckingFormProcess =
      '$_subdomain/$_master/getcheckingformprocess';

  /// Survey Segment
  static const String surveyFormUpload = '$_subdomain/$_master/getformupload';
  static const String surveyZipcode = '$_subdomain/$_master/getzipcode';
  static const String surveyLogin = '$_subdomain/$_auth/login';
  static const String surveyTask = '$_subdomain/$_task/gettasklistsurveyor';
}
