import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "getting started title",
        home: new Scaffold(
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
