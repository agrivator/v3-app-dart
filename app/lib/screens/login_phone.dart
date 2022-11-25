import 'package:app/constants/colors.dart';
import 'package:app/service/firebase_service.dart';
import 'package:flutter/material.dart';
import '../utils/pop.dart';
import 'otp_verification_screen.dart';

class MyPhone extends StatefulWidget {
  static const String myPhoneRouteName = 'MyPhone';
  final String phoneNumber = "";
  const MyPhone({super.key});

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  
  final TextEditingController _countryController = TextEditingController();
 
  var phone = '';
  @override
  void initState() {
    _countryController.text = '+91';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors().backgroudColor,
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/img1.png',
                width: 150,
                height: 150,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Phone Verification',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'We need to register your phone before getting started!',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        keyboardType: TextInputType.numberWithOptions(),
                        controller: _countryController,
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    const Text(
                      '|',
                      style: TextStyle(fontSize: 33, color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                      
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            phone = value;
                          },
                          decoration: const InputDecoration(
                              border: InputBorder.none, hintText: "Phone")),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_countryController.text.isEmpty) {
                      PopUp().popUpAlert(
                        context,
                        'Country Code missing',
                        'Enter a valid contrycode',
                      );
                    } else if (phone.length < 10||phone.length > 10) {
                      PopUp().popUpAlert(
                        context,
                        'Phone number error',
                        'Enter a valid phonenumber',
                      );
                    } else {
                      phone = _countryController.text +phone;
                      FirebaseServices().verifyPhoneNumber(phone);
                      Navigator.pushNamed(context, OTPScreen.otpScreenRouteName,arguments: phone);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: const Text('Send OTP'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
