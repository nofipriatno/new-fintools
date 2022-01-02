import 'package:fintools/domain/core/constant/app_color.dart';
import 'package:fintools/domain/core/constant/app_font.dart';
import 'package:fintools/presentation/component/bottom_sheet/custom_bottom_sheet.dart';
import 'package:flutter/material.dart';

class CustomAppBar {
  static surveyAppBar(BuildContext context, {String? title}) {
    return AppBar(
      iconTheme: IconThemeData(color: AppColor.gold),
      title: title != null
          ? Text(
              title,
              style: AppFont.text13Bold.copyWith(color: AppColor.blue),
            )
          : null,
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () => CustomBottomSheet.logout(context),
            child: CircleAvatar(
              child: const Text('AH'),
              backgroundColor: AppColor.gold,
              radius: 30,
            ),
          ),
        )
      ],
    );
  }
}
