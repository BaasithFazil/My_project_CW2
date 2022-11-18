import 'package:flutter/material.dart';


class Mycolors {
  static const primarypurple = Color.fromARGB(162, 20, 36, 180);
  static const primarywhite = Colors.white;
  static const primarygrey = Colors.grey;
  static const primarydeeppurple = Colors.deepPurple;
  static const primaryred = Colors.red;
}

class MyBorderRadius {
  static final primaryborderradius = BorderRadius.circular(30.0);
  static final secondaryborderradius = BorderRadius.circular(15.0);
}

class MyPadding {
  static const primarypadding = EdgeInsets.all(15.0);
  static const custompadding = EdgeInsets.only(left: 15.0, top: 15.0, bottom: 15.0);
  static const primarypadding1 = EdgeInsets.only(left: 15.0);
  static const secondarypadding = EdgeInsets.only(top: 10.0);
  static const carousalpadding = EdgeInsets.only(bottom: 50.0);
  static const carousalpadding1 = EdgeInsets.only(top: 15.0);
}


class MyTextStyle {
  static const tabbarstyle = TextStyle(
    fontSize: 18.0,
  );

  static const content = TextStyle(
    fontSize: 18.0,
  );
  static const articletitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.purpleAccent,
  );

  static const articletitle1 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
  );

  static const articledescription = TextStyle(
    fontSize: 20,
    fontFamily: 'Poppins'
  );

  static const articlepublished = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    fontFamily: 'Poppins'
  );

  static const articlesourcename = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold, 
  );

  static const welcomepageheader = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 30,
      fontFamily: 'Poppins',
  );

  static const alertIcon = Icon(Icons.info, size: 30.0,);
}




