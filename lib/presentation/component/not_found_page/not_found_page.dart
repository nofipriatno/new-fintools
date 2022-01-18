import 'package:fintools/domain/core/constant/app_font.dart';
import 'package:fintools/presentation/component/button/custom_button.dart';
import 'package:fintools/presentation/component/scaffold/custom_scaffold.dart';
import 'package:fintools/utilities/i10n/l10n.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotFoundPage extends HookWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold.normal(
      context,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              I10n.current.still_development,
              style: AppFont.text18Bold,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: ScreenUtil().screenWidth / 2,
                child: CustomButton.normalButton(I10n.current.back_to_onboarding,
                    () {
                  Navigator.pop(context);
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
