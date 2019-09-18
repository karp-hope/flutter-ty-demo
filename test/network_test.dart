import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ty_demo/network.dart';

void main(){
  test('test network', (){
    
  });

  group('show how to test widget', () {
    //在单独测试的时候必须要加上MatericalApp的包裹，或者利用MediaQuery这种方式
    //https://stackoverflow.com/questions/48498709/widget-test-fails-with-no-mediaquery-widget-found
//  Widget createWidgetForTest({Widget child}){
//    return MaterialApp(
//      home: child
//    );
//  }

    testWidgets('test network widget', (WidgetTester tester) async {
//    await tester.pumpWidget(createWidgetForTest(child: Network()));

      Widget testWidget = new MediaQuery(
          data: new MediaQueryData(), child: MaterialApp(
          home: Network()
      ));
      await tester.pumpWidget(testWidget);

      expect(find.text('AAA'), findsOneWidget);
      expect(find.text('BBB'), findsNothing);
      expect(find.text('CCC'), findsNothing);
      expect(find.text('DDD'), findsNothing);
      
    });
  });

}