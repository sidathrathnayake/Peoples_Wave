import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar buildAppbarLogin() {
    return AppBar(
      elevation: 0,
      title: Text('Dashboard'),
      centerTitle: true,
      actions: <Widget>[
        
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("images/pagetop.png"),
        )
        
      ],
    );
  }
