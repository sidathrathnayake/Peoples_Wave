import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'menu.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({
    Key? key,
    required this.size,
    required this.itemIndex,
    required this.menudata,
  }) : super(key: key);

  final Size size;
  final int itemIndex;
  final MenuData menudata;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      height: 160,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            height: 136,
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
                  color: Colors.yellow.shade50,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 160,
              width: 200,
              child: Image.asset(
                menudata.dash_image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 136,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        menudata.dash_title,
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
  }
}

class MenuCard2 extends StatelessWidget {
  const MenuCard2({
    Key? key,
    required this.size,
    required this.itemIndex,
    required this.billmenudata,
  }) : super(key: key);

  final Size size;
  final int itemIndex;
  final BillMenuData billmenudata;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        height: 160,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 20.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.amber, width: 1),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(20.0),
                            topRight: const Radius.circular(20.0),
                          )),
                      child: Center(
                        child: Text(
                          billmenudata.dash_title,
                          style: TextStyle(
                            backgroundColor: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 500,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: new BorderRadius.only(
                            bottomLeft: const Radius.circular(20.0),
                            bottomRight: const Radius.circular(20.0),
                          )),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            billmenudata.dash_description,
                            style: TextStyle(
                              backgroundColor: Colors.amber,
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class Fav_Bill_MenuCard extends StatelessWidget {
  const Fav_Bill_MenuCard({
    Key? key,
    required this.size,
    required this.itemIndex,
    required this.fav_bill_data,
  }) : super(key: key);

  final Size size;
  final int itemIndex;
  final Fav_Bill_Data fav_bill_data;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        height: 160,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 20.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.amber, width: 1),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(20.0),
                            topRight: const Radius.circular(20.0),
                          )),
                      child: Center(
                        child: Text(
                          fav_bill_data.dash_title,
                          style: TextStyle(
                            backgroundColor: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 500,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: new BorderRadius.only(
                            bottomLeft: const Radius.circular(20.0),
                            bottomRight: const Radius.circular(20.0),
                          )),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            fav_bill_data.dash_description,
                            style: TextStyle(
                              backgroundColor: Colors.amber,
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class MenuDataSB extends StatelessWidget {
  const MenuDataSB({
    Key? key,
    required this.size,
    required this.itemIndex,
    required this.sb_beneficiary,
  }) : super(key: key);

  final Size size;
  final int itemIndex;
  final SB_Beneficiary sb_beneficiary;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        height: 160,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 20.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.amber, width: 1),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(20.0),
                            topRight: const Radius.circular(20.0),
                          )),
                      child: Center(
                        child: Text(
                          sb_beneficiary.dash_title,
                          style: TextStyle(
                            backgroundColor: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 500,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: new BorderRadius.only(
                            bottomLeft: const Radius.circular(20.0),
                            bottomRight: const Radius.circular(20.0),
                          )),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            sb_beneficiary.dash_description,
                            style: TextStyle(
                              backgroundColor: Colors.amber,
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class MenuCardCheque extends StatelessWidget {
  const MenuCardCheque({
    Key? key,
    required this.size,
    required this.itemIndex,
    required this.chequeMenuData,
  }) : super(key: key);

  final Size size;
  final int itemIndex;
  final ChequeMenuData chequeMenuData;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        height: 160,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 20.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.amber, width: 1),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(20.0),
                            topRight: const Radius.circular(20.0),
                          )),
                      child: Center(
                        child: Text(
                          chequeMenuData.dash_title,
                          style: TextStyle(
                            backgroundColor: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 500,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: new BorderRadius.only(
                            bottomLeft: const Radius.circular(20.0),
                            bottomRight: const Radius.circular(20.0),
                          )),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            chequeMenuData.dash_description,
                            style: TextStyle(
                              backgroundColor: Colors.amber,
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class MenuCard_SB_trancaction extends StatelessWidget {
  const MenuCard_SB_trancaction({
    Key? key,
    required this.size,
    required this.itemIndex,
    required this.sb_transaction,
  }) : super(key: key);

  final Size size;
  final int itemIndex;
  final SB_Transaction sb_transaction;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        height: 160,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 20.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.amber, width: 1),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(20.0),
                            topRight: const Radius.circular(20.0),
                          )),
                      child: Center(
                        child: Text(
                          sb_transaction.dash_title,
                          style: TextStyle(
                            backgroundColor: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 500,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: new BorderRadius.only(
                            bottomLeft: const Radius.circular(20.0),
                            bottomRight: const Radius.circular(20.0),
                          )),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            sb_transaction.dash_description,
                            style: TextStyle(
                              backgroundColor: Colors.amber,
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
