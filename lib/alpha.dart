import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:provider/provider.dart';
// import 'package:audioplayers/audio_cache.dart';
//import 'package:audioplayers/audioplayers.dart';
import 'dart:async';
import 'dart:io';

import 'dart:convert';
import 'package:http/http.dart' as http;

//import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show rootBundle;

class Alpha extends StatefulWidget {
  @override
  _AlphaState createState() => _AlphaState();
}

class _AlphaState extends State<Alpha> {
  // AudioPlayer audioPlayer = AudioPlayer();
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.orange;
    }
    return Colors.orangeAccent;
  }

  String s;
  int i;
  @override
  initState() {
    getcollage();
    setState(() {
      i = 0;
      s = 'a.amr';
    });
    super.initState();
  }

  var col = [];
  Future<List> getcollage() async {
    String url = "https://klearn1.000webhostapp.com/api/allletter.php";
    var res = await http.get(Uri.parse(url));
    var data = jsonDecode(res.body);

    setState(() {
      col = data;
    });
    return col;
  }

  AudioPlayer audioPlayer;
  AudioCache audioCache = AudioCache();

  playLocal() async {
    print(s);
    audioPlayer = await audioCache.play("sounds/" + s); //audio play function
  }

  void next() {
    setState(() {
      i++;
      if (i > col.length - 1) {
        i = 0;
        s = col[i]['sound'];
      } else {
        s = col[i]['sound'];
      }
    });
  }

  void prev() {
    setState(() {
      i--;
      if (i < 0) {
        i = col.length - 1;
        s = col[i]['sound'];
      } else {
        s = col[i]['sound'];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Text("Alphabet"),
          centerTitle: true,
        ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Lets Learn Alphabet',
                  style: TextStyle(fontSize: 27, color: Colors.orange[50]),
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 1,
                        spreadRadius: 1,
                        color: Colors.deepOrange,
                      )
                    ],
                    color: Colors.orange[700]),
              ),
              SizedBox(
                height: 20.0,
              ),
              Image.network(
                  "https://klearn1.000webhostapp.com/img/" + col[i]['image']),
              SizedBox(
                height: 20.0,
              ),
              Container(
                  alignment: Alignment.center,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          prev();
                        },
                        child: Text("Previous"),
                        style: ButtonStyle(
                            alignment: Alignment.center,
                            backgroundColor:
                                MaterialStateProperty.resolveWith(getColor)),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          playLocal();
                        },
                        child: Text("Sound"),
                        style: ButtonStyle(
                            alignment: Alignment.center,
                            backgroundColor:
                                MaterialStateProperty.resolveWith(getColor)),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          next();
                        },
                        child: Text("Next"),
                        style: ButtonStyle(
                            alignment: Alignment.center,
                            backgroundColor:
                                MaterialStateProperty.resolveWith(getColor)),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(20.0))
            ],
          ),
        ));
  }
}
