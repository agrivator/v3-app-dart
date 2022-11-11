import 'package:app/components/button.dart';
import 'package:flutter/material.dart';

class DummyScreen extends StatelessWidget {
  const DummyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Dummy Screen'),
      ),
      body: Center(
        child: Button(onPressed: (){},text: 'Log out'),
      ),
    );
  }
}