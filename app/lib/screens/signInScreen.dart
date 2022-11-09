// ignore_for_file: file_names

import 'package:app/constants/colors.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import '../components/button.dart';
import '../components/input_field.dart';

import '../components/password_input_field.dart';
import '../utils/popUp.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final signUpFormkey = GlobalKey<FormState>();
  TextEditingController _mailidController = TextEditingController();
  TextEditingController _passwordConroller = TextEditingController();
  TextEditingController _CnfpasswordConroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ConstColors().backgroudColor,
        foregroundColor: ConstColors().darkGreen,
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
                width: 320,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    //image
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 45,
                        backgroundColor: ConstColors().darkGreen,
                        backgroundImage:
                            const AssetImage('assets/images/profile.png'),
                      ),
                    ),
                    //inputs
                    Expanded(
                      child: Column(
                        children: [
                          InputField(
                            text: 'Enter Email Address',
                            icon: Icons.email,
                            controller: _mailidController,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          PasswordInput(
                            text: 'Enter Password',
                            controller: _passwordConroller,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          PasswordInput(
                            text: 'Confirm Password',
                            controller: _CnfpasswordConroller,
                          ),
                        ],
                      ),
                    ),
                    Button(
                      text: 'Sign Up',
                      onPressed: () {
                        bool isValid =
                            EmailValidator.validate(_mailidController.text);
                        if (_mailidController.text.isEmpty ||
                            _passwordConroller.text.length < 6 ||
                            isValid == false) {
                          PopUp().popUpAlert(
                            context,
                            'Check your inputs',
                            'Please enter a valid email and password',
                          );
                        }
                        if(_passwordConroller.text != _CnfpasswordConroller.text){
                            PopUp().popUpAlert(
                            context,
                            'Check your inputs',
                            'Password didn\'t match check once more',
                          );
                        }
                      },
                    ),
                    //button
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: ConstColors().darkGreen,
        child: const Icon(Icons.arrow_back_sharp),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
