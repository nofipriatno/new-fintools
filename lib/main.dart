import 'package:fintools/infrastructure/core/app_env.dart';
import 'package:fintools/injection.dart';
import 'package:fintools/my_app.dart';
import 'package:fintools/simple_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'application/app_preferences/app_preferences_bloc.dart';

Future<void> mainProgram() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(AppEnvironment.env);
  await getIt<HiveInterface>().initFlutter();
  BlocOverrides.runZoned(
    () {
      runApp(FintoolsApp());
    },
    blocObserver: getIt<SimpleBlocObserver>(),
  );
}

class FintoolsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppPreferencesBloc>(
        create: (_) => getIt<AppPreferencesBloc>()
          ..add(
            const AppPreferencesEvent.onCheckedLogin(),
          ),
        child: BlocBuilder<AppPreferencesBloc, AppPreferencesState>(
          builder: (context, state) => getIt<MyApp>(),
        ));
  }
}
