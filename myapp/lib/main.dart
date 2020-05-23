import 'package:flutter/material.dart';

void main() =>
  runApp(MaterialApp(
    home: Home(),
  )); //Material App

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
          title: Text('My First App'),
          centerTitle: true,
          backgroundColor: Colors.red[600]
      ), //AppBar
      body: Row(
        children: <Widget>[
          Expanded(
          child: Image.asset('assests/space2.jpg'),
            flex: 3,
    ), // Expanded
          Expanded(
            flex: 3,
          child: Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(30.0),
            child: Text('1'),
          ), //Container
          ), //Expanded
          Expanded(
            flex: 2,
          child: Container(
            color: Colors.pinkAccent,
            padding: EdgeInsets.all(30.0),
            child: Text('2'),
          ), //Container
          ), //Expanded
          Expanded(
            flex: 1,
          child: Container(
            color: Colors.amber,
            padding: EdgeInsets.all(30.0),
            child: Text('3'),
          ), //Container
    ), //Expanded
        ], //<Widget>[]
      ), //Row
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click me'),
        backgroundColor: Colors.red[600],
      ), // FloatingActionButton
    ); //Scaffold;
  }
}
