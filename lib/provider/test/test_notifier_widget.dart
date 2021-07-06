import 'package:flutter/material.dart';
import 'package:test_interited/provider/change_notifier_provider.dart';
import 'package:test_interited/provider/notify_consumer.dart';
import 'package:test_interited/provider/test/count_model.dart';

class TestNotifierWidget extends StatefulWidget {
  const TestNotifierWidget({Key key}) : super(key: key);

  @override
  _TestNotifierWidgetState createState() => _TestNotifierWidgetState();
}

class _TestNotifierWidgetState extends State<TestNotifierWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ChangeNotifierProvider<CountModel>(
            data: CountModel(),
            child: Builder(builder: (context) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Builder(
                    builder: (context) {
                      return NotifyConsumer<CountModel>(
                          builder: (context, value) {
                        return Text(value.count.toString());
                      });
                    },
                  ),
                  Builder(builder: (context) {
                    return RaisedButton(
                      child: Text('自增'),
                      onPressed: () {
                        ChangeNotifierProvider.of<CountModel>(context)
                            .increase();
                      },
                    );
                  }),
                ],
              );
            })));
  }
}
