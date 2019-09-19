import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class ErrorTab extends StatefulWidget{
  @override
  ErrorTabState createState() {
    return ErrorTabState();
  }
}

class ErrorTabState extends State<ErrorTab>{

  Widget createSelectItem(String itemName){
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
//        为child添加上一些动作的接收处理逻辑
        new GestureDetector(
          child: new Text(itemName, style: TextStyle(fontSize: 26),),
          onTap: (){
            print('click the item $itemName');
            ///这样写也不会导致崩溃，只是在flutter的tag的log中有相关的显示，这样如何抓取？
            Text temp = null;
            temp.data;
            print('ecddd');
          },
        )
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

  Widget createRaisedBtn(var btnName){
    return RaisedButton(
      onPressed: (){
        if(btnName == 'Get'){
          print('get network');
          _doGetNetowrk();
        }else{
          print('post network');
        }
      },
      child: Text(btnName),
    );
  }

  void _doGetNetowrk() async{

    var url = 'https://www.qq.com/';
    var response = await http.get(url);

    print('respose Status: ${response.statusCode}');
//    debugPrint('response body: ${response.body}');
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
              createTag('请错误类型'),
              createSelectItem('Null point expection'),
              createSelectItem('其他'),
//              createTag('请选择协议'),
//              createSelectItem('HTTP'),
//              createSelectItem('HTTPS'),
//              createTag('执行网络访问'),
//              createRaisedBtn('Get'),
//              createRaisedBtn('post'),
            ],

          ),
        )
//      ),
    );
  }
}