import 'package:flutter/material.dart';
import './demo/Hello.dart';
import './demo/ListViewDemo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'navigation',
            onPressed: () => debugPrint('navigation button pressed'),
          ),
          title: Text('hello flutter'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'search',
              onPressed: () => debugPrint('search button is pressed'),
            )
          ],
          elevation: 0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.security),
              ),
              Tab(
                icon: Icon(Icons.send),
              ),
              Tab(
                icon: Icon(Icons.settings),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(
              Icons.security,
              size: 128,
              color: Colors.black12,
            ),
            Icon(
              Icons.send,
              size: 128,
              color: Colors.black12,
            ),
            Icon(
              Icons.settings,
              size: 128,
              color: Colors.black12,
            ),
          ],
        ),
      ),
    );
  }
}
