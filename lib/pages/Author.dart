import 'package:flutter/material.dart';

class Author extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Author")),
        body: new GridView.count(crossAxisCount: 2, children: <Widget>[
          new Card(
              margin: new EdgeInsets.all(10.0),
              child: new Center(child: new Text('Poet 1'))),
          new Card(
              margin: new EdgeInsets.all(10.0),
              child: new Center(child: new Text('Poet 1'))),
          new Card(
              margin: new EdgeInsets.all(10.0),
              child: new Center(child: new Text('Poet 1'))),
          new Card(
              margin: new EdgeInsets.all(10.0),
              child: new Center(child: new Text('Poet 1'))),
          new Card(
              margin: new EdgeInsets.all(10.0),
              child: new Center(child: new Text('Poet 1'))),
          new Card(
              margin: new EdgeInsets.all(10.0),
              child: new Center(child: new Text('Poet 1')))
        ]));
  }
}
