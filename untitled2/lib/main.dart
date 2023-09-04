import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber[100],
        appBar: AppBar(
          title: Center(
            child: Text(
              "Loren Ipsum",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 25,
              ),
            ),
          ),
          titleTextStyle: TextStyle(),
          backgroundColor: Colors.orangeAccent,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.red[200],

              child: Center(child: Text("duck")),
              height: 50,
              width: 50,

            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.green[200],

              child: Center(
                child: Text("fuck"),
              ),
              height: 50,
              width: 50,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.blue[200],
              child: Center(
                child: Text("luck"),
              ),
              height: 50,
              width: 50,
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
