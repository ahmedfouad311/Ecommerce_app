// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/home_screen.dart';
import 'package:ecommerce_app/login_screen.dart';
import 'package:ecommerce_app/register_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Color.fromARGB(255, 245, 238, 238),
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 245, 238, 238),
          elevation: 0,
          centerTitle: true,
        ),
      ),
      routes: {
        HomeScreen.ROUTE_NAME: (context) => HomeScreen(),
        LoginScreen.ROUTE_NAME: (context) => LoginScreen(),
        RegisterScreen.ROUTE_NAME: (context) => RegisterScreen()
      },
      initialRoute: LoginScreen.ROUTE_NAME,
      // provider.isLoggedIn()
      //     ? HomeScreen.ROUTE_NAME
      //     : LoginScreen.ROUTE_NAME,
    );
  }
}
