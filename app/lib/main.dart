import 'package:flutter/material.dart';
import './screens/login_phone.dart';
import './screens/otp_verification_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();   
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Agrivator v3',
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
    home: const  MyPhone(),
    routes: {
      MyPhone.myPhoneRouteName : ((context) => const MyPhone()),
      OTPScreen.otpScreenRouteName:(context) => const OTPScreen()
    },
  ));
}

