import 'package:firebase_demo/widgets/button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isVisible = false;

  final _username = TextEditingController();
  final _password = TextEditingController();

  bool _showPassword = false;
  void updateStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

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
                  child: Text("Login",
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
                    child: Column(
                      children: [
                        TextField(
                          controller: _username,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
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
                          controller: _password,
                          obscureText: _isVisible ? false : true,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              fillColor: Colors.white70,
                              filled: true,
                              hintText: "  Enter your password",
                              labelText: "Password",
                              prefixIconColor: Colors.black,
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  updateStatus();
                                },
                                child: Icon(
                                  _isVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  semanticLabel: _isVisible
                                      ? 'show password'
                                      : 'hide password',
                                ),
                              ),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(35))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    textStyle: const TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Text("Forgot Password?",
                                      style: TextStyle(
                                          fontSize: 18,
                                          decoration:
                                              TextDecoration.underline)))
                            ],
                          ),
                        ),
                        Button(
                          name: "Login",
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
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: SizedBox(
                            height: 25,
                            child: Text(
                              "Don't have account? ",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        Button(
                          name: "Sign Up",
                        ),
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
