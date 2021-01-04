import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jinritoutiaobar/pages/Product.dart';
import 'package:jinritoutiaobar/pages/ProductInfo.dart';
import 'package:jinritoutiaobar/pages/TabBarController.dart';
import 'package:jinritoutiaobar/pages/user/Login.dart';
import 'package:jinritoutiaobar/pages/user/RegisterFirst.dart';
import 'package:jinritoutiaobar/pages/user/RegisterSecond.dart';
import 'package:jinritoutiaobar/pages/user/RegisterThird.dart';

import '../AppBarDemo.dart';
import '../Form.dart';
import '../Search.dart';
import '../Tabs.dart';

//配置路由
final routes = {
  '/': (context, {arguments}) => Tabs(),
  '/form': (context) => FormPage(title: '我是传值'),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments),
  '/appbar': (context) => AppBarDemoPage(),
  '/product': (context) => ProductPage(),
  '/login': (context) => LoginPage(),
  "/registerFirst": (context) => RegisterFirstPage(),
  "/registerSecond": (context) => RegisterSecondPage(),
  "/registerThird": (context) => RegisterThirdPage(),
  '/productInfo': (context,{arguments}) => ProductInfoPage(arguments: arguments),
  '/tabBarController': (context) => TabBarControllerPage(),
};

//固定写法
// ignore: top_level_function_literal_block
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  final Route route =
  MaterialPageRoute(builder: (context) => pageContentBuilder(context));
  return route;
};
