import 'package:flutter/material.dart';

class ProductInfoPage extends StatefulWidget {
  final Map arguments;

  ProductInfoPage({this.arguments});

  @override
  _ProductInfoPageState createState() =>
      _ProductInfoPageState(arguments: this.arguments);
}

class _ProductInfoPageState extends State<ProductInfoPage> {
  final Map arguments;

  _ProductInfoPageState({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品详情"),
      ),
      body: Container(
        child: Text('商品详情pid=${arguments['id']},name=${arguments['name']}'),
      ),
    );
  }
}
