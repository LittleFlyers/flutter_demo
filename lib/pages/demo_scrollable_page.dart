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
          CardWidget(
            "https://pics6.baidu.com/feed/8435e5dde71190efbf0861357e15d610fcfa607a.jpeg?token=c8fa6ccdc549e2c0d07981ef60476599&s=AA093A6E4D1044558827EA6A0300607B",
            contentText: "这是一只小猫",
            width: 200,
            userName: "月影风情",
          ),
        ]),
      ),
    );
  }
}
