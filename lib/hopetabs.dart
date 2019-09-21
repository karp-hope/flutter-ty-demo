import 'dart:developer' as prefix0;
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ty_demo/tabs/errortab.dart';
import 'package:flutter_ty_demo/tabs/network.dart';
import 'package:flutter_ty_demo/tabs/pagetab.dart';

import 'tabs/webviewhope.dart';

class HopeTabs extends StatefulWidget{
  @override
  HopeTabsState createState()  => HopeTabsState();
}

//SingleTickerProviderStateMixin被TabController用作切换时候的动画，vsync这里需要填入
class HopeTabsState extends State<HopeTabs> with SingleTickerProviderStateMixin, WidgetsBindingObserver{
//  tabcontroller用于保持选择的tab和content部分保持同步的处理
  TabController tabController;

  static const num = 4;

//  只进行一次初始化的操作可以在这里里面进行操作
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//初始化tabController
    tabController = new TabController(length: num, vsync: this);

    //debugPrint7用来打印大量的内容.另外在logcat中的log为flutter为tag的，也在那里显示
    debugPrint('network initState debugPrint');

    WidgetsBinding.instance.addObserver(this);
    print('hopetab initState');
  }

//  当state不需要的时候，会被调用，这里执行clean的操作
  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    print('network dispose');
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    print('didChangeAppLifecycleState');
//    super.didChangeAppLifecycleState(state);

    if(state == AppLifecycleState.inactive){
      print('state == AppLifecycleState.inactive in hometabs');
    }else if(state == AppLifecycleState.paused){
      print('state == AppLifecycleState.paused in hometabs');
    }else if(state == AppLifecycleState.resumed){
      print('state == AppLifecycleState.resumed in hometabs');
    }else if(state == AppLifecycleState.suspending){
      print('state == AppLifecycleState.suspending in hometabs');
    }
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      //      设置tabbar的view的部分的内容,顺序很重要，需要和tab的顺序一样
//    https://flutter.dev/docs/cookbook/design/tabs文档
      body: new Container(
//        SafeArea widget作用是插入足够的padding避免被操作系统侵入
//      如苹果的刘海屏等，这里是用来当没有appBar的时候，避免我们的tab的内容覆盖到了
//      statusBar上面的情况的发生。（当有appBar的时候，可以很好的控制statusbar）
          child: SafeArea(
            child: new TabBarView(children: [
              new Network(),
              new WebViewExample(),
              new PageJump(),
              new ErrorTab(),
            ],
              controller: tabController,
            ),
          )
      ),
//      设置底部的navigation bar的内容
      bottomNavigationBar: new Material(
        //设置材料的颜色
        color: Colors.blue,
        //设置tabbar的相关列表
        child: new TabBar(tabs: <Tab>[
          new Tab(
            icon: new Icon(Icons.network_wifi),
            text: '网络',
          ),
          new Tab(
            icon: new Icon(Icons.web_asset),
            text: 'webview',
          ),
          new Tab(
            icon: new Icon(Icons.block),
            text: '卡顿',
          ),
          new Tab(
            icon: new Icon(Icons.error),
            text: '错误',
          )
        ],
          controller: tabController,
        ),
      ),
    );
  }

}