import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          children: [
            Positioned.fill(
              child: SvgPicture.asset('assets/n7.svg'),
            ),
            Positioned(
              top: height * 0.2163,
              child: const Text(
                'Welcome To Home',
                style: TextStyle(
                  color: Color(0xFF252525),
                  fontSize: 25,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Positioned(
              top: height * 0.65,
              left: 0,
              right: 0,
              child: const SizedBox(
                width: 310,
                child: Text(
                  'Currently The Next Part of Home Activity & Fragementation is under development. The upcoming Part 2 is coming Soon........',
                  style: TextStyle(
                    color: Color(0xFF252525),
                    fontSize: 15,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
