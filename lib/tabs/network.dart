import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Network extends StatefulWidget{
   @override
   NetworkState createState() {
    return NetworkState();
  }
}

class NetworkState extends State<Network>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
//        child: SafeArea(
          child: new Row(
//          text从左还是右开始显示
            textDirection: TextDirection.ltr,
            children: <Widget>[
              new Text('请选择类库')
            ],
          ),
        )
//      ),
    );
  }
}