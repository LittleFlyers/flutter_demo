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
