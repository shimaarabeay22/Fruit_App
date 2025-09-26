import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:fruit_app/core/heper_funcctions.dart';
import 'features/splash/presentation/views/splash_view.dart';


void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const FruitApp(), // Wrap app
    ),
  );
}

class FruitApp extends StatelessWidget {
  const FruitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}

