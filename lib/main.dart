import 'package:flutter/material.dart';
import 'package:flutter_study_demo/demo/FormDemo.dart';
import './demo/Hello.dart';
import './demo/ListViewDemo.dart';
import './demo/DrawerDemo.dart';
import './demo/BottomNavigationBarDemo.dart';
import './demo/BasicDemo.dart';
import './demo/LayoutDemo.dart';
import './demo/ViewDemo.dart';
import './demo/SliverDemo.dart';
import './demo/NavigatorDemo.dart';
import './demo/ButtonDemo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: NavigatorDemo(),
      initialRoute: '/button',
      routes: {
        '/': (context) => Home(),
        '/about': (context) => Page(title: 'About2'),
        '/form': (context) => FormDemo(),
        '/button': (context) => ButtonDemo(),
      },
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5), //
        splashColor: Colors.white54,
        accentColor: Color.fromRGBO(3, 54, 255, 1.0),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.green,
          // padding: EdgeInsets.all(32.0),
          textTheme: ButtonTextTheme.primary,
          splashColor: Colors.white12,
        ),
        // buttonColor: Colors.red,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
              ),
              Tab(
                icon: Icon(Icons.help),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            LayoutDemo(),
            ViewDemo()
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
