import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.2),
            const Row(
              children: [
                Text(
                  'Almost there ',
                  style: TextStyle(
                    color: Color(0xFF252525),
                    fontSize: 24,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.03),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Please enter the 6-digit code sent to your email ',
                    style: TextStyle(
                      // color: Color(0xFF252525),
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: 'hemmyhtec@gmail.com',
                    style: TextStyle(
                      // color: Color(0xFF252525),
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: ' for verification.',
                    style: TextStyle(
                      // color: Color(0xFF252525),
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.06),
            VerificationCode(
              length: 6,
              onCompleted: (value) {},
              onEditing: (value) {},
              fullBorder: true,
              autofocus: true,
              fillColor: const Color(0x33C4C4C4),
              cursorColor: const Color(0x33C4C4C4),
              digitsOnly: true,
              itemSize: 35,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.all(8),
              textStyle: const TextStyle(
                color: Color(0xFF252525),
                fontSize: 14,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: height * 0.07),
            Material(
              color: const Color(0xFF6C63FF),
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {},
                child: SizedBox(
                  width: width * 0.8,
                  height: height * 0.055,
                  child: const Center(
                    child: Text(
                      'VERIFY',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.06),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Didn’t receive any code? ',
                  style: TextStyle(
                    color: Color(0xFF252525),
                    fontSize: 13,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Resend Again',
                  style: TextStyle(
                    color: Color(0xFF252525),
                    fontSize: 13,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
            const SizedBox(height: 3),
            Text(
              'Request new code in 00:30s',
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 13,
                fontFamily: 'Arial',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: height * 0.22),
            Positioned(
              top: height * 0.845,
              right: width * 0.78,
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const ShapeDecoration(
                      color: Color(0xFF252525),
                      shape: OvalBorder(),
                    ),
                    child: IconButton(
                      color: Colors.white,
                      icon: const Icon(Icons.arrow_back_ios, size: 20),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
