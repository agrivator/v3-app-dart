import 'package:flutter/material.dart';
import '../constants/colors.dart';
class InputField extends StatelessWidget{
  String text;
  IconData icon;
  InputField({super.key,required this.text,required this.icon});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding:const EdgeInsets.only(left: 20,right:20),
      child: TextField(
        decoration:InputDecoration(
          prefixIcon: Icon(icon,color:ConstColors().darkGreen),
          label:Text(text,
            style: TextStyle(
              color:ConstColors().darkGreen,
            ),
          ),
        ),
      ),
    );
  }
}