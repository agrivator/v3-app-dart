// ignore_for_file: file_names

import 'package:app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors().backgroudColor,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: ConstColors().backgroudColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
                child: Image.asset('assets/images/logo.png'),
              ),
              const SizedBox(
                height: 100,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  //container

                  ShapeOfView(
                    elevation: 4,
                    height: 380,
                    width: 320,
                    shape: DiagonalShape(
                      position: DiagonalPosition.Top,
                      direction: DiagonalDirection.Right,
                      angle: DiagonalAngle.deg(angle: 20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Email Address',
                              focusColor: ConstColors().darkGreen,
                              hoverColor: ConstColors().darkGreen,
                              prefixIcon: Icon(
                                FontAwesomeIcons.user,
                                color: ConstColors().darkGreen,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Password',
                              focusColor: ConstColors().darkGreen,
                              hoverColor: ConstColors().darkGreen,
                              prefixIcon: Icon(
                                FontAwesomeIcons.lock,
                                color: ConstColors().darkGreen,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          RichText(
                            textAlign: TextAlign.end,
                            text: const TextSpan(
                                text: 'forgot password',
                                style: TextStyle(
                                  color: Colors.black,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //profile icon
                  Positioned(
                    top: 40,
                    child: Container(
                      alignment: Alignment.topCenter,
                      child: CircleAvatar(
                        radius: 40,
                        child: Image.asset('assets/images/profile.png'),
                      ),
                    ),
                  ),
                  //login button
                  Positioned(
                    bottom: 76,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(88, 50),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(88, 50),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
