import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/pages/splashscreens/splashscreen.dart';


void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins' 
      ),
      
      //first redirecting to splash and then it will go to homepage.
      home:const SplashScreen(),
      //this is the debug banner removing.
      debugShowCheckedModeBanner: false,
    );
  }
}




