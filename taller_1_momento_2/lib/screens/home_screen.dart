import 'package:flutter/material.dart';
import 'package:taller_1_momento_2/core/string.dart';
import 'package:taller_1_momento_2/core/colors.dart';
import '../core/routes.dart';
import '../core/colors.dart';
import '../core/string.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Logo con borde redondeado
            Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: AppColors.primary, width: 1.5),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Image.asset(
                'assets/icons/7-logo.png',
                width: 100,
                height: 100,
              ),
            ),

            const SizedBox(height: 20),

            // Nombre de la app
            Text(
              AppsStrings.appNombre,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),

            const SizedBox(height: 20),

            // Descripción de bienvenida
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(
                AppsStrings.homeTitle,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey[800]),
              ),
            ),

            const SizedBox(height: 30),

            // Botón de "Comenzar"
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.login);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 14,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                AppsStrings.homeStartButton,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Link de registro
            GestureDetector(
              onTap: () {
                // Acción al presionar "Registrate"
              },
              child: Text(
                AppsStrings.homeRegister,
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
