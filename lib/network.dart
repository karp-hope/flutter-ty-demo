import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Network extends StatefulWidget{
  @override
  NetworkState createState()  => NetworkState();
}

//SingleTickerProviderStateMixin被TabController用作切换时候的动画，vsync这里需要填入
class NetworkState extends State<Network> with SingleTickerProviderStateMixin{
//  tabcontroller用于保持选择的tab和content部分保持同步的处理
  TabController tabController;

  static const num = 4;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//初始化tabController
    tabController = new TabController(length: num, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//      设置tabbar的view的部分的内容,顺序很重要，需要和tab的顺序一样
//    https://flutter.dev/docs/cookbook/design/tabs文档
      body: new TabBarView(children: [
        new Center(
          child: new Text('AAA')
        ),
        new Center(
            child: new Text('BBB')
        ),
        new Center(
            child: new Text('CCC')
        ),
        new Center(
            child: new Text('DDD')
        ),
      ],
        controller: tabController,
      ),
//      设置底部的navigation bar的内容
      bottomNavigationBar: new Material(
        //设置材料的颜色
        color: Colors.blue,
        //设置tabbar的相关列表
        child: new TabBar(tabs: <Tab>[
          new Tab(
            icon: new Icon(Icons.network_wifi),
          ),
          new Tab(
            icon: new Icon(Icons.web_asset),
          ),
          new Tab(
            icon: new Icon(Icons.block),
          ),
          new Tab(
            icon: new Icon(Icons.error),
          )
        ],
          controller: tabController,
        ),
      ),
    );
  }

}