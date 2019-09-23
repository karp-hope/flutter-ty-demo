import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Helper{
  static Widget createMediaQueryWidget(Widget childWidget){
    return new MediaQuery(
        data: new MediaQueryData(), child: MaterialApp(
        home: childWidget
    ));
  }
}