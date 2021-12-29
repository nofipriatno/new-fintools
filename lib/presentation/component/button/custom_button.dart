import 'package:fintools/domain/core/constant/app_color.dart';
import 'package:fintools/domain/core/constant/app_font.dart';
import 'package:flutter/material.dart';

class CustomButton {
  static normalButton(String title, void Function() onTap) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: AppColor.blue,
        padding: const EdgeInsets.symmetric(vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onTap,
      child: Text(
        title,
        style: AppFont.text14Normal.copyWith(color: AppColor.white),
      ),
    );
  }
}
