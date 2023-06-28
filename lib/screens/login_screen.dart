import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_register_ui_design_community/screens/home.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    var value2 = true;

    validateEmail() {}

    validatePassword() {}

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: height,
            width: width,
            child: Stack(
              children: [
                Positioned(
                    top: height * 0.095,
                    left: width * 0.145,
                    child: SvgPicture.asset(
                      'assets/n6.svg',
                    )),
                Positioned(
                  top: height * 0.242,
                  left: width * 0.146,
                  child: Column(
                    children: [
                      const Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Color(0xFF252525),
                          fontSize: 24,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: height * 0.005),
                      const Text(
                        'sign in to access your account',
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

                //form feilds
                Positioned(
                  child: Center(
                    child: Form(
                      key: _key,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: height * 0.05,
                          ),
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
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your email';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                errorMaxLines: 1,
                                // alignLabelWithHint: true,
                                suffixIcon: const Padding(
                                  padding: EdgeInsets.only(right: 5, top: 3),
                                  child: Icon(Icons.email),
                                ),
                                suffixIconColor: Colors.black.withOpacity(0.5),
                                contentPadding:
                                    const EdgeInsets.only(left: 20, top: 13),
                                border: InputBorder.none,
                                hintText: 'Email',
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
                              obscureText: true,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your password';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                suffixIcon: const Padding(
                                  padding: EdgeInsets.only(right: 5, top: 3),
                                  child: Icon(Icons.lock_rounded),
                                ),
                                suffixIconColor: Colors.black.withOpacity(0.5),
                                contentPadding:
                                    const EdgeInsets.only(left: 20, top: 13),
                                border: InputBorder.none,
                                hintText: 'Password',
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    RememberCheck(value2: value2),
                                    const Text(
                                      'Remember me',
                                      style: TextStyle(
                                        color: Color(0xFF252525),
                                        fontSize: 12,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w400,
                                      ),
                                      // style: GoogleFonts.archivo(
                                      //   color: const Color(0xFF252525),
                                      //   fontSize: 15,
                                      //   fontWeight: FontWeight.w400,
                                      // ),
                                    )
                                  ],
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Forget password ?',
                                      style: TextStyle(
                                        color: Color(0xFF6C63FF),
                                        fontSize: 12,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          // SizedBox(height: height * 0.32),
                          //login button
                        ],
                      ),
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
                              if (_key.currentState!.validate()) {
                                Navigator.pop(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomePage(),
                                  ),
                                );
                              }
                              // Navigator.pop(context);
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => const HomePage(),
                              //   ),
                              // );
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
                        // SizedBox(height: height * 0.01),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'New Member?',
                              style: TextStyle(
                                color: Color(0xFF252525),
                                fontSize: 13,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/register');
                              },

                              child: const Text(
                                'Register now',
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
      ),
    );
  }
}

// ignore: must_be_immutable
class RememberCheck extends StatefulWidget {
  RememberCheck({
    super.key,
    required this.value2,
  });

  bool value2;

  @override
  State<RememberCheck> createState() => _RememberCheckState();
}

class _RememberCheckState extends State<RememberCheck> {
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
