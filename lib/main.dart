import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:login_register_ui_design_community/constant.dart';
import 'package:login_register_ui_design_community/controller/auth_controller.dart';
import 'package:login_register_ui_design_community/screens/signup_screen.dart';
import 'package:login_register_ui_design_community/screens/slide_screens/1.dart';
import 'package:login_register_ui_design_community/screens/slide_screens/2.dart';
import 'package:login_register_ui_design_community/screens/slide_screens/3.dart';
import 'package:login_register_ui_design_community/screens/verification.dart';
import 'package:login_register_ui_design_community/screens/welcome_screen.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'screens/login_screen.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthService(),
      child: MaterialApp(
        // useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),

        debugShowCheckedModeBanner: false,
        routes: {
          "/": (context) => const WelcomeScreen(), //"/" is the default route
          '/welcome': (context) => const WelcomeScreen(),

          '/login': (context) => LoginScreen(),
          '/register': (context) => const SignUpScreen(),
          '/verification': (context) => const VerificationScreen(),
          '/slidePageView': (context) => const SlidePageView(),
        },
        // home: SlidePageView(),
      ),
    );
  }
}

class SlidePageView extends StatelessWidget {
  const SlidePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        SlideScreen1(),
        SlideScreen2(),
        SlideScreen3(),
      ],
    );
  }
}
