import 'package:flutter/material.dart';
import 'package:taller_1_momento_2/core/string.dart';
import 'package:taller_1_momento_2/screens/home_screen.dart';
import 'package:taller_1_momento_2/screens/login_screen.dart';
import 'package:taller_1_momento_2/screens/splash_screen.dart';
import 'core/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppsStrings.appNombre,
      initialRoute: Routes.splash,
      routes: {
        Routes.splash: (context) => SplashScreen(),
        Routes.home: (context) => HomeScreen(),
        Routes.login: (context) => LoginScreen(),
      },
    );
  }
}
