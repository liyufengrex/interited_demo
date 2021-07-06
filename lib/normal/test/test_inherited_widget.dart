import 'package:flutter/material.dart';

import '../interited_child_widget.dart';
import '../interited_share_widget.dart';

class TestInheritedWidget extends StatefulWidget {
  const TestInheritedWidget({Key key}) : super(key: key);

  @override
  _TestInheritedWidgetState createState() => _TestInheritedWidgetState();
}

class _TestInheritedWidgetState extends State<TestInheritedWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InheritedShareWidget(
        data: count,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TestShareChildWidget(),
            RaisedButton(
                child: Text('add'),
                onPressed: () {
                  setState(() {
                    ++count;
                  });
                })
          ],
        ),
      ),
    );
  }
}
