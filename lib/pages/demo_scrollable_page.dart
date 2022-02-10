import 'package:flutter/material.dart';
import 'package:flutter_demo/widget/base_widget.dart';

class DemoScrollablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("可滚动Widget"),
      ),
      body: Center(
        child: Column(children: <Widget>[
          BaseButton("线性布局", () {}),
        ]),
      ),
    );
  }
}
