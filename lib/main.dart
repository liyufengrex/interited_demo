import 'package:flutter/material.dart';
import 'package:test_interited/provider/test/test_notifier_widget.dart';
import 'normal/test/test_inherited_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inherited share demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Inherited share demo"),
        ),
        // body: TestInheritedWidget(),
        body: TestNotifierWidget(),
      ),
    );
  }
}
