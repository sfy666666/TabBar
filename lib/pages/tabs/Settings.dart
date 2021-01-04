import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
              child: Text("跳转到登录页面"),
              onPressed: (){
                Navigator.pushNamed(context, '/login');
              }),
          RaisedButton(
              child: Text("跳转到注册页面"),
              onPressed: (){
                Navigator.pushNamed(context, '/registerFirst');
              }),
        ],
      ),
    );
  }
}
