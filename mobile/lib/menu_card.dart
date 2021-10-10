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
                  color: Colors.yellow.shade50, borderRadius: BorderRadius.circular(10)),
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
                  color: Colors.yellow.shade50, borderRadius: BorderRadius.circular(10)),
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
                billmenudata.dash_image,
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
                        billmenudata.dash_title,
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
                  color: Colors.yellow.shade50, borderRadius: BorderRadius.circular(10)),
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
                fav_bill_data.dash_image,
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
                        fav_bill_data.dash_title,
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
                  color: Colors.yellow.shade50, borderRadius: BorderRadius.circular(10)),
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
                sb_beneficiary.dash_image,
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
                        sb_beneficiary.dash_title,
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
                  color: Colors.yellow.shade50, borderRadius: BorderRadius.circular(10)),
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
                chequeMenuData.dash_image,
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
                        chequeMenuData.dash_title,
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

