import 'package:flutter/material.dart';

import 'pages/routes/Routes.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//去debug
      initialRoute: '/',   //默认启动页面
      //注册路由表
      onGenerateRoute:onGenerateRoute,
    );
  }
}
