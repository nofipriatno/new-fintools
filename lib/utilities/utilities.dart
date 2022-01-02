import 'package:fintools/utilities/i10n/l10n.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:intl/intl.dart';

class AppUtils {
  AppUtils._();

  static void get showLoading => EasyLoading.show();

  static void get dismissLoading {
    if (EasyLoading.isShow) EasyLoading.dismiss();
  }

  static String? formatDate(DateTime? date,
      {String format = 'yyyy-MM-dd HH:mm:ss'}) {
    if (date == null) return null;
    final result = DateFormat(format, I10n.current.lang).format(date);
    return result;
  }

  static DateTime? normalizeDateTime(DateTime? date) {
    final formatted = formatDate(date);
    final result = convertStringToDate(formatted);
    return result;
  }

  static DateTime? convertStringToDate(String? date,
      {String format = 'yyyy-MM-dd HH:mm:ss'}) {
    if (date == null) return null;
    try {
      final result = DateFormat(format, I10n.current.lang).parse(date);
      return result;
    } catch (e) {
      return null;
    }
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

  static String convertToToday({required DateTime date}) {
    try {
      String result = '';
      DateTime? now = normalizeDateTime(DateTime.now());
      DateTime? param = normalizeDateTime(date);
      if (isSameMomentAs(now, param)) {
        result += '${I10n.current.today} ${formatDate(date)!}';
      } else {
        result += formatDate(date, format: 'EEEE dd MMM,yyyy HH:mm')!;
      }
      return result;
    } catch (e) {
      return 'Error';
    }
  }
}
