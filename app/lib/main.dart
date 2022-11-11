import 'package:app/screens/dummy_Screen.dart';
import 'package:flutter/material.dart';
import 'package:app/screens/loginScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref = await SharedPreferences.getInstance();
  var status = pref.getBool("isLoggedIn") ?? false;
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Agrivator v3',
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
    home: status==false?const LoginScreen():const DummyScreen(),
  ));
}

