import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  const FormDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('form demo'),
      ),
      body: Theme(
        data: Theme.of(context).copyWith(primaryColor: Colors.black),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  RegisterForm({Key key}) : super(key: key);

  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registerFormKey = GlobalKey<FormState>();
  String username, password;
  bool autoValidate = false;

  void submit() {
    if (registerFormKey.currentState.validate()) {
      registerFormKey.currentState.save();
      debugPrint('username:$username');
      debugPrint('password:$password');
    } else {
      setState(() {
        autoValidate = true;
      });
    }
  }

  String validateUsername(String value) {
    if (value.isEmpty) {
      return 'Username is required';
    }
    return null;
  }

  String validatePassword(String value) {
    if (value.isEmpty) {
      return 'Password is required';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Username', helperText: ''),
            onSaved: (value) {
              username = value;
            },
            validator: validateUsername,
            autovalidate: autoValidate,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(labelText: 'Password', helperText: ''),
            onSaved: (value) {
              password = value;
            },
            validator: validatePassword,
            autovalidate: autoValidate,
          ),
          SizedBox(
            height: 32.0,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              elevation: 0.0,
              child: Text(
                'submit',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                submit();
              },
            ),
          )
        ],
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();
  // 销毁controller
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  // 初始状态/数据
  @override
  void initState() {
    super.initState();
    // textEditingController.text = 'hello flutter';
    textEditingController.addListener(() {
      print('TextEditingController:${textEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      // onChanged: (value) {
      //   print('onChanged:$value');
      // },
      onSubmitted: (value) {
        print('onSubmitted:$value');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.desktop_mac),
        labelText: 'title',
        hintText: 'please input title',
        // border: InputBorder.none,
        // border: OutlineInputBorder(),
        filled: true,
        // fillColor: Colors.yellow,
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  const ThemeDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}
