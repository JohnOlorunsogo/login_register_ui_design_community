import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  // TextEditingController _nameController = TextEditingController();

  // TextEditingController _emailController = TextEditingController();

  // TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    var value2 = true;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          height: height,
          width: width,
          child: Stack(
            children: [
              Positioned(
                  top: height * 0.09,
                  left: width * 0.13,
                  child: SvgPicture.asset(
                    'assets/n6.svg',
                  )),
              Positioned(
                top: height * 0.22,
                left: width * 0.21667,
                child: Column(
                  children: [
                    const Text(
                      'Get Started',
                      style: TextStyle(
                        color: Color(0xFF252525),
                        fontSize: 36,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: height * 0.005),
                    const Text(
                      'by creating a free account.',
                      style: TextStyle(
                        color: Color(0xFF252525),
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                ),
              ),
              Positioned.fill(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: height * 0.09,
                      ),
                      //name field
                      Container(
                        width: width * 0.83,
                        height: height * 0.063,
                        decoration: ShapeDecoration(
                          color: const Color(0x33C4C4C4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            suffixIcon: const Padding(
                              padding: EdgeInsets.only(right: 5, top: 3),
                              child: Icon(Icons.person),
                            ),
                            suffixIconColor: Colors.black.withOpacity(0.5),
                            contentPadding:
                                const EdgeInsets.only(left: 20, top: 13),
                            border: InputBorder.none,
                            hintText: 'Full Name',
                            hintStyle: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      //email field
                      Container(
                        width: width * 0.83,
                        height: height * 0.063,
                        decoration: ShapeDecoration(
                          color: const Color(0x33C4C4C4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            suffixIcon: const Padding(
                              padding: EdgeInsets.only(right: 5, top: 3),
                              child: Icon(Icons.email),
                            ),
                            suffixIconColor: Colors.black.withOpacity(0.5),
                            contentPadding:
                                const EdgeInsets.only(left: 20, top: 13),
                            border: InputBorder.none,
                            hintText: 'Valid Email',
                            hintStyle: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      //phone field
                      Container(
                        width: width * 0.83,
                        height: height * 0.063,
                        decoration: ShapeDecoration(
                          color: const Color(0x33C4C4C4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            suffixIcon: const Padding(
                              padding: EdgeInsets.only(right: 5, top: 3),
                              child: Icon(Icons.phone),
                            ),
                            suffixIconColor: Colors.black.withOpacity(0.5),
                            contentPadding:
                                const EdgeInsets.only(left: 20, top: 13),
                            border: InputBorder.none,
                            hintText: 'Phone Number',
                            hintStyle: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),

                      //password field
                      Container(
                        width: width * 0.83,
                        height: height * 0.063,
                        decoration: ShapeDecoration(
                          color: const Color(0x33C4C4C4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            suffixIcon: const Padding(
                              padding: EdgeInsets.only(right: 5, top: 3),
                              child: Icon(Icons.lock_rounded),
                            ),
                            suffixIconColor: Colors.black.withOpacity(0.5),
                            contentPadding:
                                const EdgeInsets.only(left: 20, top: 13),
                            border: InputBorder.none,
                            hintText: 'Strong Password',
                            hintStyle: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TermsCheck(value2: value2),
                            const Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        'By checking the box you agree to our ',
                                    style: TextStyle(
                                      color: Color(0xFF252525),
                                      fontSize: 9,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Terms',
                                    style: TextStyle(
                                      color: Color(0xFF6C63FF),
                                      fontSize: 9,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' and ',
                                    style: TextStyle(
                                      color: Color(0xFF252525),
                                      fontSize: 9,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Conditions.',
                                    style: TextStyle(
                                      color: Color(0xFF6C63FF),
                                      fontSize: 9,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      // SizedBox(height: height * 0.32),
                      //login button
                    ],
                  ),
                ),
              ),
              Positioned.fill(
                  top: height * 0.82,
                  child: Column(
                    children: [
                      Material(
                        color: const Color(0xFF6C63FF),
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(10),
                          onTap: () {
                            Navigator.pushNamed(context, '/verification');
                          },
                          child: SizedBox(
                            width: width * 0.83,
                            height: height * 0.063,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Next',
                                  style: TextStyle(
                                    color: Color(0xFFFBFBFB),
                                    fontSize: 20,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Icon(Icons.arrow_forward, color: Colors.white)
                              ],
                            ),
                          ),
                        ),
                      ),
                      // SizedBox(height: height * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Already a member?',
                            style: TextStyle(
                              color: Color(0xFF252525),
                              fontSize: 13,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/login');
                            },

                            child: const Text(
                              'Log In',
                              style: TextStyle(
                                color: Color(0xFF6C63FF),
                                fontSize: 14,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                              ),
                            ),

                            // style:
                          )
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class TermsCheck extends StatefulWidget {
  TermsCheck({
    super.key,
    required this.value2,
  });

  bool value2;

  @override
  State<TermsCheck> createState() => _TermsCheckState();
}

class _TermsCheckState extends State<TermsCheck> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: widget.value2,
      onChanged: (value) {
        setState(() {
          widget.value2 = value!;
        });
      },
    );
  }
}
