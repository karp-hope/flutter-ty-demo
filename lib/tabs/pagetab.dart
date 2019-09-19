import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ty_demo/tabs/page/pagea.dart';
import 'package:flutter_ty_demo/tabs/page/pageb.dart';
import 'package:flutter_ty_demo/tabs/page/pagec.dart';

class PageJump extends StatefulWidget{
  @override
  PageJumpState createState() {
    // TODO: implement createState
    return new PageJumpState();
  }
}

class PageJumpState extends State<PageJump>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        body: new Center(
          child: new Column(
            children: <Widget>[
              new RaisedButton(onPressed: () {
                print('jump to pageA');
//                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(PageA.routeName);
              }, child: Text('pageA'),),
              new RaisedButton(onPressed: () {
                print('jump to pageB');
//                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(PageB.routeName);
              }, child: Text('pageB'),),
              new RaisedButton(onPressed: () {
                print('jump to pageC');
//                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(PageC.routeName);
              }, child: Text('pageC'),),
            ],
          ),
        )
    );
  }

}