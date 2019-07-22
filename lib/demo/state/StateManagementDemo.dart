import 'package:flutter/material.dart';

class StateManagementDemo extends StatelessWidget {
  StateManagementDemo({Key key}) : super(key: key);

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateManagementDemo'),
      ),
      body: Center(
        child: Chip(
          label: Text('$count'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          count += 1;
          print(count);
        },
      ),
    );
  }
}
