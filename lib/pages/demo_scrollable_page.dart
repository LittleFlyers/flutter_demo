import 'package:flutter/material.dart';
import 'package:flutter_demo/data/data_factory.dart';
import 'package:flutter_demo/widget/base_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_staggered_grid_view/src/widgets/masonry_grid_view.dart';

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
          BaseButton("GridView", () {
            Navigator.push(context, new MaterialPageRoute(builder: (context) {
              return _GridViewPage();
            }));
          }),
          BaseButton("瀑布流", () {
            Navigator.push(context, new MaterialPageRoute(builder: (context) {
              return _FallsFlowPage();
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

class _GridViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GridViewState();
  }
}

class _GridViewState extends State<_GridViewPage> {
  List<Widget> _cards = <Widget>[
    Container(
        padding: const EdgeInsets.all(16.0),
        alignment: Alignment.center,
        child: SizedBox(
            width: 24.0,
            height: 24.0,
            child: CircularProgressIndicator(strokeWidth: 2.0)))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GridView"),
        ),
        body: Container(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1.0),
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
      _cards.insertAll(_cards.length - 1, <Widget>[
        Container(
          child: Text("1"),
          color: Colors.black26,
        ),
        Container(
          child: Text("2"),
          color: Colors.amber,
        ),
        Container(
          child: Text("3"),
          color: Colors.blue,
        ),
        Container(
          child: Text("4"),
          color: Colors.brown,
        ),
        Container(
          child: Text("5"),
          color: Colors.deepOrangeAccent,
        ),
        Container(
          child: Text("6"),
          color: Colors.blueGrey,
        ),
        Container(
          child: Text("7"),
          color: Colors.deepPurple,
        ),
        Container(
          child: Text("8"),
          color: Colors.pinkAccent,
        ),
        Container(
          child: Text("9"),
          color: Colors.white54,
        ),
        Container(
          child: Text("10"),
          color: Colors.greenAccent,
        ),
        Container(
          child: Text("11"),
          color: Colors.yellowAccent,
        ),
        Container(
          child: Text("12"),
          color: Colors.lime,
        ),
        Container(
          child: Text("13"),
          color: Colors.purpleAccent,
        ),
        Container(
          child: Text("14"),
          color: Colors.deepPurpleAccent,
        ),
        Container(
          child: Text("15"),
          color: Colors.indigo,
        ),
        Container(
          child: Text("16"),
          color: Colors.white,
        ),
      ]);
      setState(() {});
    });
  }
}

class _FallsFlowPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FallsFlowState();
  }
}

class _FallsFlowState extends State<_FallsFlowPage> {
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

  _FallsFlowState() {
    _refreshData();
  }

  @override
  Widget build(BuildContext context) {
    print(_cards.length);
    return Scaffold(
        appBar: AppBar(
          title: Text("瀑布流"),
        ),
        body: MasonryGridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
          itemCount: _cards.length,
          itemBuilder: (context, index) {
            if (_cards[index] is Container) {
              _refreshData();
            }
            return _cards[index];
          },
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