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

  Widget createSelectItem(String libName){
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          flex: 2,
          child : new Text(libName),
        ),
        Expanded(
            flex: 1,
            child : new Icon(Icons.check, color: Colors.grey,)
        ),
      ],
    );
  }

  Widget createTag(String tagName){
    return new Container(
      child: new Row(
        children: <Widget>[
          new Text(tagName, style: TextStyle(fontSize: 26)),
        ],
      ),
      color: Colors.grey[500],
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
//        child: SafeArea(
          child: new Column(
//          text从左还是右开始显示
            textDirection: TextDirection.ltr,
            children: <Widget>[
              createTag('请选择网络库'),
              createSelectItem('dio 库'),
              createSelectItem('http 库'),
              createTag('请选择协议'),
              createSelectItem('HTTP'),
              createSelectItem('HTTPS'),
              createTag('Response'),
            ],

          ),
        )
//      ),
    );
  }
}