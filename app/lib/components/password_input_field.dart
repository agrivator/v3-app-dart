import 'package:flutter/material.dart';
import '../constants/colors.dart';

class PasswordInput extends StatefulWidget {
  String text;
  TextEditingController controller;
  PasswordInput({
    super.key,
    required this.text,
    required this.controller,
  });

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool _passwordVisible = false;
  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextField(
        controller: widget.controller,
        keyboardType: TextInputType.text,
        obscureText: !_passwordVisible,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock,
            color: ConstColors().darkGreen,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                if (_passwordVisible == false) {
                  _passwordVisible = true;
                } else {
                  _passwordVisible = false;
                }
              });
            },
            icon: Icon(
              _passwordVisible ? Icons.visibility : Icons.visibility_off,
              color: ConstColors().darkGreen,
            ),
          ),
          label: Text(
            widget.text,
            style: TextStyle(
              color: ConstColors().darkGreen,
            ),
          ),
        ),
      ),
    );
  }
}
