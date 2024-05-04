import 'package:flutter/material.dart';
import 'package:mindto/core/routes/routes.dart';
import 'package:mindto/design/app_theme.dart';
import 'package:mindto/features/onboarding/ui/onboarding_screen.dart';
// import 'package:mindto/features/onboarding/ui/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.darkTheme,
      routerConfig: AppRoutes.instance.router,
    );
  }
}
