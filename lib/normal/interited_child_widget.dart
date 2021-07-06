import 'package:flutter/material.dart';

import 'interited_share_widget.dart';

class TestShareChildWidget extends StatefulWidget {
  const TestShareChildWidget({Key key}) : super(key: key);

  @override
  _TestShareChildWidgetState createState() => _TestShareChildWidgetState();
}

class _TestShareChildWidgetState extends State<TestShareChildWidget> {
  @override
  void didChangeDependencies() {
    ///如build 方法中没有使用 InheritedShareWidget 的数据，那么它的didChangeDependencies()将不会被调用
    super.didChangeDependencies();
    print("enter didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    print("enter child build");
    final data = InheritedShareWidget.of(context).data.toString();
    return Text(data);
  }
}
