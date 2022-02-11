import 'package:flutter/material.dart';
import 'package:flutter_demo/data/data_factory.dart';
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
          BaseButton("SingleChildScroll", () {
            Navigator.push(context, new MaterialPageRoute(builder: (context) {
              return _SingleChildScrollPage();
            }));
          }),
        ]),
      ),
    );
  }
}

//简单实现可滑动View
class _SingleChildScrollPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SingleChildScrollState();
  }
}

class _SingleChildScrollState extends State<_SingleChildScrollPage> {
  List<CardWidget> _cards;

  _SingleChildScrollState() {
    _cards = CardFactory().createCards(200.0, 32);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SingleChildScrollView"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(children: _cards),
        ),
      ),
    );
  }
}

//实现可以无限滑动的ListView
class _ListViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListViewState();
  }
}

class _ListViewState extends State<_ListViewPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
