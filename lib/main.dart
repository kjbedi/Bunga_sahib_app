import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  final response = http.get('https://jsonplaceholder.typicode.com/posts/1');
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "getting started title",
        home: new Scaffold(
          drawer: Drawer(
  // Add a ListView to the drawer. This ensures the user can scroll
  // through the options in the drawer if there isn't enough vertical
  // space to fit everything.
  child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: <Widget>[
      DrawerHeader(
        child: Text('Drawer Header'),
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
      ),
      ListTile(
        title: Text('Item 1'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        title: Text('Item 2'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
    ],
  ),
),
          appBar: new AppBar(title: new Center(child: new Text("Bunga Sahib"))),
          body: new HomeWidget(3),
        ));
  }
}

class HomeWidget extends StatelessWidget {
  final int loop;

  const HomeWidget(this.loop);

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: loop,
      itemBuilder: (context, rowNumber) {
        return new Container(
          padding: new EdgeInsets.all(16.0),
          child: new SingleListItem()
        );
      },
    );
  }
}

class SingleListItem extends StatefulWidget{
  @override
  _SingleListItemState createState() => _SingleListItemState();
}

class _SingleListItemState extends State<SingleListItem>{
  bool hide = false;
  @override


  Widget build(BuildContext context) {

  return GestureDetector(
      onTap:(){
        if(hide){
          setState(() {
            hide = false;
          });
        }else{
          setState(() {
            hide = true;
          });
        }
      },
      child: Column(
        children: <Widget>[
          new Image.network("https://article.images.consumerreports.org/prod/content/dam/CRO%20Images%202019/Magazine/04April/CR-Cars-InlineHero-ComingSoon-Toyota-Supra-2-19"),
          new Text("Tap for info"),
          if (hide) new DriverInfo("eee"),
          new Divider(
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}

class DriverInfo extends StatelessWidget{
  final String info;
  DriverInfo(this.info);
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Text("Drivers Name :$info",style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
          Text("Contact:",style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
          Text("Spots Left:",style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
        ],
      );
  }
}
