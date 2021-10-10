// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:mobile/dashboard.dart';
import 'package:mobile/forgotpassword.dart';
import 'package:mobile/payments/add_favorite_bill_payment.dart';
import 'package:mobile/resetpassword.dart';
import 'package:mobile/same-bank-transaction/abc.dart';
import 'package:mobile/same-bank-transaction/add_favorite_beneficiary.dart';
import 'package:mobile/same-bank-transaction/edit_favorite_beneficiary.dart';
import 'package:mobile/same-bank-transaction/example1.dart';
import 'package:mobile/same-bank-transaction/same_bank_transaction.dart';
import 'package:mobile/same-bank-transaction/same_bank_transaction_n.dart';
import 'package:mobile/same-bank-transaction/same_bank_transaction_step1.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peoples Wave',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: SameBankTransactionStep1(),//ViewAllBeneficiarySB(),//AddSameBankBeneficiary()//ViewAllBeneficiarySB(),//SameBankTransactionN(),//
    );
  }
}
