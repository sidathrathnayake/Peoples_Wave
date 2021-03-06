// ignore: unused_import
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/dashboard.dart';
import 'package:mobile/payments/favorite_bill_model.dart';
import 'package:mobile/payments/pay_bill_otp.dart';
import 'package:mobile/service_user.dart';
import 'package:mobile/signin.dart';

class OnetimePayment extends StatefulWidget {
  const OnetimePayment({Key? key}) : super(key: key);

  @override
  _OnetimePaymentState createState() => _OnetimePaymentState();
}

class _OnetimePaymentState extends State<OnetimePayment> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController accountNumber = TextEditingController();
  TextEditingController amount = TextEditingController();
  TextEditingController referenceNumber = TextEditingController();
  TextEditingController serviceProvider = TextEditingController();

  var userAccType,
      userAccNumber,
      userIdType,
      userIdNumber,
      userEmail,
      userPhone,
      userPassword,
      userConfirmPassword;

  List<String> BillType = ['Dialog', 'Mobitel', 'Ceylon Electricty Board', 'Peoples Leasing','National Water Supply and Drainage Board','Hutch'];
  String? selectBillType;

  Color textfieldcolor = Colors.black;

  Favorite_Bill_Trasfer favorite_bill_trasfer = Favorite_Bill_Trasfer ("","","","","");

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "One Time Bill Payment",
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.amber,
          height: size.height * 1.8,
          child: Column(
            children: [
              Container(
                color: Colors.amber,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
              Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10))),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: SizedBox(
                                  height: size.height / 3,
                                  width: size.width,
                                  child: Image.asset("images/payments_m.png")),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: TextFormField(
                                controller:accountNumber,
                                onChanged: (value) {
                                  favorite_bill_trasfer.accountNumber = value;
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter account number';
                                  } else if (value.length != 16) {
                                    return 'Please enter valid Account number';
                                  }
                                  return null;
                                },
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  prefixIcon:
                                      Image.asset("icons/accountnumber.png"),
                                  labelText: "From Account number",
                                  labelStyle: GoogleFonts.montserrat(
                                      fontSize: 16, color: textfieldcolor),
                                  fillColor: Colors.black12,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                      color: Colors.amber,
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                      color: Colors.deepOrange,
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                      color: Colors.deepOrange,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: DropdownButtonFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Image.asset('icons/service.png'),
                                  hintTextDirection: null,
                                  fillColor: Colors.black12,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                      color: Colors.amber,
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                      color: Colors.deepOrange,
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                      color: Colors.deepOrange,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                                dropdownColor: Colors.amber.shade50,
                                isExpanded: true,
                                hint: Text('Service Provider',
                                    textDirection: null,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16, color: textfieldcolor)),
                                value: selectBillType,
                                onChanged: (newValue) {
                                  setState(() {
                                    favorite_bill_trasfer.serviceProvider = newValue as String;
                                  });
                                },
                                validator: (value) {
                                  if (value == null) {
                                    return 'Please select a Service Provider';
                                  } else {
                                    return null;
                                  }
                                },
                                items: BillType.map((idType) {
                                  return DropdownMenuItem(
                                    child: new Text(idType,
                                        style: GoogleFonts.montserrat(
                                            fontSize: 16,
                                            color: textfieldcolor)),
                                    value: idType,
                                  );
                                }).toList(),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: TextFormField(
                                controller:referenceNumber,
                                onChanged: (value) {
                                  favorite_bill_trasfer.referenceNumber = value;
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter reference number';
                                  }
                                  return null;
                                },
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  prefixIcon: Image.asset("icons/refNo.png"),
                                  labelText: "Reference number",
                                  labelStyle: GoogleFonts.montserrat(
                                      fontSize: 16, color: textfieldcolor),
                                  fillColor: Colors.black12,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                      color: Colors.amber,
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                      color: Colors.deepOrange,
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                      color: Colors.deepOrange,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: TextFormField(
                                controller:amount,
                                onChanged: (value) {
                                  favorite_bill_trasfer.amount = value;
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter payment amount';
                                  }
                                  return null;
                                },
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  prefixIcon: Image.asset("icons/amount.png"),
                                  labelText: "Amount",
                                  labelStyle: GoogleFonts.montserrat(
                                      fontSize: 16, color: textfieldcolor),
                                  fillColor: Colors.black12,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                      color: Colors.amber,
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                      color: Colors.deepOrange,
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                      color: Colors.deepOrange,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 20, 10, 20),
                              child: Container(
                                height: 60,
                                width: 400,
                                child: FlatButton(
                                    color: Colors.amber,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                PayBill_OTP(
                                                    serviceProvider:
                                                        favorite_bill_trasfer.serviceProvider,
                                                    amount:
                                                        amount.text,
                                                    referenceNumber:
                                                        referenceNumber.text,
                                                    accountNumber:
                                                        accountNumber.text)),
                                      );
                                    },
                                    child: Text(
                                      "Next",
                                      style: GoogleFonts.workSans(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24,
                                          color: Colors.white),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
