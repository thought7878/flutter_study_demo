import 'package:flutter/material.dart';

class StateManagementDemo extends StatefulWidget {
  @override
  _StateManagementDemoState createState() {
    return _StateManagementDemoState();
  }
}

class _StateManagementDemoState extends State<StateManagementDemo> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateManagementDemo'),
      ),
      body: CounterWrapper(count, increaseCount),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: increaseCount,
      ),
    );
  }

  void increaseCount() {
    setState(() {
      count += 1;
    });
    print(count);
  }
}

class CounterWrapper extends StatelessWidget {
  final int count;
  final VoidCallback increaseCount;

  const CounterWrapper(this.count, this.increaseCount);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Counter(count, increaseCount),
      ),
    );
  }
}

class Counter extends StatelessWidget {
  final int count;
  final VoidCallback increaseCount;

  Counter(this.count, this.increaseCount);

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      label: Text('$count'),
      onPressed: increaseCount,
    );
  }
}

class StatelessDemo extends StatelessWidget {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StatelessDemo'),
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
