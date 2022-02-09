import 'package:flutter/material.dart';

class BaseButton extends StatefulWidget {
  String _text;
  VoidCallback _onPress;

  BaseButton(String text, VoidCallback onPress) {
    _text = text;
    _onPress = onPress;
  }

  @override
  _BaseButtonState createState() => _BaseButtonState();
}

class _BaseButtonState extends State<BaseButton> {
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      width: double.infinity,
      height: 40,
      padding: EdgeInsets.only(left: 20, right: 20),
      child: FlatButton(
          color: Colors.blue,
          highlightColor: Colors.blue[700],
          colorBrightness: Brightness.dark,
          splashColor: Colors.grey,
          child: Text(
            widget._text,
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          onPressed: widget._onPress),
    );
  }
}

class TitleText extends Text {
  TitleText(String data) : super(data);

  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(fontSize: 20.0),
    );
  }
}

class CardWidget extends StatefulWidget {
  String _imagePath;
  String contentText;
  double width;

  CardWidget(this._imagePath, {this.contentText = "默认", this.width = 200.0});

  @override
  State<StatefulWidget> createState() {
    return _CardWidgetState();
  }
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      child: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(8)),
            clipBehavior: Clip.antiAlias,
            child: Image.network(
              widget._imagePath,
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 10),
            child: Text(
              widget.contentText,
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [

                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}
