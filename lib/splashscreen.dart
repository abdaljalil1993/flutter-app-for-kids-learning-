import 'dart:async';
import 'package:kidslean/home.dart';

import 'login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/scheduler/ticker.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  AnimationController animationController;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    animationController.repeat();

    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) => Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 9,
            child: Column(
              children: [
                SizedBox(
                  height: 100.0,
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage('images/fife.jpg'),
                  radius: 100.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text('Kids Learn APP',
                    style: TextStyle(
                        fontSize: 50.0,
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.bold)),
                Text('Every Thing Your Child need',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 30.0,
                ),
                CircularProgressIndicator(
                    backgroundColor: Colors.white,
                    valueColor: animationController.drive(ColorTween(
                        begin: Colors.yellow, end: Colors.orange[900]))),
                SizedBox(
                  height: 80.0,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Text('Powered By Hiba-Nour-Nour',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.yellowAccent,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      )),
    );
  }
}
