import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageA extends StatefulWidget{
  static const String routeName = '/pagea';

  @override
  PageAState createState() {
    // TODO: implement createState
    return PageAState();
  }

}

//在statelesswidget上面监控不到生命周期的内容？
///另外这些只有在前后台的切换的时候才可以看到相关的生命周期的情况，在正常的启动的时候尽然看不到调用。。。。
///另外，这个是用来看app的？ 而不是用来看界面的？
class PageAState extends State<PageA> with WidgetsBindingObserver{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

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

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    print('didChangeAppLifecycleState');
    super.didChangeAppLifecycleState(state);

    if(state == AppLifecycleState.inactive){
      print('state == AppLifecycleState.inactive in pageA');
    }else if(state == AppLifecycleState.paused){
      print('state == AppLifecycleState.paused in pageA');
    }else if(state == AppLifecycleState.resumed){
      print('state == AppLifecycleState.resumed in pageA');
    }else if(state == AppLifecycleState.suspending){
      print('state == AppLifecycleState.suspending in pageA');
    }
  }

}