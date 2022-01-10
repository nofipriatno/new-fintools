import 'package:fintools/domain/core/constant/app_color.dart';
import 'package:fintools/domain/core/constant/app_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CustomTextField {
  static underline(
      {required TextEditingController controller,
      required String title,
      bool obscure = false,
      bool readOnly = false}) {
    return _Underline(
      controller: controller,
      title: title,
      obscure: obscure,
    );
  }
}

class _Underline extends HookWidget {
  final TextEditingController controller;
  final String title;
  final bool obscure;
  final bool readOnly;

  const _Underline(
      {Key? key,
      required this.controller,
      required this.title,
      this.obscure = false,
      this.readOnly = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _obscure = useState(true);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: TextField(
          readOnly: readOnly,
          obscureText: obscure ? _obscure.value : false,
          controller: controller,
          decoration: InputDecoration(
            suffixIcon: obscure
                ? InkWell(
                    onTap: () => _obscure.value = !_obscure.value,
                    child: const Icon(Icons.remove_red_eye_outlined))
                : null,
            hintText: title,
            hintStyle: AppFont.text14W300.copyWith(color: AppColor.blue),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColor.itemSurveyDivider),
            ),
          ),
        ),
      ),
    );
  }
}
