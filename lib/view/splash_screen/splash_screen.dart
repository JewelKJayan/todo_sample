import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo_app/utils/color_constants/color_constants.dart';
import 'package:todo_app/view/home_page/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomePage(),
      ));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 100,
              width: 100,
              child: Image.network(
                  "data:image/jpeg;base64,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")),
          Text(
            "To-Do App",
            style: TextStyle(
                color: Colorconstants.mainwhite,
                fontWeight: FontWeight.w500,
                fontSize: 25),
          )
        ],
      )),
    );
  }
}
