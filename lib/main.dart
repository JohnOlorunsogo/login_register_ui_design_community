import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:login_register_ui_design_community/screens/signup_screen.dart';
import 'package:login_register_ui_design_community/screens/slide_screens/1.dart';
import 'package:login_register_ui_design_community/screens/slide_screens/2.dart';
import 'package:login_register_ui_design_community/screens/slide_screens/3.dart';
import 'package:login_register_ui_design_community/screens/verification.dart';
import 'package:login_register_ui_design_community/screens/welcome_screen.dart';

import 'screens/login_screen.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const VerificationScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/welcome': (context) => const WelcomeScreen(),
        '/slide1': (context) => const SlideScreen1(),
        '/slide2': (context) => const SlideScreen2(),
        '/slide3': (context) => const SlideScreen3(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const SignUpScreen(),
      },
    );
  }
}
