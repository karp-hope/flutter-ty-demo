import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageC extends StatelessWidget{
  static const String routeName = '/pagec';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('PageC'),
      ),
      body: new Container(
        child: new Center(
          child: new Text('PageC sceen'),
        ),
      ),
    );
  }

}