import 'package:flutter/material.dart';

class CustomScaffold {
  static normal(BuildContext context,
      {required Widget body,
      PreferredSizeWidget? appBar,
      bool resize = false}) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar,
        resizeToAvoidBottomInset: resize,
        body: body,
      ),
    );
  }
}
