import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/menu.dart';
import 'package:mobile/menu_card.dart';
import 'package:mobile/navigational_drawer.dart';
import 'package:mobile/service_user.dart';
import 'package:mobile/signin.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Fav_Bill_DashBoard extends StatefulWidget {
  const Fav_Bill_DashBoard({Key? key}) : super(key: key);

  @override
  _Fav_Bill_DashBoardState createState() => _Fav_Bill_DashBoardState();
}

final slideImages = [
  'images/slide1.png',
  'images/slide2.png',
  'images/slide3.png',
  'images/slide4.png',
  'images/slide5.png',
];

var scaffoldKey = GlobalKey<ScaffoldState>();

class _Fav_Bill_DashBoardState extends State<Fav_Bill_DashBoard> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    //Service().asyncFunc();
   
    return Scaffold(
        key: scaffoldKey,
        drawer: NavigationalDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.amber,
          elevation: 0,
          title: Text(
            'Dashboard',
            style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Image.asset("icons/menu.png"),
            color: Colors.white,
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
          ),
        ),
        body: Container(
            height: size.height,
            child: Column(
              children: [
                Container(
                  color: Colors.amber,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ),
                // Center(
                //     child: CarouselSlider.builder(
                //         itemCount: slideImages.length,
                //         itemBuilder: (context, index, realIndex) {
                //           final slideImage = slideImages[index];
                //           return buildImage(slideImage, index);
                //         },
                //         options: CarouselOptions(
                //           autoPlay: true,
                //           viewportFraction: 1,
                //           autoPlayInterval: Duration(seconds: 3),
                //           height: size.height / 4,
                //         ))),
                Expanded(
                  child: Stack(children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          )),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    ListView.builder(
                        itemCount: fav_Bill_Datas.length,
                        itemBuilder: (context, index) => Fav_Bill_MenuCard(
                              size: size,
                              itemIndex: index,
                              fav_bill_data: fav_Bill_Datas[index],
                            ))
                  ]),
                )
              ],
            )));
  }

  buildImage(String slideImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
        child: Image.asset(
          slideImage,
          fit: BoxFit.cover,
        ),
      );
}
