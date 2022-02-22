import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:animal_rescue/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    await Future.delayed(
      Duration(seconds: 1),
    );
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
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
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          icon: Icon(
                            CupertinoIcons.person,
                            color: Colors.orange[700],
                          ),
                          hintText: "Enter Username",
                          labelText: "Username",
                          labelStyle: TextStyle(color: Colors.orange[500]),
                        ),
                        cursorColor: Colors.orange[700],
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Username cannot be empty';
                          }
                          return null;
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
                        onPressed: () => moveToHome(context),
                        child: Text(
                          "Log In",
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
                      )
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
