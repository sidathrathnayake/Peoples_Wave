import 'dart:html';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/payments/favorite_bill_model.dart';
import 'package:mobile/payments/view_all_favouriteBills.dart';
import 'package:mobile/same-bank-transaction/sb_beneficiary.dart';
import 'package:mobile/same-bank-transaction/view_all_beneficiary.dart';

class UpdateFavouriteBill extends StatelessWidget {
  void intialValues() {
    fav_bill_update.serviceProvider = updateData.serviceProvider;
    fav_bill_update.payeeDescription = updateData.payeeDescription;
    fav_bill_update.referenceNumber = updateData.referenceNumber;
  }

  final _formKey = GlobalKey<FormState>();
  // String serviceProvider;
  // String payeeDescription;
  // String referenceNumber;

  late BuildContext context;
  final Favorite_Bill_Main updateData;

  UpdateFavouriteBill(
      {Key? key,
      // required this.serviceProvider,
      // required this.payeeDescription,
      // required this.referenceNumber,
      required this.updateData})
      : super(key: key);

  get billId => "BILL308364";
  List<String> BillType = [
    'Dialog',
    'Mobitel',
    'Dialog Television',
    'Ceylon Electricty Board',
    'Peoples Leasing',
    'National Water Supply and Drainage Board',
    'Hutch'
  ];

  Favorite_Bill_Update fav_bill_update = Favorite_Bill_Update("", "", "", "");

  Future save() async {
    await http.put(
      Uri.parse('http://localhost:5000/bill/update/${updateData.id}'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'serviceProvider': fav_bill_update.serviceProvider,
        'payeeDescription': fav_bill_update.payeeDescription,
        'referenceNumber': fav_bill_update.referenceNumber,
      }),
    );
  }

  Color textfieldcolor = Colors.black;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    intialValues();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Update Favorite Bill",
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.amber,
          height: size.height * 1.1,
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
                                  child:
                                      Image.asset("images/add_fav_bill.png")),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: DropdownButtonFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Image.asset('icons/service.png'),
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
                                dropdownColor: Colors.amber.shade50,
                                hint: Text('Service Provider',
                                    textDirection: null,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: textfieldcolor)),
                                value: updateData.serviceProvider,
                                onChanged: (value) {
                                  fav_bill_update.serviceProvider =
                                      value as String;
                                },
                                validator: (value) {
                                  if (value == null) {
                                    return 'Please select an service provider';
                                  } else {
                                    return null;
                                  }
                                },
                                items: BillType.map((billType) {
                                  return DropdownMenuItem(
                                    child: new Text(billType,
                                        style: GoogleFonts.montserrat(
                                            fontSize: 16,
                                            color: textfieldcolor)),
                                    value: billType,
                                  );
                                }).toList(),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: TextFormField(
                                controller: TextEditingController(
                                    text: updateData.referenceNumber),
                                onChanged: (value) {
                                  fav_bill_update.referenceNumber = value;
                                },
                                keyboardType: TextInputType.number,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter reference number';
                                  }
                                  return null;
                                },
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  prefixIcon: Image.asset("icons/refNo.png"),
                                  labelText: "Reference Number",
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
                                    text: updateData.payeeDescription),
                                onChanged: (value) {
                                  fav_bill_update.payeeDescription = value;
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter payee description';
                                  }
                                },
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  prefixIcon:
                                      Image.asset("icons/description.png"),
                                  labelText: "Payee Description",
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
                                  const EdgeInsets.fromLTRB(16, 20, 16, 20),
                              child: Container(
                                height: 60,
                                width: 200,
                                child: FlatButton(
                                    color: Colors.amber,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                    onPressed: () => showDialog<String>(
                                          context: context,
                                          builder: (BuildContext context) =>
                                              AlertDialog(
                                            title: Text('Loading....'),
                                            content:
                                                const Text('Confirm Edit '),
                                            actions: <Widget>[
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    context, 'Cancel'),
                                                child: const Text('Cancel'),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  save();

                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            new ViewAllFavouriteBills()),
                                                  );
                                                },
                                                child: const Text('OK'),
                                              ),
                                            ],
                                          ),
                                        ),
                                    child: Text(
                                      "Confirm Update",
                                      style: GoogleFonts.workSans(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
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

mixin _id {}
