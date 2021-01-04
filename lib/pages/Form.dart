import 'package:flutter/material.dart';
class FormPage extends StatelessWidget {
  String title='';
  FormPage({this.title='表单'});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.title),),
      floatingActionButton: FloatingActionButton(child: Text('返回'),onPressed: (){
        Navigator.pop(context);
      },),
      body:ListView(
        children: <Widget>[
          ListTile(title: Text('我是表单页面'),),
          ListTile(title: Text('我是表单页面'),),
          ListTile(title: Text('我是表单页面'),),
          ListTile(title: Text('我是表单页面'),)
        ],
      )
    );
  }
}
