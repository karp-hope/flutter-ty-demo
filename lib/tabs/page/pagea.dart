import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageA extends StatelessWidget{
  static const String routeName = '/pagea';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('pageA'),
      ),
      body: new Container(
        child: new Center(
          child: new Text('pageA sceen'),
        ),
      ),
    );
  }

}