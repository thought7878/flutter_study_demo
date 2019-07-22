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
    return CounterProvider(
      count: count,
      increaseCount: _increaseCount,
      child: Scaffold(
        appBar: AppBar(
          title: Text('StateManagementDemo'),
        ),
        body: CounterWrapper(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _increaseCount,
        ),
      ),
    );
  }

  void _increaseCount() {
    setState(() {
      count += 1;
    });
    print(count);
  }
}

class CounterProvider extends InheritedWidget {
  final int count;
  final VoidCallback increaseCount;
  final Widget child;

  CounterProvider({this.count, this.increaseCount, this.child})
      : super(child: child);

  static CounterProvider of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(CounterProvider);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}

class CounterWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Counter(),
      ),
    );
  }
}

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int count = CounterProvider.of(context).count;
    VoidCallback increaseCount = CounterProvider.of(context).increaseCount;

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
