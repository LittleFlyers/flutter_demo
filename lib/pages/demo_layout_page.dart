import 'package:flutter/material.dart';
import 'package:flutter_demo/widget/base_widget.dart';

class DemoLayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("布局"),
      ),
      body: Center(
        child: Column(children: <Widget>[
          BaseButton("线性布局", () {
            Navigator.push(context, new MaterialPageRoute(builder: (context) {
              return _LinearLayout();
            }));
          }),
          BaseButton("弹性布局", () {
            Navigator.push(context, new MaterialPageRoute(builder: (context) {
              return _FlexibleLayout();
            }));
          }),
        ]),
      ),
    );
  }
}

class _LinearLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("线性布局"),
      ),
      body: Center(
        child: Column(children: <Widget>[
          Container(
              margin: EdgeInsets.all(6.0),
              child: Column(children: [
                TitleText("Row"),
                Row(
                  children: [
                    Icon(Icons.lock),
                    Icon(Icons.account_circle_outlined),
                    Icon(Icons.account_circle),
                    Icon(Icons.add_to_photos_sharp),
                    Icon(Icons.add),
                    Icon(Icons.access_alarm_outlined),
                    Icon(Icons.access_time_sharp),
                    Icon(Icons.accessibility_rounded),
                    Icon(Icons.accessible_forward),
                    Icon(Icons.account_balance_outlined),
                  ],
                )
              ])),
          Container(
              margin: EdgeInsets.all(6.0),
              child: Column(children: [
                TitleText("Column"),
                Column(
                  children: [
                    Icon(Icons.lock),
                    Icon(Icons.account_circle_outlined),
                    Icon(Icons.account_circle),
                    Icon(Icons.add_to_photos_sharp),
                    Icon(Icons.add),
                    Icon(Icons.access_alarm_outlined),
                    Icon(Icons.access_time_sharp),
                    Icon(Icons.accessibility_rounded),
                    Icon(Icons.accessible_forward),
                    Icon(Icons.account_balance_outlined),
                  ],
                )
              ]))
        ]),
      ),
    );
  }
}

class _FlexibleLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
