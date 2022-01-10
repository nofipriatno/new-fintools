import 'package:fintools/domain/core/constant/app_color.dart';
import 'package:fintools/domain/core/constant/app_string.dart';
import 'package:fintools/domain/core/interface/i_storage.dart';
import 'package:fintools/presentation/component/button/custom_button.dart';
import 'package:fintools/presentation/on_boarding/on_boarding_page.dart';
import 'package:fintools/utilities/i10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class CustomDialog {
  final IStorage _storage;

  CustomDialog(this._storage);

  static input(BuildContext context,
      {required String title, required String buttonText}) {
    TextEditingController _internalController = TextEditingController();
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) =>
          AlertDialog(
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
      builder: (_) =>
          AlertDialog(
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

  logout(BuildContext context,
      {required String title, required String message}) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) =>
          AlertDialog(
            title: Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
              ),
            ),
            actions: [
              SizedBox(
                width: double.infinity,
                child: CustomButton.normalButton(
                    I10n.current.button_ok, () async {
                  final box = await _storage.openBox(
                      StorageConstants.userSurvey);
                  await _storage.deleteString(box,
                      key: AppString.surveyCredentialKey);
                  await _storage.deleteString(
                      box, key: AppString.surveyIsLoginKey);
                  await _storage.close(box);
                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (_) => OnBoardingPage()), (
                          route) => false);
                }),
              )
            ],
            content: Text(message, textAlign: TextAlign.justify),
          ),
    );
  }
}
