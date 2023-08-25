import 'package:firebase_demo/screens/login_screen.dart';
import 'package:firebase_demo/widgets/button.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                    Colors.blue.shade100,
                    Colors.blue.shade200,
                    Colors.blue.shade300,
                    Colors.blue.shade400,
                    Colors.blue.shade500,
                    Colors.blue.shade600,
                  ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      tileMode: TileMode.clamp)),
              child: const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Let's Register",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.75,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.lightBlue.shade50,
                        width: 20,
                      ),
                      borderRadius:
                          const BorderRadius.only(topLeft: Radius.circular(50)),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.person),
                                fillColor: Colors.white70,
                                filled: true,
                                hintText: " Enter your full Name",
                                labelText: "Name",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(35))),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.email),
                                fillColor: Colors.white70,
                                filled: true,
                                hintText: " Enter your Email",
                                labelText: "Email",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(35))),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.lock),
                                fillColor: Colors.white70,
                                filled: true,
                                hintText: "  Enter your password",
                                labelText: "Password",
                                prefixIconColor: Colors.black,
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                    ),
                                    borderRadius: BorderRadius.circular(35))),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.lock),
                                fillColor: Colors.white70,
                                filled: true,
                                hintText: " Re-type your password",
                                labelText: "Re-Password",
                                prefixIconColor: Colors.black,
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                    ),
                                    borderRadius: BorderRadius.circular(35))),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Button(
                            name: "Register",
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          SizedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Image(image: AssetImage("assets/google.png")),
                                Image(image: AssetImage("assets/facebook.png")),
                                Image(image: AssetImage("assets/twitter.png"))
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Already have account? ",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                LoginScreen()));
                                  },
                                  child: const Text(
                                    "Click here",
                                    style: TextStyle(
                                        fontSize: 18,
                                        decoration: TextDecoration.underline),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
