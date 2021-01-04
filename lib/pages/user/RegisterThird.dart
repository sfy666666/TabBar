
import 'package:flutter/material.dart';

import '../Tabs.dart';

class RegisterThirdPage extends StatefulWidget {
  @override
  _RegisterThirdPageState createState() => _RegisterThirdPageState();
}

class _RegisterThirdPageState extends State<RegisterThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("注册第三步"),),
      body:Center(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 40,),
          Text("这是第三个注册页面，点击完成注册操作"),
          RaisedButton(child: Text('完成'),onPressed:(){
//            Navigator.pop(context);
              //置空所有路由，并跳转一个新的页面
              Navigator.pushAndRemoveUntil(context, new MaterialPageRoute(builder: (context)=>new Tabs(index: 2,)), (route) => false);
            },)
        ],),),
    );
  }
}
