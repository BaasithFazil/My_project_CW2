
// ignore_for_file: use_build_context_synchronously, duplicate_ignore

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/mainscreen.dart';
import 'package:news_app/pages/splashscreens/splashscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:after_layout/after_layout.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<Splash> with AfterLayoutMixin<Splash> {
  double value  = 0;
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool seen = (prefs.getBool('seen') ?? false);

    if (seen) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomePage()));
    } else {
      await prefs.setBool('seen', true);
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const SplashScreen()));
    }
  }

  @override
  void afterFirstLayout(BuildContext context) => checkFirstSeen();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.grey,
          color: Colors.purple,
          strokeWidth: 8.0,

        ),
      ),
    );
  }
    void downloadData(){
     Timer.periodic(
         const Duration(seconds: 1),
             (Timer timer){
            setState(() {
              if(value == 1) {
                  timer.cancel();
              }
              else {
                  value = value + 0.1;
              }
            });
         }
     );
  }
}



