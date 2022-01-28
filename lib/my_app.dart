import 'package:alice/alice.dart';
import 'package:fintools/application/app_preferences/app_preferences_bloc.dart';
import 'package:fintools/presentation/component/splashscreen/splashscreen.dart';
import 'package:fintools/presentation/interceptor/interceptor_page.dart';
import 'package:fintools/presentation/on_boarding/on_boarding_page.dart';
import 'package:fintools/utilities/i10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:injectable/injectable.dart';

import 'domain/core/constant/app_color.dart';
import 'domain/core/constant/app_string.dart';
import 'infrastructure/core/app_env.dart';

@injectable
class MyApp extends StatelessWidget {
  final Alice alice;

  MyApp({required this.alice});

  Widget page = const SplashScreen();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppPreferencesBloc, AppPreferencesState>(
      builder: (context, state) => ScreenUtilInit(
        designSize: const Size(360, 645),
        builder: () => MaterialApp(
          debugShowCheckedModeBanner: AppEnvironment.env == AppString.appDev,
          localizationsDelegates: const [
            I10n.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''),
            Locale('id', ''),
          ],
          navigatorKey: alice.getNavigatorKey(),
          theme: ThemeData(
            primaryColor: AppColor.white,
            backgroundColor: AppColor.white,
            scaffoldBackgroundColor: AppColor.white,
            primaryIconTheme:
                IconTheme.of(context).copyWith(color: AppColor.gold),
            iconTheme: IconTheme.of(context).copyWith(color: AppColor.gold),
            appBarTheme: AppBarTheme.of(context)
                .copyWith(color: AppColor.white, elevation: 0),
          ),
          home: state.maybeMap(
              orElse: () => page,
              checkSignInUserSuccess: (e) {
                if (e.isLogin) {
                  page = const InterceptorPage(isLogin: true);
                  return page;
                } else {
                  page = OnBoardingPage();
                  return page;
                }
              }),
          builder: EasyLoading.init(),
        ),
      ),
      listener: (context, state) {
        state.map(
            initial: (e) {},
            checkSignInUserSuccess: (e) {},
            changedLanguageSuccess: (e) {},
            loading: (e) {});
      },
    );
  }
}
