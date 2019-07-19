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
    //
    Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text(
            'FlatButton',
            // style: TextStyle(color: Theme.of(context).accentColor),
          ),
          splashColor: Colors.grey,
          // color: Theme.of(context).accentColor,
          textColor: Theme.of(context).accentColor,
          // elevation: 10.0,
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
    //
    Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text(
            'RaisedButton',
            // style: TextStyle(color: Theme.of(context).accentColor),
          ),
          shape: StadiumBorder(),
          // BeveledRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          // splashColor: Colors.grey,
          elevation: 0.0,
          // textColor: Colors.black,
          // textTheme: ButtonTextTheme.primary,
          // color: Theme.of(context).accentColor,
          onPressed: () {},
        ),
        SizedBox(
          width: 16.0,
        ),
        RaisedButton.icon(
          label: Text('IconRaisedButton'),
          icon: Icon(Icons.add),
          elevation: 16.0,
          textColor: Colors.black,
          splashColor: Colors.grey,
          color: Theme.of(context).accentColor,
          onPressed: () {},
        )
      ],
    );
    Widget raisedButtonDemo2 = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text(
            'RaisedButton',
            // style: TextStyle(color: Theme.of(context).accentColor),
          ),
          // splashColor: Colors.grey,
          elevation: 0.0,
          // shape: StadiumBorder(),
          // textColor: Colors.white,
          // textTheme: ButtonTextTheme.primary,
          // color: Theme.of(context).accentColor,
          onPressed: () {},
        ),
        SizedBox(
          width: 16.0,
        ),
        Theme(
          data: Theme.of(context).copyWith(
            buttonTheme: ButtonThemeData(
              buttonColor: Theme.of(context).accentColor,
              splashColor: Colors.grey,
              textTheme: ButtonTextTheme.normal,
            ),
          ),
          child: RaisedButton.icon(
            label: Text('IconRaisedButton'),
            icon: Icon(Icons.add),
            elevation: 16.0,
            // textColor: Colors.black,
            // splashColor: Colors.grey,
            onPressed: () {},
          ),
        )
      ],
    );
    Widget outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        OutlineButton(
          child: Text(
            'OutlineButton',
            // style: TextStyle(color: Theme.of(context).accentColor),
          ),
          splashColor: Colors.grey[100],
          textColor: Colors.black,
          borderSide: BorderSide(color: Colors.black),
          highlightedBorderColor: Colors.grey,
          shape: StadiumBorder(),
          // textTheme: ButtonTextTheme.primary,
          // color: Theme.of(context).accentColor,
          onPressed: () {},
        ),
        SizedBox(
          width: 16.0,
        ),
        Theme(
          data: Theme.of(context).copyWith(
            buttonTheme: ButtonThemeData(
              buttonColor: Theme.of(context).accentColor,
              splashColor: Colors.grey,
              textTheme: ButtonTextTheme.normal,
            ),
          ),
          child: OutlineButton.icon(
            label: Text('IconOutlineButton'),
            icon: Icon(Icons.add),
            // textColor: Colors.black,
            // splashColor: Colors.grey,
            onPressed: () {},
          ),
        )
      ],
    );
    Widget fixedWidthButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 180,
          child: OutlineButton(
            child: Text(
              'OutlineButton',
              // style: TextStyle(color: Theme.of(context).accentColor),
            ),
            splashColor: Colors.grey[100],
            textColor: Colors.black,
            borderSide: BorderSide(color: Colors.black),
            highlightedBorderColor: Colors.grey,
            shape: StadiumBorder(),
            // textTheme: ButtonTextTheme.primary,
            // color: Theme.of(context).accentColor,
            onPressed: () {},
          ),
        )
      ],
    );
    Widget expandedButtonDemo = Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: RaisedButton(
                child: Text(
                  'OutlineButton',
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              // flex: 1,
              child: RaisedButton(
                child: Text(
                  '1',
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 16.0,
            ),
            Expanded(
              flex: 2,
              child: RaisedButton(
                child: Text('2'),
                onPressed: () {},
              ),
            )
          ],
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
            Row(
              children: <Widget>[
                Text('设置button内部样式，覆盖ThemeData样式：'),
              ],
            ),
            raisedButtonDemo,
            SizedBox(
              height: 16.0,
            ),
            Row(
              children: <Widget>[
                Text('设置局部Theme样式，覆盖ThemeData样式：'),
              ],
            ),
            raisedButtonDemo2,
            SizedBox(
              height: 16.0,
            ),
            Row(
              children: <Widget>[
                Text('设置OutlineButton样式：'),
              ],
            ),
            outlineButtonDemo,
            SizedBox(
              height: 16.0,
            ),
            Row(
              children: <Widget>[Text('有固定宽度的button：')],
            ),
            fixedWidthButtonDemo,
            SizedBox(
              height: 16.0,
            ),
            Row(
              children: <Widget>[Text('占满可用宽度的button：')],
            ),
            expandedButtonDemo,
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
