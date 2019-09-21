import 'package:flutter/cupertino.dart';

class CrashCatchHandle{
  void reportError(dynamic error, dynamic stackTrace){
    print('Caught error: $error');
    
    debugPrint('stack : $stackTrace');
  }
}