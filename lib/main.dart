import 'package:depi_task3/presentation_layer/screens/splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(enabled: false, builder: (context) => const Foodgo()));
}

class Foodgo extends StatelessWidget {
  const Foodgo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
