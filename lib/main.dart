import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(body: SafeArea(child: MyHomePage())),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        row(),
        Divider(color: Colors.black, height: 100),
        Container(
          height: 200,
          child: row(),
        ),
      ],
    );
  }

  Widget row() {
    return Container(
      color: Colors.blueAccent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          normal(Colors.black),
          normal(Colors.yellow),
          big(Colors.red),
          Align(
            alignment: Alignment.bottomCenter,
            child: normal(Colors.green),
          ),
        ],
      ),
    );
  }

  Widget normal(Color color) {
    return Container(
      width: 50,
      height: 50,
      color: color,
    );
  }

  Widget big(Color color) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}
