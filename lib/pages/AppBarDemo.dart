import 'package:flutter/material.dart';

///AppBar中添加TabBar
class AppBarDemoPage extends StatelessWidget {
  final length=2;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: this.length,
        child: Scaffold(
          appBar: AppBar(
//            backgroundColor: Colors.redAccent,
//            leading: IconButton(
//              icon: Icon(Icons.menu),
//              onPressed: () {
//                print('menu');
//              },
//            ),
            centerTitle: true,
//            actions: <Widget>[
//              IconButton(
//                  icon: Icon(Icons.search),
//                  onPressed: () {
//                    print('search');
//                  })
//            ],
          bottom: TabBar(tabs: <Widget>[
            Tab(text: '热门',),
            Tab(text: '推荐',),
          ]),
            title: Text("AppBarDemoPage"),
          ),
          body: TabBarView(
              children: <Widget>[
                ListView(children: <Widget>[
                  ListTile(title: Text('第一个tab'),),
                  ListTile(title: Text('第一个tab'),),
                  ListTile(title: Text('第一个tab'),),
                  ListTile(title: Text('第一个tab'),),
                ],),
                ListView(children: <Widget>[
                  ListTile(title: Text('第二个tab'),),
                  ListTile(title: Text('第二个tab'),),
                  ListTile(title: Text('第二个tab'),),
                  ListTile(title: Text('第二个tab'),),
                ],),
              ]),
        ));
  }
}
