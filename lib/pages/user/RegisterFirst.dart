import 'package:flutter/material.dart';

class RegisterFirstPage extends StatefulWidget {
  @override
  _RegisterFirstPageState createState() => _RegisterFirstPageState();
}

class _RegisterFirstPageState extends State<RegisterFirstPage > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("注册"),),
      body:Center(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 40,),
          Text("这是第一个注册页面，点击进入下一步页面"),
          RaisedButton(child: Text('下一步1'),onPressed:(){
//            Navigator.pushReplacementNamed(context,'/registerSecond');
            Navigator.pushNamed(context,'/registerSecond');
          },)
        ],),),
    );
  }
}
