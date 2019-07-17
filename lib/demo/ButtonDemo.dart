import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
            title: 'CommonButtonDemo',
            page: CommonButtonDemo(),
          ),
          ListItem(
            title: 'FloatingActionButtonDemo',
            page: FloatingActionButtonDemo(),
          ),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;
  //
  ListItem({this.title, this.page});
  //
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}

class CommonButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text(
            'FlatButton',
            // style: TextStyle(color: Theme.of(context).accentColor),
          ),
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
          onPressed: () {},
        ),
        FlatButton.icon(
          label: Text('IconFlatButton'),
          icon: Icon(Icons.add),
          splashColor: Colors.grey,
          onPressed: () {},
        )
      ],
    );
    Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text(
            'RaisedButton',
            // style: TextStyle(color: Theme.of(context).accentColor),
          ),
          splashColor: Colors.grey,
          elevation: 0.0,
          textColor: Theme.of(context).accentColor,
          onPressed: () {},
        ),
        SizedBox(
          width: 16.0,
        ),
        RaisedButton.icon(
          label: Text('IconRaisedButton'),
          icon: Icon(Icons.add),
          elevation: 16.0,
          splashColor: Colors.grey,
          onPressed: () {},
        )
      ],
    );
    //
    return Scaffold(
      appBar: AppBar(
        title: Text('CommonButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatButtonDemo,
            raisedButtonDemo,
          ],
        ),
      ),
    );
  }
}

class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CommonButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            )
          ],
        ),
      ),
    );
  }
}

class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _floatingActionButton = FloatingActionButton(
      child: Icon(Icons.add),
      elevation: 0.0,
      backgroundColor: Colors.black87,
      // shape: BeveledRectangleBorder(
      //   borderRadius: BorderRadius.circular(30.0),
      // ),
      onPressed: () {
        debugPrint('pressed');
      },
    );
    Widget _floatingActionButtonExtended = FloatingActionButton.extended(
      onPressed: () {},
      icon: Icon(Icons.add),
      label: Text('ADD'),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0.0,
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}
