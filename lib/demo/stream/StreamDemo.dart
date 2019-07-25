import 'package:flutter/material.dart';

class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamDemo'),
        elevation: 0.0,
      ),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  StreamDemoHome({Key key}) : super(key: key);

  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {
  @override
  void initState() {
    super.initState();
    print('create a stream');
    Stream<String> _stream = Stream.fromFuture(fetchData());
    print('start listening ');
    _stream.listen(onData);
    print('initialize completed');
  }

  void onData(String data) {
    print(data);
  }

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 3));
    return 'hello stream';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('body'),
    );
  }
}
