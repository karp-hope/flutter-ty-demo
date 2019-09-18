import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ty_demo/tabs/network.dart';

void main(){
  testWidgets('network', (WidgetTester tester) async {
    Widget testWidget = new MediaQuery(
        data: new MediaQueryData(), child: MaterialApp(
        home: Network()
    ));
    await tester.pumpWidget(testWidget);


  });
}