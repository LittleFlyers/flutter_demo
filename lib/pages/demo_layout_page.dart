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
          BaseButton("流式布局", () {
            Navigator.push(context, new MaterialPageRoute(builder: (context) {
              return _FlowLayoutPage();
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
    return new Scaffold(
      appBar: AppBar(
        title: Text("弹性布局"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.all(6.0), child: TitleText("Flex平均分配宽度")),
            Container(
                margin: EdgeInsets.all(6.0),
                child: Flex(
                  direction: Axis.horizontal,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 30.0,
                        color: Colors.lightGreen,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 30.0,
                        color: Colors.cyanAccent,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 30.0,
                        color: Colors.amberAccent,
                      ),
                    ),
                  ],
                )),
            Container(
                margin: EdgeInsets.all(6.0),
                child: TitleText("Flex按照3:2:1宽度分配")),
            Container(
                margin: EdgeInsets.all(6.0),
                child: Flex(
                  direction: Axis.horizontal,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: 30.0,
                        color: Colors.lightGreen,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 30.0,
                        color: Colors.cyanAccent,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 30.0,
                        color: Colors.amberAccent,
                      ),
                    ),
                  ],
                )),
            Container(
                margin: EdgeInsets.only(top: 6.0),
                child: TitleText("Flex平均分配高度")),
            Container(
              margin: EdgeInsets.only(left: 6.0, right: 6.0),
              child: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: SizedBox(
                      height: 90.0,
                      child: Flex(
                        direction: Axis.vertical,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 30.0,
                              color: Colors.lightGreen,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 30.0,
                              color: Colors.cyanAccent,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 30.0,
                              color: Colors.amberAccent,
                            ),
                          ),
                        ],
                      ))),
            ),
            Container(
                margin: EdgeInsets.only(top: 6.0),
                child: TitleText("Flex按照3:2:1高度分配")),
            Container(
              margin: EdgeInsets.only(left: 6.0, right: 6.0),
              child: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: SizedBox(
                      height: 90.0,
                      child: Flex(
                        direction: Axis.vertical,
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Container(
                              height: 30.0,
                              color: Colors.lightGreen,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              height: 30.0,
                              color: Colors.cyanAccent,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 30.0,
                              color: Colors.amberAccent,
                            ),
                          ),
                        ],
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}

class _FlowLayoutPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FlowLayoutState();
  }
}

class _FlowLayoutState extends State<_FlowLayoutPage> {
  @override
  Widget build(BuildContext context) {
    List<Color> colors = const <Color>[
      Colors.amberAccent,
      Colors.tealAccent,
      Colors.black38,
      Colors.red,
      Colors.indigo,
      Colors.purple,
      Colors.orange,
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("流式布局"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(margin: EdgeInsets.all(6.0), child: TitleText("Wrap布局")),
            Wrap(
              spacing: 6.0,
              runSpacing: 4.0,
              alignment: WrapAlignment.center,
              children: [
                for (int i = 0; i < 7; i++)
                  Container(
                    width: 60.0,
                    height: 40.0,
                    color: Colors.amberAccent,
                  )
              ],
            ),
            Container(margin: EdgeInsets.all(6.0), child: TitleText("Flow布局")),
            Flow(
              delegate: _TestFlowDelegate(margin: EdgeInsets.all(10.0)),
              children: [
                for (int i = 0; i < 7; i++)
                  Container(
                    width: 90.0,
                    height: 90.0,
                    color: colors[i],
                  )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _TestFlowDelegate extends FlowDelegate {
  EdgeInsets margin = EdgeInsets.zero;

  _TestFlowDelegate({this.margin});

  @override
  void paintChildren(FlowPaintingContext context) {
    var left = margin.left;
    var top = margin.top;
    for (int i = 0; i < context.childCount; i++) {
      var childPosition = context.getChildSize(i).width + left + margin.right;
      if (childPosition < context.size.width) {
        context.paintChild(i,
            transform: Matrix4.translationValues(left, top, 0.0));
        left = childPosition + margin.left;
      } else {
        left = margin.left;
        top += context.getChildSize(i).height + margin.top + margin.bottom;
        context.paintChild(i,
            transform: Matrix4.translationValues(left, top, 0.0));
        left += context.getChildSize(i).width + margin.left + margin.right;
      }
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }

  @override
  getSize(BoxConstraints constraints) {
    return Size(double.infinity, 300.0);
  }
}
