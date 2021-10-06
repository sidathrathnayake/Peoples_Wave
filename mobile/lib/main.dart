// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:mobile/dashboard.dart';
import 'package:mobile/forgotpassword.dart';
import 'package:mobile/resetpassword.dart';
import 'package:mobile/verify_login.dart';

import 'signin.dart';
import 'signup.dart';
import 'verify_forgotpassword.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peoples Wave',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Resetpassword(),
    );
  }
}
