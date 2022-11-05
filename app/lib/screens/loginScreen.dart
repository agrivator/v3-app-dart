// ignore_for_file: file_names

import 'package:app/constants/colors.dart';
import 'package:app/screens/signInScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';
import '../components/input_field.dart';
import '../components/button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors().backgroudColor,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: ConstColors().backgroudColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 160,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
                child: Image.asset('assets/images/logo.png'),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width : 320,
                height : 360,
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
                          InputField(text:'Email Address',icon:Icons.email),
                          const SizedBox(
                            height:12,
                          ),
                          InputField(text: 'Password',icon:Icons.lock),
                          Padding(
                            padding:EdgeInsets.all(10.0),
                            child:GestureDetector(
                              child:Text('forget password',textAlign:TextAlign.end),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Button(text:'Log In',onPressed: (){}),
                    //button
                  ],
                ),
              ),
              Button(text:'Sign In',onPressed:(){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>SigninScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
