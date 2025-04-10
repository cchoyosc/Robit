import 'package:flutter/material.dart';
import 'package:taller_1_momento_2/core/string.dart';
import 'package:taller_1_momento_2/core/colors.dart';
import '../core/routes.dart';
import '../core/colors.dart';
import '../core/string.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo y nombre
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/7-icons.png',
                    width: 60,
                    height: 60,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    AppsStrings.appNombre,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Título
              Text(
                AppsStrings.loginTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: AppColors.secondary,
                ),
              ),

              const SizedBox(height: 30),

              // Usuario
              TextField(
                decoration: InputDecoration(
                  hintText: 'Usuario',
                  filled: true,
                  fillColor: AppColors.blanco,
                  prefixIcon: const Icon(
                    Icons.person,
                    color: AppColors.primary,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Contraseña
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Contraseña',
                  filled: true,
                  fillColor: AppColors.blanco,
                  prefixIcon: const Icon(Icons.lock, color: AppColors.primary),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Botón Ingresar
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.home);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 60,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Ingresar',
                  style: TextStyle(color: AppColors.blanco, fontSize: 18),
                ),
              ),

              const SizedBox(height: 10),

              // Recupera contraseña
              TextButton(
                onPressed: () {
                  // Lógica para recuperar contraseña
                },
                child: Text(
                  AppsStrings.loginForgotPass,
                  style: const TextStyle(
                    color: AppColors.secondary,
                    fontSize: 14,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Google login
              OutlinedButton.icon(
                onPressed: () {
                  // Lógica login Google
                },
                icon: Image.asset('assets/icons/google.png', height: 24),
                label: Text(
                  AppsStrings.loginGoogle,
                  style: const TextStyle(
                    color: AppColors.secondary,
                    fontSize: 16,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: AppColors.primary),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Registro
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '¿No tienes cuenta?',
                    style: TextStyle(color: AppColors.secondary),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
