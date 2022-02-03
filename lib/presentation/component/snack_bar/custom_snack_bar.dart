import 'package:fintools/domain/core/constant/app_color.dart';
import 'package:fintools/domain/core/constant/app_font.dart';
import 'package:flutter/material.dart';

class CustomSnackBar {
  static showNormal(BuildContext context, {required String message}) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: AppFont.text14Bold.copyWith(color: AppColor.white),
      ),
      backgroundColor: AppColor.blue,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
