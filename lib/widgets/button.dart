import 'dart:ui';

import 'package:firebase_demo/screens/login_screen.dart';
import 'package:firebase_demo/screens/registration_screen.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({super.key, required this.name, this.height});
  String? name;
  int? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(10)),
      child: MaterialButton(
        splashColor: Colors.greenAccent,
        onPressed: () {
          if (name == "Sign Up") {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RegistrationScreen()));
          } else {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          }
        },
        child: Text(
          name!,
          style: const TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
    );
  }
}
