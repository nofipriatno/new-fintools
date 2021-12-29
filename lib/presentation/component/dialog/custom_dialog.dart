import 'package:fintools/domain/core/constant/app_color.dart';
import 'package:fintools/presentation/component/button/custom_button.dart';
import 'package:fintools/utilities/i10n/l10n.dart';
import 'package:flutter/material.dart';

class CustomDialog {
  static input(BuildContext context, String title) {
    TextEditingController _internalController = TextEditingController();
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) => AlertDialog(
        title: Center(child: Text(title)),
        actions: [
          SizedBox(
            width: double.infinity,
            child: CustomButton.normalButton(I10n.current.login, () {
              Navigator.pop(context, _internalController.text);
            }),
          )
        ],
        content: Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.lightGrey),
          ),
          child: TextField(
            controller: _internalController,
          ),
        ),
      ),
    );
  }
}
