import 'package:flutter/material.dart';
import '../constants/colors.dart';

class InputField extends StatelessWidget {
  String text;
  IconData icon;
  TextEditingController controller;
  
  InputField(
      {super.key,
      required this.text,
      required this.icon,
      required this.controller,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextFormField(
       
        validator: (value){
          if(value == null || value.isEmpty){
            return 'please enter your email address';
          }
          return null;
        },
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: ConstColors().darkGreen),
          label: Text(
            text,
            style: TextStyle(
              color: ConstColors().darkGreen,
            ),
          ),
        ),
      ),
    );
  }
}
