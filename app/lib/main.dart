import 'package:flutter/material.dart';
import './screens/login_phone.dart';

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
      MyPhone.myPhoneRouteName : ((context) => const MyPhone())
    },
  ));
}

