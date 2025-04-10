import 'package:flutter/material.dart';
import '../core/routes.dart';
import '../core/colors.dart';
import '../core/string.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacementNamed(Routes.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: Center(
        child: Column(
          mainAxisSize:
              MainAxisSize.min, // ¡Clave para que se centre verticalmente!
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/7-logo.png',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),

            const SizedBox(height: 20),

            Text(
              AppsStrings.appNombre,
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 120),

            Text(
              AppsStrings.myName,
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
