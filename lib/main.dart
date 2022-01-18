import 'package:fintools/domain/core/constant/app_color.dart';
import 'package:fintools/domain/core/constant/app_string.dart';
import 'package:fintools/infrastructure/core/app_env.dart';
import 'package:fintools/injection.dart';
import 'package:fintools/presentation/component/splashscreen/splashscreen.dart';
import 'package:fintools/presentation/interceptor/interceptor_page.dart';
import 'package:fintools/presentation/on_boarding/on_boarding_page.dart';
import 'package:fintools/simple_bloc_observer.dart';
import 'package:fintools/utilities/i10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'application/app_preferences/app_preferences_bloc.dart';

Future<void> mainProgram() async {
  await Hive.initFlutter();
  await configureInjection(AppEnvironment.env);
  BlocOverrides.runZoned(
    () {
      runApp(MyApp());
    },
    blocObserver: getIt<SimpleBlocObserver>(),
  );
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  Widget page = const SplashScreen();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppPreferencesBloc>(
        create: (_) => getIt<AppPreferencesBloc>()
          ..add(
            const AppPreferencesEvent.onCheckedLogin(),
          ),
        child: BlocConsumer<AppPreferencesBloc, AppPreferencesState>(
          listener: (context, state) {
            state.map(
                initial: (e) {},
                checkSignInUserSuccess: (e) {
                  if (e.isLogin) {
                    page = const InterceptorPage(isLogin: true);
                  } else {
                    page = OnBoardingPage();
                  }
                },
                changedLanguageSuccess: (e) {},
                loading: (e) {});
          },
          builder: (context, state) {
            return ScreenUtilInit(
              designSize: const Size(360, 645),
              builder: () => MaterialApp(
                debugShowCheckedModeBanner:
                    AppEnvironment.env == AppString.appDev,
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
                theme: ThemeData(
                  primaryColor: AppColor.white,
                  backgroundColor: AppColor.white,
                  scaffoldBackgroundColor: AppColor.white,
                  primaryIconTheme:
                      IconTheme.of(context).copyWith(color: AppColor.gold),
                  iconTheme:
                      IconTheme.of(context).copyWith(color: AppColor.gold),
                  appBarTheme: AppBarTheme.of(context)
                      .copyWith(color: AppColor.white, elevation: 0),
                ),
                home: page,
                builder: EasyLoading.init(),
              ),
            );
          },
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    if (I10n.current.lang == 'en') {
      I10n.load(const Locale.fromSubtags(languageCode: 'id'));
    } else {
      I10n.load(const Locale.fromSubtags(languageCode: 'en'));
    }

    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(I10n.current.lang),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
