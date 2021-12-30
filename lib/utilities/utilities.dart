import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:intl/intl.dart';

class AppUtils {
  AppUtils._();

  static void get showLoading => EasyLoading.show();

  static void get dismissLoading {
    if (EasyLoading.isShow) EasyLoading.dismiss();
  }

  static DateTime? convertStringToDate(String? date) {
    if (date == null) return null;
    return DateFormat().parse(date);
  }

  static bool isAfter(DateTime? first, DateTime? second) {
    if (first == null) return false;
    if (second == null) return true;
    return first.isAfter(second);
  }

  static bool isBefore(DateTime? first, DateTime? second) {
    if (first == null || second == null) return false;
    return first.isBefore(second);
  }

  static bool isSameMomentAs(DateTime? first, DateTime? second) {
    if (first == null || second == null) return false;
    return first.isAtSameMomentAs(second);
  }
}
