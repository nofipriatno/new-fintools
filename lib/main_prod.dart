import 'package:fintools/infrastructure/core/app_env.dart';
import 'package:fintools/main.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  AppEnvironment.env = Environment.prod;
  await mainProgram();
}
