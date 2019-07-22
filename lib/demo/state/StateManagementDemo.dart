import 'package:flutter/material.dart';

class StateManagementDemo extends StatelessWidget {
  const StateManagementDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateManagementDemo'),
      ),
      body: Container(
        child: Text('StateManagement'),
      ),
    );
  }
}
