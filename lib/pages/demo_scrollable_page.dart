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
          BaseButton("ListView", () {
            Navigator.push(context, new MaterialPageRoute(builder: (context) {
              return _ListViewPage();
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
  List<Widget> _cards = <Widget>[
    Container(
        padding: const EdgeInsets.all(16.0),
        alignment: Alignment.center,
        child: SizedBox(
            width: 24.0,
            height: 24.0,
            child: CircularProgressIndicator(strokeWidth: 2.0)))
  ];
  CardFactory _cardFactory = CardFactory();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ListView"),
        ),
        body: Container(
          child: ListView.builder(
            itemCount: _cards.length,
            itemBuilder: (BuildContext context, int index) {
              if (_cards[index] is Container) {
                _refreshData();
              }
              return _cards[index];
            },
          ),
        ));
  }

  //模拟加载，每次加载8张卡片
  void _refreshData() {
    Future.delayed(Duration(seconds: 1)).then((e) {
      _cards.insertAll(_cards.length - 1, _cardFactory.createCards(200.0, 8));
      setState(() {});
    });
  }
}
