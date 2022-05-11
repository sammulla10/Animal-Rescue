import 'package:animal_rescue/pages/cart_page.dart';
import 'package:animal_rescue/pages/new_post.dart';
import 'package:animal_rescue/pages/product_page.dart';
import 'package:animal_rescue/pages/vetenaries_page.dart';
import 'package:animal_rescue/utils/routes.dart';
import 'package:animal_rescue/widgets/themes.dart';
import 'package:firebase_core/firebase_core.dart';
import "package:flutter/material.dart";
import 'package:animal_rescue/pages/home_page.dart';
import 'package:animal_rescue/pages/login_page.dart';
import 'package:animal_rescue/pages/signup_page.dart';
import 'package:animal_rescue/pages/start_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'blocs/application_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ApplicationBloc(),
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        // "/": (context) => StartPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        "/signup": (context) => SignupPage(),
        "/newpost": (context) => NewPost(),
        "/cart": (context) => CartPage(),
        "/vetenary": (context) => VetenaryPage(),
      },
    ),);
  }
}
