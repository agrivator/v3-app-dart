import 'package:flutter/material.dart';
import '../screens/signInScreen.dart';
class Button extends StatelessWidget{

  String text;
  VoidCallback onPressed;
  Button({super.key,required this.text,required this.onPressed});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding : const EdgeInsets.all(10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.grey,
        ),
        onPressed:onPressed,
        child : Text(text,style:TextStyle(fontSize:22,),),
      ),
    );
  }
}