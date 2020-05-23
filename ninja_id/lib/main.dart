import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: NinjaCard(),
  )); //MaterialApp

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
    appBar: AppBar(
    title: Text('Ninja Id Card'),
      centerTitle: true,
      backgroundColor: Colors.grey[850],
      elevation: 0.0,
    ), //AppBar
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
             ninjaLevel +=1;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.grey[800],
        ), //FloatingActionButton
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0,40.0,30.0,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
          child: CircleAvatar(
        backgroundImage: AssetImage('assets/girl.png'),
        radius: 40.0,
        ), //CircleAvatar
    ), //Center
          Divider(
        height: 90.0,
    color: Colors.grey[800],
    ), //Divider
          Text(
            'NAME',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0
            ), //TextStyle
          ), //Text
          SizedBox(height: 10.0),
          Text(
            'Radhika',
            style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ), //TextStyle
          ), //Text
          SizedBox(height: 30.0),
          Text(
            'CURRENT NINJA LEVEL',
            style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0
            ), //TextStyle
          ), //Text
          SizedBox(height: 10.0),
          Text(
            '$ninjaLevel',
            style: TextStyle(
              color: Colors.amberAccent[200],
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ), //TextStyle
          ), //Text
          SizedBox(height: 30.0),
          Row(
            children: <Widget>[
              Icon(
                Icons.email,
                color: Colors.grey[400],
              ), //Icon
              SizedBox(width: 10.0),
              Text(
                'radhika@gmail.com',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 18.0,
                  letterSpacing: 1.0,
                )
              )
            ], //<Widget>[]
          ), //Row
        ], //<Widget>[]
        ) // Column
      ), //Padding
    ); //Scaffold
  }
}

}


