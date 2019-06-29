import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(fontSize: 16, color: Colors.green);

  final String title = '将进酒';
  final String author = '李白';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Row(
        children: <Widget>[
          Container(
            child: Icon(
              Icons.pool,
              color: Colors.white,
              size: 32,
            ),
            color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.all(8),
            width: 90,
            height: 90,
          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(fontSize: 16, color: Colors.green);

  final String title = '将进酒';
  final String author = '李白';

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'github',
        style: TextStyle(
          color: Colors.green,
          fontSize: 40,
          fontWeight: FontWeight.w900,
        ),
        children: [
          TextSpan(
            text: '.com',
            style: TextStyle(
              color: Colors.orange,
              fontSize: 20,
              fontWeight: FontWeight.w100,
              fontStyle: FontStyle.italic,
            ),
          )
        ],
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(fontSize: 16, color: Colors.green);

  final String title = '将进酒';
  final String author = '李白';

  @override
  Widget build(BuildContext context) {
    return Text(
      '《$title》--- $author。 君不见黄河之水天上来，奔流到海不复回。君不见高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
