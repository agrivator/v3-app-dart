import 'package:flutter/material.dart';

import '../constants/colors.dart';

class PopUp{
    Future<dynamic> popUpAlert(BuildContext context,String title,String content) {
    return showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'OK',
              style: TextStyle(
                color: ConstColors().darkGreen,
              ),
            ),
          )
        ],
        title:  Text(title),
        content: SingleChildScrollView(
          child: ListBody(
            children:  [Text(content)],
          ),
        ),
      ),
    );
  }
}