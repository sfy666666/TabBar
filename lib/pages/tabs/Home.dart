import 'package:flutter/material.dart';
import 'package:jinritoutiaobar/pages/Search.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(child:Text("跳转到appbar"),onPressed: (){
            //命名路由跳转
            Navigator.pushNamed(context, '/appbar');
          }),
          RaisedButton(child:Text("跳转到搜索页面"),onPressed: (){
            //基本路由跳转
//            Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchPage()));
            //命名路由跳转
            Navigator.pushNamed(context, '/search',arguments: {'id':'我是id'});
          }),
          RaisedButton(child:Text("跳转到表单页面并传值"),onPressed: (){
            //基本路由跳转
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchPage()));
          }),
          RaisedButton(child:Text("跳转到商品页面并传值"),onPressed: (){
            //基本路由跳转
            Navigator.pushNamed(context, '/product');
          }),
        ],
      ),
    );
  }
}
