import 'package:flutter/material.dart';

class InheritedShareWidget extends InheritedWidget {
  final int data;

  InheritedShareWidget({this.data, Widget child}) : super(child: child);

  //定义便捷方法，方便子控件获取共享数据
  static InheritedShareWidget of(BuildContext context) {

    ///当子控件依赖使用了我们的数据源时，数据变动会触发子控件中的 didChangeDependencies 方法
    return context.dependOnInheritedWidgetOfExactType<InheritedShareWidget>();

    ///不会触发子控件中的 didChangeDependencies 方法
    // return context.getElementForInheritedWidgetOfExactType<InheritedShareWidget>().widget;
  }

  @override
  bool updateShouldNotify(covariant InheritedShareWidget oldWidget) {
    return oldWidget.data != this.data;
  }
}
