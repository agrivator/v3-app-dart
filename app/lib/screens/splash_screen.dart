import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:app/constants/colors.dart';
import './login_phone.dart';
import 'package:flutter/material.dart';

class SplahScreen extends StatelessWidget {
  const SplahScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: ConstColors().backgroudColor,
      splash: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/top.png',width: 150,
                height: 150,
              ),
              
              Image.asset(
                'assets/images/logo.png',
                width: 150,
                height: 150,
              ),
            ],
          ),
        ),
        splashIconSize: 500,
      nextScreen: const MyPhone(),
      
    );
  }
}
