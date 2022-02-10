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
  String _loveImagePath;
  String contentText;
  String userName;
  double width;
  int loveCount;
  bool isLove;

  CardWidget(this._imagePath,
      {this.contentText = "默认",
      this.width = 200.0,
      this.userName,
      this.isLove = false,
      this.loveCount = 0}) {
    if (isLove) {
      _loveImagePath = "assets/full_love.png";
    } else {
      _loveImagePath = "assets/love.png";
    }
  }

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
          Container(
            height: 20.0,
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 10),
                      // color: Colors.lightGreen,
                      child: Row(
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadiusDirectional.circular(50)),
                            clipBehavior: Clip.antiAlias,
                            child: Image.network(
                              widget._imagePath,
                            ),
                          ),
                          Text(
                            widget.userName,
                            style: TextStyle(
                                fontSize: 12.0, color: Colors.black26),
                          )
                        ],
                      )),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      // color: Colors.cyanAccent,
                      /*alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(right: 10),*/
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            widget.loveCount.toString(),
                            style: TextStyle(fontSize: 13.0),
                          ),
                          InkWell(
                            onTap: _love,
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: Image.asset(
                              widget._loveImagePath,
                              width: 17.0,
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }

  void _love() {
    if (widget.isLove) {
      widget.isLove = false;
      setState(() {
        widget._loveImagePath = "assets/love.png";
      });
    } else {
      widget.isLove = true;
      setState(() {
        widget._loveImagePath = "assets/full_love.png";
      });
    }
  }
}
