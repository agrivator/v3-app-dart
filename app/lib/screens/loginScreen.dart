// ignore_for_file: file_names

import 'package:app/constants/colors.dart';
import 'package:app/controllers/api_controller.dart';
import 'package:app/screens/dummy_Screen.dart';
import 'package:app/screens/signInScreen.dart';
import 'package:flutter/material.dart';
import '../components/input_field.dart';
import '../components/button.dart';
import '../components/password_input_field.dart';
import 'package:email_validator/email_validator.dart';
import '../utils/popUp.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController _mailidController = TextEditingController();
  TextEditingController _passwordConroller = TextEditingController();
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
                width: 320,
                height: 360,
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
                            text: 'Email Address',
                            icon: Icons.email,
                            controller: _mailidController,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          PasswordInput(
                            text: 'Password',
                            controller: _passwordConroller,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GestureDetector(
                              onTap: () {
                                PopUp().popUpAlert(
                                  context,
                                  'Comming Soon',
                                  'This feature under maintainance, available soon',
                                );
                              },
                              child: const Text('forget password',
                                  textAlign: TextAlign.end),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Button(
                      text: 'Log In',
                      onPressed: () async {
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
                        try {
                          bool jwt = await APIController().getToken(
                              _mailidController.text, _passwordConroller.text);

                          if (jwt == false) {
                            PopUp().popUpAlert(context, 'login error',
                                'incorrect username or password');
                          } else {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const DummyScreen()));
                          }
                        } catch (e) {
                          PopUp().popUpAlert(
                              context, 'Authentication falied', e.toString());
                        }
                      },
                    ),
                    //button
                  ],
                ),
              ),
              Button(
                text: 'Sign In',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SigninScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
