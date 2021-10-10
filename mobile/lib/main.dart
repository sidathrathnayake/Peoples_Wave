// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mobile/dashboard.dart';
import 'package:mobile/forgotpassword.dart';
import 'package:mobile/menu_card.dart';
import 'package:mobile/payments/add_favorite_bill_payment.dart';
import 'package:mobile/payments/billpayment_menu.dart';
import 'package:mobile/payments/favouritebill_payment.dart';
import 'package:mobile/payments/manage_fav_bill_dashboard.dart';
import 'package:mobile/payments/onetime_payment.dart';
import 'package:mobile/payments/pay_bill_otp.dart';
import 'package:mobile/payments/payment_dashboard.dart';
import 'package:mobile/payments/select_favourite_bill.dart';
import 'package:mobile/payments/update_favourite_bill.dart';
import 'package:mobile/payments/view_all_favouriteBills.dart';
import 'package:mobile/resetpassword.dart';
import 'package:mobile/same-bank-transaction/abc.dart';
import 'package:mobile/same-bank-transaction/add_favorite_beneficiary.dart';
import 'package:mobile/same-bank-transaction/cheque_dashboard.dart';
import 'package:mobile/same-bank-transaction/edit_favorite_beneficiary.dart';
import 'package:mobile/same-bank-transaction/example1.dart';
import 'package:mobile/same-bank-transaction/sb_beneficiary_dashboard.dart';
import 'package:mobile/same-bank-transaction/view_all_beneficiary.dart';
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
    return GetMaterialApp(
      title: 'Peoples Wave',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Signin(),
    );
  }
}
