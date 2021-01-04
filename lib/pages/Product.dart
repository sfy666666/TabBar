import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  ProductPage({Key key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('商品'),),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(child:Text("跳转到商品详情"),onPressed: (){
              //命名路由跳转
              Navigator.pushNamed(context, '/productInfo',arguments: {'pid':'5456885454','name':'蓝莓'});
            }),
          ],
        ),
      ),
    );
  }
}


