import 'dart:async';

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
  StreamSubscription _streamSubscription;
  StreamController<String> _streamController;
  StreamSink _streamSink;
  String _text = '...';

  @override
  void dispose() {
    super.dispose();
    _streamController.close();
  }

  @override
  void initState() {
    super.initState();
    print('create a stream');
    // Stream<String> _stream = Stream.fromFuture(fetchData());
    print('start listening ');
    _streamController = StreamController.broadcast();
    _streamSink = _streamController.sink;
    _streamSubscription = _streamController.stream
        .listen(onData, onError: onError, onDone: onDone);
    _streamController.stream.listen(onData2);
    print('initialize completed');
  }

  void onData(String data) {
    print(data);
    setState(() {
      _text = data;
    });
  }

  void onData2(String data) {
    print('onData2:$data');
  }

  void onError(error) {
    print('Error:$error');
  }

  void onDone() {
    print('done');
  }

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 3));
    return 'hello stream controller';
    // throw 'something is wrong';
  }

  void addDataToStream() async {
    print('add data to stream');
    String data = await fetchData();
    // _streamController.add(data);
    _streamSink.add(data);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_text),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('add'),
                  onPressed: addDataToStream,
                ),
                FlatButton(
                  child: Text('pause'),
                  onPressed: () {
                    print('pause subscription');
                    _streamSubscription.pause();
                  },
                ),
                FlatButton(
                  child: Text('resume'),
                  onPressed: () {
                    print('resume subscription');
                    _streamSubscription.resume();
                  },
                ),
                FlatButton(
                  child: Text('cancel'),
                  onPressed: () {
                    print('cancel subscription');
                    _streamSubscription.cancel();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
