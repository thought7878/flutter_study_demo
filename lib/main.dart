import 'package:flutter/material.dart';
import './demo/Hello.dart';
import './demo/ListViewDemo.dart';
import './demo/DrawerDemo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.green,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5), //
        splashColor: Colors.white54,
      ),
    );
  }
}

class Home extends StatelessWidget {
  int _currentIndex = 0;

  void _onTapHandler(int index) {
    setState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: 'navigation',
          //   onPressed: () => debugPrint('navigation button pressed'),
          // ),
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
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.black,
          currentIndex: _currentIndex,
          onTap: _onTapHandler,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text('Explore'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              title: Text('History'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text('List'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('My'),
            ),
          ],
        ),
      ),
    );
  }
}
