import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'aimn.dart';

class AllFeed extends StatefulWidget {
  @override
  _AllFeedState createState() => _AllFeedState();
}

class _AllFeedState extends State<AllFeed> {
  var item = [];
  Future alloffer() async {
    var res = await http
        .get(Uri.parse("https://klearn1.000webhostapp.com/api/allfeed.php"));
    var data = jsonDecode(res.body);
    setState(() {
      item = data;
    });
  }

  @override
  void initState() {
    alloffer();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'All Feed',
          style: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: item.length,
          itemBuilder: (context, i) {
            return listitem(item[i]['name'], item[i]['msg'], item[i]['phone']);
          },
        ),
      ),
    );
  }

  Widget listitem(String stockname, String medname, String qte) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.teal),
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            shape: BoxShape.rectangle,
            boxShadow: [
              BoxShadow(
                spreadRadius: 2,
                blurRadius: 3,
                color: Colors.teal,
              )
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(2),
            child: ListTile(
              title: Row(
                children: [
                  Expanded(
                    child: Text(
                      'User-Name:' + stockname,
                      style: TextStyle(fontSize: 15, color: Color(0xFF1A2036)),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '  User-Message: ' + medname,
                      style: TextStyle(fontSize: 15, color: Color(0xFF1A2036)),
                    ),
                  )
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      'Phone  :' + qte,
                      style: TextStyle(fontSize: 15, color: Color(0xFFE90A16)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
