import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/material.dart';
import 'package:animal_rescue/utils/routes.dart';

import 'home_page.dart';

class SignupPage extends StatefulWidget {
  SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? emailError;
  String? passwordError;
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
                height: 40,
              ),
              Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.orange[400],
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: Column(children: [
                  TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      icon: Icon(
                        CupertinoIcons.person,
                        color: Colors.orange[700],
                      ),
                      hintText: 'Enter Username',
                      labelText: 'Username',
                      labelStyle: TextStyle(color: Colors.orange[500]),
                    ),
                    cursorColor: Colors.orange[700],
                    validator: (signusername) {
                      if (signusername == null || signusername.isEmpty) {
                        return 'Username cannot be empty';
                      }
                      return signusername;
                    },
                  ),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      errorText: emailError,
                      focusedBorder: InputBorder.none,
                      icon: Icon(
                        CupertinoIcons.mail,
                        color: Colors.orange[700],
                      ),
                      hintText: 'Enter Email',
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.orange[500]),
                    ),
                    cursorColor: Colors.orange[700],
                    validator: (email) {
                      if (email == null || email.isEmpty) {
                        return 'Email cannot be empty';
                      }
                      return email;
                    },
                  ),
                  // TextFormField(
                  //   decoration: InputDecoration(
                  //     focusedBorder: InputBorder.none,
                  //     icon: Icon(
                  //       CupertinoIcons.phone_circle,
                  //       color: Colors.orange[700],
                  //     ),
                  //     hintText: 'Enter Contact',
                  //     labelText: 'Contact',
                  //     labelStyle: TextStyle(color: Colors.orange[500]),
                  //   ),
                  //   cursorColor: Colors.orange[700],
                  //   validator: (contactno) {
                  //     if (contactno == null || contactno.isEmpty) {
                  //       return 'Username cannot be empty';
                  //     }
                  //     return contactno;
                  //   },
                  // ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      errorText: passwordError,
                      icon: Icon(
                        CupertinoIcons.star,
                        color: Colors.orange[700],
                      ),
                      hintText: "Enter Password",
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.orange[500]),
                    ),
                    cursorColor: Colors.orange[700],
                    validator: (signpassword) {
                      if (signpassword == null || signpassword.isEmpty) {
                        return 'Password cannot be empty';
                      } else if (signpassword == null ||
                          signpassword.length < 8) {
                        return 'Password length must be atleast 8 characters';
                      }
                      return signpassword;
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final email = emailController.text;
                      final password = passwordController.text;

                      try {
                        UserCredential userCredential = await FirebaseAuth
                            .instance
                            .createUserWithEmailAndPassword(
                          email: email,
                          password: password,
                        );
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                            (route) => false);
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          print('The password provided is too weak.');
                          passwordError = 'The password provided is too weak.';
                          emailError = null;
                        } else if (e.code == 'email-already-in-use') {
                          print('The account already exists for that email.');
                          passwordError =
                              'The account already exists for that email';
                          passwordError = null;
                        }
                        setState(() {});
                      } catch (e) {
                        print(e);
                      }
                    },
                    child: Text(
                      "Sign Up",
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
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
