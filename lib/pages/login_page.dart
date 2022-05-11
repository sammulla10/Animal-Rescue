import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:animal_rescue/utils/routes.dart';

import 'home_page.dart';
import 'signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? emailError;
  String? passwordError;

  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    await Future.delayed(
      Duration(seconds: 1),
    );
    await Navigator.of(context).pushNamedAndRemoveUntil(
        MyRoutes.homeRoute, (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Image.asset(
                "assets/img/start_page.jpg",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Login Page",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.orange[400],
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          icon: Icon(
                            CupertinoIcons.person,
                            color: Colors.orange[700],
                          ),
                          hintText: "Enter Email",
                          errorText: emailError,
                          labelText: "Email",
                          labelStyle: TextStyle(color: Colors.orange[500]),
                        ),
                        cursorColor: Colors.orange[700],
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Email cannot be empty';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(
                            CupertinoIcons.star,
                            color: Colors.orange[700],
                          ),
                          hintText: "Enter Password",
                          errorText: passwordError,
                          labelText: "Password",
                          labelStyle: TextStyle(color: Colors.orange[500]),
                        ),
                        cursorColor: Colors.orange[700],
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Password cannot be empty';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          //Login
                          final email = emailController.text;
                          final password = passwordController.text;
                          try {
                            UserCredential userCredential = await FirebaseAuth
                                .instance
                                .signInWithEmailAndPassword(
                                    email: email, password: password);
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'user-not-found') {
                              print('No user found for that email.');
                              emailError = 'No user found for that email.';
                              passwordError = null;
                            } else if (e.code == 'wrong-password') {
                              passwordError =
                                  'Wrong password provided for that user.';
                              emailError = null;
                              print('Wrong password provided for that user.');
                            }
                            setState(() {});
                          }
                        },
                        child: Text(
                          "Login",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(350, 50),
                            primary: Colors.orange[300],
                            elevation: 5),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Column(
                        children: [
                          Text("Do not have an account?"),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupPage()),
                              );
                            },
                            child: Text("Sign up"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
