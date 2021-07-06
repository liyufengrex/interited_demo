import 'package:flutter/material.dart';

///共享数据模型
class CountModel extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  //自增
  void increase() {
    _count++;
    // 通知监听器（订阅者），重新构建InheritedProvider， 更新状态。
    notifyListeners();
  }
}
