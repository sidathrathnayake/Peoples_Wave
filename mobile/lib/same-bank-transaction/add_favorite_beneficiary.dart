// ignore: unused_import
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/dashboard.dart';
import 'package:mobile/signin.dart';


class AddSameBankBeneficiary extends StatefulWidget {
  const AddSameBankBeneficiary({Key? key}) : super(key: key);

  @override
  _AddSameBankBeneficiaryState createState() => _AddSameBankBeneficiaryState();
}

class _AddSameBankBeneficiaryState extends State<AddSameBankBeneficiary> {
  final _formKey = GlobalKey<FormState>();

var userAccType, userAccNumber, userIdType, userIdNumber, userEmail, userPhone, userPassword, userConfirmPassword;

  List<String> AccType = ['YES', 'Jana Jaya', 'Vanitha Vasana'];
  String? selectAccType;

  List<String> IdType = ['National ID Number', 'Passport'];
  String? selectIdType;

  Color textfieldcolor = Colors.black;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
      elevation: 0,
      centerTitle: true,
      title: Text("Sign Up",
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
                                  child: Image.asset("images/favorite beneficiary add.png")),
                            ),
                            
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: DropdownButtonFormField(
                                decoration: InputDecoration(
                                  prefixIcon:
                                      Image.asset('icons/accounttype.png'),
                                  hintTextDirection: null,
                                  fillColor: Colors.amber.shade50,
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
                                isExpanded: true,
                                hint: Text('Account Type',
                                    textDirection: null,
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: textfieldcolor)),
                                value: selectAccType,
                                onChanged: (newValue) {
                                  setState(() {
                                    selectAccType = newValue as String?;
                                  });
                                },
                                validator: (value) {
                                  if (value == null) {
                                    return 'Please select an account type';
                                  } else {
                                    return null;
                                  }
                                },
                                items: AccType.map((accountType) {
                                  return DropdownMenuItem(
                                    child: new Text(accountType,
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18,
                                            color: textfieldcolor)),
                                    value: accountType,
                                  );
                                }).toList(),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: TextFormField(
                                controller: TextEditingController(
                                    text: userAccNumber),
                                onChanged: (value) {
                                  userAccNumber = value;
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
                                  labelText: "Account number",
                                  labelStyle: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: textfieldcolor),
                                  fillColor: Colors.amber.shade50,
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
                                  prefixIcon: Image.asset('icons/idtype.png'),
                                  hintTextDirection: null,
                                  fillColor: Colors.amber.shade50,
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
                                isExpanded: true,
                                hint: Text('Identity Type',
                                    textDirection: null,
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: textfieldcolor)),
                                value: selectIdType,
                                onChanged: (newValue) {
                                  setState(() {
                                    selectIdType = newValue as String?;
                                  });
                                },
                                validator: (value) {
                                  if (value == null) {
                                    return 'Please select an identity type';
                                  } else {
                                    return null;
                                  }
                                },
                                items: IdType.map((idType) {
                                  return DropdownMenuItem(
                                    child: new Text(idType,
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18,
                                            color: textfieldcolor)),
                                    value: idType,
                                  );
                                }).toList(),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: TextFormField(
                                controller: TextEditingController(
                                    text: userIdNumber),
                                onChanged: (value) {
                                  userIdNumber = value;
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter ID number';
                                  } else if (value.length != 9) {
                                    return 'Please enter valid ID number';
                                  }
                                  return null;
                                },
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  prefixIcon: Image.asset("icons/idnumber.png"),
                                  labelText: "ID number",
                                  labelStyle: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: textfieldcolor),
                                  fillColor: Colors.amber.shade50,
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
                                controller:
                                    TextEditingController(text: userEmail),
                                onChanged: (value) {
                                  userEmail = value;
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter Email';
                                  } else if (RegExp(
                                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                      .hasMatch(value)) {
                                    return null;
                                  } else {
                                    return 'Please enter valid email!';
                                  }
                                },
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  prefixIcon: Image.asset("icons/email.png"),
                                  labelText: "Email",
                                  labelStyle: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: textfieldcolor),
                                  fillColor: Colors.amber.shade50,
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
                                controller:
                                    TextEditingController(text: userPhone),
                                onChanged: (value) {
                                  userPhone = value;
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter contact number';
                                  }
                                  return null;
                                },
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  prefixIcon: Image.asset("icons/phone.png"),
                                  labelText: "Contact number",
                                  labelStyle: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: textfieldcolor),
                                  fillColor: Colors.amber.shade50,
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
                                controller: TextEditingController(
                                    text: userPassword),
                                onChanged: (value) {
                                  userPassword = value;
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter password';
                                  }
                                  return null;
                                },
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  prefixIcon: Image.asset("icons/password.png"),
                                  labelText: "Password",
                                  labelStyle: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: textfieldcolor),
                                  fillColor: Colors.amber.shade50,
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
                                controller: TextEditingController(
                                    text: userConfirmPassword),
                                onChanged: (value) {
                                  userConfirmPassword = value;
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please confirm password';
                                  }
                                  return null;
                                },
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  prefixIcon:
                                      Image.asset("icons/confirmpassword.png"),
                                  labelText: "Confirm Password",
                                  labelStyle: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: textfieldcolor),
                                  fillColor: Colors.amber.shade50,
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
                                      if (_formKey.currentState!.validate()) {
                                        
                                      } else {
                                        print("no");
                                      }
                                    },
                                    child: Text(
                                      "Sign Up",
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
