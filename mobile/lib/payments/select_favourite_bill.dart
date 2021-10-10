import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/payments/favorite_bill_model.dart';
import 'package:mobile/payments/favouritebill_payment.dart';
import 'package:mobile/payments/update_favourite_bill.dart';
import 'package:mobile/same-bank-transaction/edit_favorite_beneficiary.dart';
import 'package:mobile/same-bank-transaction/sb_beneficiary.dart';
void main() {
  runApp(MyApp2());
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SelectFavouriteBill(),
    );
  }
}

class SelectFavouriteBill extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SelectFavouriteBillState();
  }
}

class _SelectFavouriteBillState extends State<SelectFavouriteBill> {
  Future<List<Favorite_Bill_Main>> listDataJSON() async {
    final url = Uri.parse(
        "http://localhost:5000/bill/view");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      List listData = json.decode(response.body);
      return listData
          .map((listData) => new Favorite_Bill_Main.fromJson(listData))
          .toList();
    } else {
      throw Exception("Error");
    }
  }

  Color textfieldcolor = Colors.amber;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "View All Favourite Bills",
        ),
      ),
      body: FutureBuilder<List<Favorite_Bill_Main>>(
          future: listDataJSON(),
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return new ListView.builder(
                  itemCount: snapshot.data!.length,
                  padding: EdgeInsets.all(10),
                  itemBuilder: (BuildContext context, int currentIndex) {
                    return Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      height: 160,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: <Widget>[
                          Container(
                            height: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.amber,
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 15),
                                    blurRadius: 27,
                                    color: Colors.black12)
                              ],
                            ),
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                  color: Colors.amber.shade50,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          Positioned(
                            top: 70,
                            right: 0,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              height: 40,
                              width: 150,
                              child: FlatButton(
                                  color: Colors.amber.shade600,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(30.0)),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              FavouriteBill_Payment(
                                                serviceProvider: snapshot
                                                    .data![currentIndex]
                                                    .serviceProvider,
                                                payeeDescription: snapshot
                                                    .data![currentIndex]
                                                    .payeeDescription,
                                                referenceNumber: snapshot
                                                    .data![currentIndex]
                                                    .referenceNumber,
                                              )),
                                    );
                                  },
                                  child: Text(
                                    "Select",
                                    style: GoogleFonts.workSans(
                                        fontSize: 20,
                                        color: Colors.white),
                                  )),
                            ),
                          ),
                          Positioned(
                            top: 40,
                            left: 0,
                            child: SizedBox(
                              height: 70,
                              width: size.width - 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 0),
                                    child: Text(
                                      snapshot.data![currentIndex]
                                          .serviceProvider,
                                      style: GoogleFonts.acme(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: 10,
                              left: 0,
                              child: SizedBox(
                                height: 70,
                                width: size.width - 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Text(
                                        snapshot.data![currentIndex]
                                            .referenceNumber,
                                        style: GoogleFonts.acme(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25,
                                            color: Colors.black),
                                      ),
                                    ),
                                    Spacer(),
                                  ],
                                ),
                              ))
                        ],
                      ),
                    );
                  });
            }
          }),
    );
  }
}