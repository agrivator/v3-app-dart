// ignore_for_file: file_names

import 'package:app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ConstColors().backgroudColor,
        foregroundColor: ConstColors().darkGreen,

      ),
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
                height: 80,
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
                            height: 20,
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
                            height: 20,
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
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Confirm Password',
                              focusColor: ConstColors().darkGreen,
                              hoverColor: ConstColors().darkGreen,
                              prefixIcon: Icon(
                                FontAwesomeIcons.lock,
                                color: ConstColors().darkGreen,
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                  ),

                  //profile icon
                  Positioned(
                    top: 20,
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
                    bottom: 12,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(88, 50),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
