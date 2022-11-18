import 'package:news_app/pages/tabbar/fifthscreen.dart';
import 'package:news_app/pages/tabbar/firstscreen.dart';
import 'package:news_app/pages/tabbar/fourthscreen.dart';
import 'package:news_app/pages/tabbar/secondscreen.dart';
import 'package:news_app/pages/tabbar/thirdscreen.dart';

List <String> images = [
  "assets/images/image1.jpg",
  "assets/images/image2.jpg",
  "assets/images/image3.jpg",
  "assets/images/image4.jpg",
];

List <dynamic> screens = [
  const FirstScreen(),
  const SecondScreen(),
  const ThirdScreen(),
  const FourthScreen(),
  const FifthScreen(),
];

List <dynamic> tabs = [
  "Business News",
  "Health News",
  "Science News",
  "Sports News",
  "Technology News",
];