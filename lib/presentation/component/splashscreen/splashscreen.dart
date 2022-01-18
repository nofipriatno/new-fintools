import 'package:fintools/domain/core/constant/app_asset.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Image.asset(
          AppAssets.imagesSplashScreen,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
