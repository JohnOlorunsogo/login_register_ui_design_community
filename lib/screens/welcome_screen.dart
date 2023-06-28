import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, route);
  }

  void route() {
    Navigator.pushReplacementNamed(context, '/slide1');
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Container(
        color: const Color(0xFF6C63FF),
        child: Center(
          child: Stack(
            children: [
              Positioned(
                left: width * 0.286,
                top: height * 0.52,
                child: const Text(
                  'Explora',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                  ),
                ).animate().shimmer(
                      color: Colors.white,
                      colors: [
                        Colors.white,
                        Colors.red,
                        Colors.green,
                        Colors.yellow
                      ],
                      duration: const Duration(seconds: 1),
                      // stops: [0.4, 0.5, 0.6, 0.7],
                    ),
              ),
              Positioned(
                left: width * 0.58,
                top: height * 0.53,
                child: SvgPicture.asset('assets/n2.svg'),
              ),
              Positioned(
                left: width * 0.32,
                top: height * 0.32,
                child: SvgPicture.asset(
                  'assets/n.svg',
                ).animate().slideX(
                      begin: 1,
                      end: 0,
                      duration: const Duration(seconds: 1),
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
