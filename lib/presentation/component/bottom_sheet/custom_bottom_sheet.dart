import 'package:fintools/domain/core/constant/app_color.dart';
import 'package:fintools/domain/core/constant/app_font.dart';
import 'package:fintools/presentation/component/dialog/custom_dialog.dart';
import 'package:fintools/utilities/i10n/l10n.dart';
import 'package:flutter/material.dart';

class CustomBottomSheet {
  static logout(BuildContext context) {
    showModalBottomSheet(
        context: context,
        enableDrag: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        builder: (context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  I10n.current.app_name,
                  style: AppFont.text18Bold.copyWith(color: AppColor.gold),
                ),
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: AppColor.gold,
              ),
              ListTile(
                title: Text(I10n.current.logout, style: AppFont.text14Normal),
                trailing: const Icon(Icons.logout),
                onTap: () => CustomDialog.logout(context,
                    title: I10n.current.confirmation,
                    message: I10n.current.are_you_sure_to_logout),
              )
            ],
          );
        });
  }
}
