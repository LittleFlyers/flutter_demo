import 'package:flutter/material.dart';
import 'package:flutter_demo/widget/base_widget.dart';

class DemoWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("控件Demo"),
      ),
      body: Center(
        child: Column(children: <Widget>[
          BaseButton("Text", () {
            Navigator.push(context, new MaterialPageRoute(builder: (context) {
              return TextDemoPage();
            }));
          }),
          BaseButton("Button", () {
            Navigator.push(context, new MaterialPageRoute(builder: (context) {
              return ButtonDemoPage();
            }));
          }),
          BaseButton("Image", () {
            Navigator.push(context, new MaterialPageRoute(builder: (context) {
              return ImageDemoPage();
            }));
          }),
          BaseButton("Input", () {
            Navigator.push(context, new MaterialPageRoute(builder: (context) {
              return InputDemo();
            }));
          }),
        ]),
      ),
    );
  }
}

class TextDemoPage extends StatelessWidget {
  var marginData = 6.0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("文本"),
      ),
      body: Center(
        child: Column(children: <Widget>[
          Container(
              margin: EdgeInsets.all(marginData), child: Text("这是一个Demo文本。")),
          Container(
              margin: EdgeInsets.all(marginData),
              child: Text("这是一个Demo文本,设置文本比例因子。", textScaleFactor: 1.5)),
          Container(
              margin: EdgeInsets.all(marginData),
              child: Text("这是一个Demo文本,设置对齐方式。" * 5, textAlign: TextAlign.left)),
          Container(
              margin: EdgeInsets.all(marginData),
              child: Text(
                "这是一个Demo文本,设置最大行数以及折叠方式。" * 10,
                textAlign: TextAlign.left,
                maxLines: 3,
                overflow: TextOverflow.fade,
              )),
          Container(
              margin: EdgeInsets.all(marginData),
              child: Text(
                "这是一个Demo文本,设置Style。",
                style: TextStyle(
                  color: Colors.lightGreenAccent,
                  fontSize: 13.0,
                  background: new Paint()..color = Colors.black,
                ),
              )),
          Container(
              margin: EdgeInsets.all(marginData),
              child: Text.rich(TextSpan(children: [
                TextSpan(text: "这是一个TextSpan,"),
                TextSpan(
                    text: "这是另一个TextSpan,",
                    style: TextStyle(color: Colors.amberAccent)),
                TextSpan(
                    text: "这是另一个TextSpan。",
                    style: TextStyle(color: Colors.cyanAccent, fontSize: 20.0)),
              ]))),
          Container(
            margin: EdgeInsets.all(marginData),
            child: DefaultTextStyle(
              style: TextStyle(
                color: Colors.red,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.start,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("这是一个默认样式的文本1"),
                  Text("这是一个默认样式的文本2"),
                  Text(
                    "这是一个不接受默认样式的文本3",
                    style: TextStyle(inherit: false, color: Colors.grey),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class ButtonDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("按钮"),
        ),
        body: Center(
          child: Column(
            children: [
              RaisedButton(
                child: Text("这是一个RaisedButton"),
                onPressed: () => {},
              ),
              FlatButton(
                child: Text("这是一个FlatButton"),
                onPressed: () => {},
              ),
              OutlineButton(
                child: Text("这是一个OutlineButton"),
                onPressed: () => {},
              ),
              IconButton(
                icon: Icon(Icons.thumb_up),
                onPressed: () => {},
              ),
              DropdownButton<String>(
                icon: Icon(Icons.add_to_photos_sharp),
                onChanged: (String newValue) {
                  print(newValue);
                },
                items: <String>['One', 'Two', 'Free', 'Four']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              FloatingActionButton(
                child: Icon(Icons.navigation),
                onPressed: () => {},
              ),
              FlatButton(
                  color: Colors.blue,
                  highlightColor: Colors.blue[700],
                  colorBrightness: Brightness.dark,
                  splashColor: Colors.grey,
                  child: Text("自定义按钮"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  onPressed: () => {})
            ],
          ),
        ));
  }
}

class ImageDemoPage extends StatelessWidget {
  var marginData = 6.0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("图片"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.all(marginData),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/dog.png",
                      width: 200,
                    ),
                    Text("从资源文件加载")
                  ],
                )),
            Container(
                margin: EdgeInsets.all(marginData),
                child: Row(
                  children: [
                    Image.network(
                      "http://imgservice.suning.cn/uimg1/b2c/image/DlZoRfOpl8Xgc6mRo3s4Ew.png_800w_800h_4e",
                      width: 200,
                    ),
                    Text("从网络加载")
                  ],
                )),
            Container(
                margin: EdgeInsets.all(marginData),
                child: Row(
                  children: [
                    Image.network(
                      "http://imgservice.suning.cn/uimg1/b2c/image/DlZoRfOpl8Xgc6mRo3s4Ew.png_800w_800h_4e",
                      width: 200,
                      color: Colors.blue,
                      colorBlendMode: BlendMode.difference,
                    ),
                    Text("设置颜色")
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class InputDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InputDemoState();
  }
}

class _InputDemoState extends State<InputDemo> {
  var marginData = 10.0;
  bool _switchSelected = true;
  bool _checkSelected = true;
  TextEditingController _mobileNumController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _mobileNumFormController = new TextEditingController();
  TextEditingController _passwordFormController = new TextEditingController();
  String _inputValue = "";
  String _inputFormValue = "";
  GlobalKey _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("输入"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(marginData),
                      child: Column(
                        children: [
                          TitleText("单选开关和复选框"),
                          Switch(
                              value: _switchSelected,
                              onChanged: (value) {
                                setState(() {
                                  _switchSelected = value;
                                });
                              }),
                          Checkbox(
                              value: _checkSelected,
                              activeColor: Colors.lightGreen,
                              onChanged: (value) {
                                setState(() {
                                  _checkSelected = value;
                                });
                              }),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(marginData),
                      child: Column(
                        children: [
                          TitleText("输⼊框"),
                          TextField(
                            autofocus: false,
                            decoration: InputDecoration(
                              hintText: "手机号",
                              prefixIcon: Icon(Icons.account_circle_outlined),
                            ),
                            controller: _mobileNumController,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "登录密码",
                              prefixIcon: Icon(Icons.lock),
                            ),
                            obscureText: true,
                            controller: _passwordController,
                          ),
                          BaseButton("提交", () {
                            setState(() {
                              _inputValue = "手机号: " +
                                  _mobileNumController.text +
                                  "密码: " +
                                  _passwordController.text;
                            });
                          }),
                          Text(_inputValue)
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.all(marginData),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              TitleText("表单"),
                              TextFormField(
                                controller: _mobileNumFormController,
                                decoration: InputDecoration(
                                  hintText: "手机号",
                                  prefixIcon:
                                      Icon(Icons.account_circle_outlined),
                                ),
                                validator: (v) {
                                  return v.trim().length == 11
                                      ? null
                                      : "手机号码需要11位";
                                },
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "登录密码",
                                  prefixIcon: Icon(Icons.lock),
                                ),
                                obscureText: true,
                                controller: _passwordFormController,
                                validator: (v) {
                                  return v.trim().length >= 8
                                      ? null
                                      : "密码需要大于等于8位";
                                },
                              ),
                              BaseButton("提交", () {
                                setState(() {
                                  if ((_formKey.currentState as FormState)
                                      .validate()) {
                                    _inputFormValue = "手机号: " +
                                        _mobileNumFormController.text +
                                        "密码: " +
                                        _passwordFormController.text;
                                  }
                                });
                              }),
                              Text(_inputFormValue)
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
