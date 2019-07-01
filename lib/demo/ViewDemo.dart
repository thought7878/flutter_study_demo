import 'package:flutter/material.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'ONE',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32.0,
            ),
          ),
        ),
        Container(
          color: Colors.grey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'TWO',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32.0,
            ),
          ),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'THREE',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32.0,
            ),
          ),
        ),
      ],
    );
  }
}
