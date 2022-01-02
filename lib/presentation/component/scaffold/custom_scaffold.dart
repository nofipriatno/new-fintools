import 'package:flutter/material.dart';

class CustomScaffold {
  static normal(BuildContext context,
      {required Widget body, PreferredSizeWidget? appBar}) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar,
        resizeToAvoidBottomInset: false,
        body: body,
      ),
    );
  }
}
