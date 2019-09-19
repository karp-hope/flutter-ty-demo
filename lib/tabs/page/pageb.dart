import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageB extends StatelessWidget{
  static const String routeName = '/pageb';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('PageB'),
      ),
      body: new Container(
        child: new Center(
          child: new Text('PageB sceen'),
        ),
      ),
    );
  }

}