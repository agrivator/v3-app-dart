// ignore_for_file: file_names

import 'package:app/constants/colors.dart';
import 'package:flutter/material.dart';
import '../components/button.dart';
import '../components/input_field.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation: 0,
        backgroundColor:ConstColors().backgroudColor,
        foregroundColor:ConstColors().darkGreen,
      ),
      backgroundColor: ConstColors().backgroudColor,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: ConstColors().backgroudColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
                child: Image.asset('assets/images/logo.png'),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width : 320,
                height : 400,
                decoration:BoxDecoration(
                  borderRadius:  BorderRadius.circular(20.0),
                  color : Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),
                  ],
                ),
                child:Column(

                  children:[
                    //image
                    Padding(
                      padding:const EdgeInsets.all(10.0),
                      child:CircleAvatar(
                        radius:45,
                        backgroundColor:ConstColors().darkGreen,
                        backgroundImage: AssetImage('assets/images/profile.png'),
                      ),
                    ),
                    //inputs
                    Expanded(
                      child:Column(
                        children:[
                          InputField(text:'Enter Email Address',icon:Icons.email),
                          const SizedBox(
                            height:12,
                          ),
                          InputField(text: 'Enter Password',icon:Icons.lock),
                          const SizedBox(
                            height:12,
                          ),
                          InputField(text: 'Confirm Password',icon:Icons.lock),
                        ],
                      ),
                    ),
                    Button(text:'Sign Up',onPressed: (){}),
                    //button
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
      floatingActionButton:FloatingActionButton(
        onPressed:(){
          Navigator.pop(context);
        },
        backgroundColor: ConstColors().darkGreen,
        child : Icon(Icons.arrow_back_sharp ),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
