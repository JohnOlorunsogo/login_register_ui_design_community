import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_register_ui_design_community/constant.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SlideScreen3 extends StatelessWidget {
  const SlideScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
        body: Container(
      height: height,
      width: width,
      color: Colors.white,
      child: Stack(
        children: [
          Positioned(
            left: width * 0.08,
            top: height * 0.23,
            child: SvgPicture.asset('assets/n5.svg'),
          ),
          Positioned(
            top: height * 0.65,
            left: width * 0.05,
            child: SizedBox(
              width: width * 0.81,
              child: const Text(
                'Make connects with explora',
                style: TextStyle(
                  color: Color(0xFF252525),
                  fontSize: 36,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Positioned(
            left: width * 0.05,
            top: height * 0.77,
            child: const Text(
              'To your dream trip',
              style: TextStyle(
                color: Color(0xFF252525),
                fontSize: 24,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Positioned(
            top: height * 0.845,
            left: width * 0.78,
            child: Container(
              width: 50,
              height: 50,
              decoration: const ShapeDecoration(
                color: Color(0xFF252525),
                shape: OvalBorder(),
              ),
              child: IconButton(
                color: Colors.white,
                icon: const Icon(Icons.arrow_forward_ios, size: 20),
                onPressed: () {},
              ),
            ),
          ),
          Positioned(
            top: height * 0.87,
            left: width * 0.05,
            child: SmoothPageIndicator(
              controller: pageController,
              count: 3,
              effect: const SlideEffect(
                  spacing: 4.0,
                  radius: 8.0,
                  dotWidth: 16.0,
                  dotHeight: 6.0,
                  paintStyle: PaintingStyle.fill,
                  strokeWidth: 1.5,
                  dotColor: Color(0xFF6C63FF),
                  activeDotColor: Colors.black),
            ),
          )
        ],
      ),
    ));
  }
}
