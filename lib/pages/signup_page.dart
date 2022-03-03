import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/material.dart';
import 'package:animal_rescue/utils/routes.dart';

class SignupPage extends StatefulWidget {
  SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
                    decoration: InputDecoration(
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
                  TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      icon: Icon(
                        CupertinoIcons.phone_circle,
                        color: Colors.orange[700],
                      ),
                      hintText: 'Enter Contact',
                      labelText: 'Contact',
                      labelStyle: TextStyle(color: Colors.orange[500]),
                    ),
                    cursorColor: Colors.orange[700],
                    validator: (contactno) {
                      if (contactno == null || contactno.isEmpty) {
                        return 'Username cannot be empty';
                      }
                      return contactno;
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
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
                    onPressed: () => Navigator.pushReplacementNamed(
                        context, MyRoutes.loginRoute),
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
