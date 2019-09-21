import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class Network extends StatefulWidget{
   @override
   NetworkState createState() {
    return NetworkState();
  }
}

enum LibType{
  dioLib, httpLib
}

class NetworkState extends State<Network>{

  LibType selectLib;

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

  Widget createRaisedBtn(var btnName) {
    return RaisedButton(
      onPressed: () {
        if (btnName == 'Get') {
          print('get network');
          _doGetNetowrk();
          getHttpFromdio();
        } else {
          print('post network');
        }
      },
      child: Text(btnName),
    );
  }

  void _doGetNetowrk() async{

    var url = 'https://www.qq.com/';
    var response = await http.get(url);
    
    print('respose Status: ${response.statusCode} in $url');
//    debugPrint('response body: ${response.body}');
  }

  void getHttpFromdio() async{
    try{
      var url = 'https://www.tingyun.com';
      Response response = await Dio().get(url);
      print('dio response status response ${response.statusCode} in $url');
    }catch(e){
      print(e);
    }
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
              createTag('执行网络访问'),
              createRaisedBtn('Get'),
              createRaisedBtn('post'),
            ],

          ),
        )
//      ),
    );
  }
}