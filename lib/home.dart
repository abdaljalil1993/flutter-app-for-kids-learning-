import 'package:flutter/material.dart';
import 'package:kidslean/allfeed.dart';
import 'package:kidslean/animal.dart';
import 'package:kidslean/color.dart';
import 'package:kidslean/feed.dart';
import 'alpha.dart';
import 'aimn.dart';
import 'numbers.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kids Learn',
          style: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
        centerTitle: true,
        leading: CircleAvatar(
          backgroundImage: AssetImage('images/four.jpg'),
          maxRadius: 20.0,
        ),
        backgroundColor: Colors.orangeAccent,
      ),
      backgroundColor: Colors.white,
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          InkWell(
            onTap: () {
              print("numbers");
              Navigator.of(context).push(Anim(Page: Numbers()));
            },
            child: Padding(
              padding: EdgeInsets.all(10),
              child: GridTile(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19.0),
                      color: Colors.orange[50],
                    ),
                    height: 200.0,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(9.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/four.jpg'),
                          maxRadius: 90.0,
                        ),
                      ],
                    ),
                  ),
                  footer: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Numbers",
                      style: TextStyle(color: Colors.orange, fontSize: 20),
                    ),
                    color: Colors.grey.withOpacity(0.3),
                  )),
            ),
          ),
          InkWell(
            onTap: () {
              print("Animals");

              Navigator.of(context).push(Anim(Page: Animals()));
            },
            child: Padding(
              padding: EdgeInsets.all(10),
              child: GridTile(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19.0),
                      color: Colors.orange[50],
                    ),
                    height: 200.0,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(9.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/wolf.jpg'),
                          maxRadius: 90.0,
                        ),
                      ],
                    ),
                  ),
                  footer: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Animals",
                      style: TextStyle(color: Colors.orange, fontSize: 20),
                    ),
                    color: Colors.grey.withOpacity(0.2),
                  )),
            ),
          ),
          InkWell(
            onTap: () {
              print("Alphapet");
              Navigator.of(context).push(Anim(Page: Alpha()));
            },
            child: Padding(
              padding: EdgeInsets.all(10),
              child: GridTile(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19.0),
                      color: Colors.orange[50],
                    ),
                    height: 200.0,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(9.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/stuv.jpg'),
                          maxRadius: 90.0,
                        ),
                      ],
                    ),
                  ),
                  footer: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Alphapet",
                      style: TextStyle(color: Colors.orange, fontSize: 20),
                    ),
                    color: Colors.grey.withOpacity(0.2),
                  )),
            ),
          ),
          InkWell(
            onTap: () {
              print("Colors");
              Navigator.of(context).push(Anim(Page: Mycolor()));
            },
            child: Padding(
              padding: EdgeInsets.all(10),
              child: GridTile(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19.0),
                      color: Colors.orange[50],
                    ),
                    height: 200.0,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(9.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/blue.jpg'),
                          maxRadius: 90.0,
                        ),
                      ],
                    ),
                  ),
                  footer: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Colors",
                      style: TextStyle(color: Colors.orange, fontSize: 20),
                    ),
                    color: Colors.grey.withOpacity(0.2),
                  )),
            ),
          ),
          InkWell(
            onTap: () {
              print("FeedBack");
              Navigator.of(context).push(Anim(Page: Feed()));
            },
            child: Padding(
              padding: EdgeInsets.all(10),
              child: GridTile(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19.0),
                      color: Colors.orange[50],
                    ),
                    height: 200.0,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(9.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/quest.png'),
                          maxRadius: 90.0,
                        ),
                      ],
                    ),
                  ),
                  footer: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "FeedBack",
                      style: TextStyle(color: Colors.orange, fontSize: 20),
                    ),
                    color: Colors.grey.withOpacity(0.2),
                  )),
            ),
          ),
          InkWell(
            onTap: () {
              print("FeedBack");
              Navigator.of(context).push(Anim(Page: AllFeed()));
            },
            child: Padding(
              padding: EdgeInsets.all(10),
              child: GridTile(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19.0),
                      color: Colors.orange[50],
                    ),
                    height: 200.0,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(9.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/quest.png'),
                          maxRadius: 90.0,
                        ),
                      ],
                    ),
                  ),
                  footer: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "All FeedBack",
                      style: TextStyle(color: Colors.orange, fontSize: 20),
                    ),
                    color: Colors.grey.withOpacity(0.2),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
