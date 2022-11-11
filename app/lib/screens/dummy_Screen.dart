import 'package:app/components/button.dart';
import 'package:app/screens/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DummyScreen extends StatelessWidget {
  const DummyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dummy Screen'),
      ),
      body: Center(
        child: Button(
            onPressed: () async{
              SharedPreferences pref = await SharedPreferences.getInstance();
                            pref.setBool('isLoggedIn', false);
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
            text: 'Log out'),
      ),
    );
  }
}
