import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'aimn.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  TextEditingController e1 = TextEditingController();
  TextEditingController e2 = TextEditingController();
  TextEditingController e3 = TextEditingController();
  TextEditingController e4 = TextEditingController();
  TextEditingController e5 = TextEditingController();
  TextEditingController e6 = TextEditingController();

  Future userlogin() async {
    var respones = await http.post(
        Uri.parse("https://klearn1.000webhostapp.com/api/feed.php"),
        body: {"name": e1.text, "msg": e2.text, "phone": e5.text});
    var data = json.decode(respones.body);
    if (data['result'] == "true") {
      print(data['result']);
      Navigator.of(context).push(Anim(Page: Feed()));
    } else {}
  }

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
      body: Builder(
        builder: (context) => Container(
            decoration: BoxDecoration(),
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 28.0, right: 28.0, top: 13.0, bottom: 30.0),
              child: ListView(
                children: [
                  SizedBox(
                    height: 3.0,
                  ),
                  Icon(Icons.add, size: 90.0, color: Colors.teal),
                  SizedBox(
                    height: 10.0,
                  ),
                  Form(
                    //  key: f,
                    child: Column(
                      children: [
                        TextFormField(
                          autofocus: true,
                          controller: e1,
                          validator: (String value) {
                            if (value.isEmpty) return 'enter  Name';
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            labelText: ' Name',
                            hintText: 'ex : hiba',
                            labelStyle: TextStyle(color: Colors.teal),
                            errorStyle: TextStyle(color: Colors.teal),
                          ),
                        ),
                        SizedBox(
                          height: 19.0,
                        ),
                        TextFormField(
                          autofocus: true,
                          validator: (String value) {
                            if (value.isEmpty) return 'enter message';
                          },
                          controller: e2,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            labelText: 'message',
                            hintText: 'ex : message',
                            labelStyle: TextStyle(color: Colors.teal),
                            errorStyle: TextStyle(color: Colors.red),
                          ),
                        ),
                        SizedBox(
                          height: 29.0,
                        ),

                        TextFormField(
                          autofocus: true,
                          validator: (String value) {
                            if (value.isEmpty) return 'enter Phone please';
                          },
                          controller: e5,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            labelText: 'Phone',
                            hintText: 'ex :098861352',
                            labelStyle: TextStyle(color: Colors.teal),
                            errorStyle: TextStyle(color: Colors.red),
                          ),
                        ),
                        SizedBox(
                          height: 29.0,
                        ),

                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed))
                                  return Colors.teal;
                                return Colors
                                    .teal; // Use the component's default.
                              },
                            ),
                          ),
                          onPressed: () {
                            userlogin();
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Send Feed Back',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 23.0)),
                          ),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        //  Text(ertext, style: TextStyle(color: Colors.red)),
                        SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
