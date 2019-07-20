import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "getting started title",
        home: new Scaffold(
          appBar: new AppBar(title: new Center(child: new Text("Bunga Sahib"))),
          body: new HomeWidget(),
        ));
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: 20,
      itemBuilder: (context, rowNumber) {
        return new Container(
            padding: new EdgeInsets.all(16.0),
            child: new Column(
              children: <Widget>[
                new Image.network("https://article.images.consumerreports.org/prod/content/dam/CRO%20Images%202019/Magazine/04April/CR-Cars-InlineHero-ComingSoon-Toyota-Supra-2-19"),
                new Text("Driver num: $rowNumber",
                  style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)
                ),
                new Divider(
                  color: Colors.blue,
                )
              ],
            ));
      },
    );
  }
}


