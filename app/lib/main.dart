import './screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import './screens/login_phone.dart';
import './screens/otp_verification_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();   
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Agrivator v3',
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
    home: const  SplahScreen(),
    routes: {
      MyPhone.myPhoneRouteName : ((context) => const MyPhone()),
      OTPScreen.otpScreenRouteName:(context) =>  OTPScreen()
    },
  ));
}


