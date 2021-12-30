import 'package:fintools/domain/core/constant/app_color.dart';
import 'package:fintools/presentation/component/button/custom_button.dart';
import 'package:fintools/utilities/i10n/l10n.dart';
import 'package:flutter/material.dart';

class CustomDialog {
  static input(BuildContext context,
      {required String title, required String buttonText}) {
    TextEditingController _internalController = TextEditingController();
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) => AlertDialog(
        title: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
          ),
        ),
        actions: [
          SizedBox(
            width: double.infinity,
            child: CustomButton.normalButton(buttonText, () {
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

  static info(BuildContext context,
      {required String title, required String message}) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) => AlertDialog(
        title: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
          ),
        ),
        actions: [
          SizedBox(
            width: double.infinity,
            child: CustomButton.normalButton(I10n.current.button_ok, () {
              Navigator.pop(context);
            }),
          )
        ],
        content: Text(message, textAlign: TextAlign.justify),
      ),
    );
  }
}
