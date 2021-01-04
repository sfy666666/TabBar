
import 'package:flutter/material.dart';

class RegisterSecondPage extends StatefulWidget {
  @override
  _RegisterSecondPageState createState() => _RegisterSecondPageState();
}

class _RegisterSecondPageState extends State<RegisterSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("注册第二步"),),
      body:Center(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 40,),
          Text("这是第二个注册页面，点击完成注册操作"),
          RaisedButton(child: Text('下一步2'),onPressed:(){
//            Navigator.pushReplacementNamed(context,'/registerThird');
            Navigator.pushNamed(context,'/registerThird');
            },)
        ],),),
    );
  }
}
