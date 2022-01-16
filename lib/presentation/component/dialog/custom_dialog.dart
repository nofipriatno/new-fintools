import 'package:fintools/domain/core/constant/app_asset.dart';
import 'package:fintools/domain/core/constant/app_color.dart';
import 'package:fintools/domain/core/constant/app_font.dart';
import 'package:fintools/domain/core/constant/app_string.dart';
import 'package:fintools/domain/core/interface/i_storage.dart';
import 'package:fintools/injection.dart';
import 'package:fintools/presentation/component/button/custom_button.dart';
import 'package:fintools/presentation/on_boarding/on_boarding_page.dart';
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

  static info(
    BuildContext context, {
    required String title,
    required String message,
    VoidCallback? action,
  }) {
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
              if (action == null) {
                Navigator.pop(context);
              } else {
                action();
              }
            }),
          )
        ],
        content: Text(message, textAlign: TextAlign.justify),
      ),
    );
  }

  static logout(BuildContext context,
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
            child: CustomButton.normalButton(I10n.current.button_ok, () async {
              final _storage = getIt<IStorage>();
              final box = await _storage.openBox(StorageConstants.userSurvey);
              await _storage.deleteString(box,
                  key: AppString.surveyCredentialKey);
              await _storage.deleteString(box, key: AppString.surveyIsLoginKey);
              await _storage.close(box);
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => OnBoardingPage()),
                  (route) => false);
            }),
          )
        ],
        content: Text(message, textAlign: TextAlign.justify),
      ),
    );
  }

  static file(BuildContext context) {
    return showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Center(
          child: Text(
            I10n.current.choose,
            textAlign: TextAlign.center,
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () => Navigator.pop(context, 1),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 26, vertical: 23),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.cardBackground,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        I10n.current.take_picture,
                        style:
                            AppFont.text14Bold.copyWith(color: AppColor.blue),
                      ),
                    ),
                    Image.asset(AppAssets.icSurveyCamera)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            InkWell(
              onTap: () => Navigator.pop(context, 2),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 26, vertical: 23),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.cardBackground,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        I10n.current.choose_file,
                        style:
                            AppFont.text14Bold.copyWith(color: AppColor.blue),
                      ),
                    ),
                    Image.asset(AppAssets.icSurveyFile)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            InkWell(
              onTap: () => Navigator.pop(context, 3),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 26, vertical: 23),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.cardBackground,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        I10n.current.take_gallery,
                        style:
                            AppFont.text14Bold.copyWith(color: AppColor.blue),
                      ),
                    ),
                    Image.asset(AppAssets.icSurveyGallery)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
