import 'package:flutter/material.dart';
import 'package:jinritoutiaobar/pages/tabs/Category.dart';
import 'package:jinritoutiaobar/pages/tabs/Home.dart';
import 'package:jinritoutiaobar/pages/tabs/Settings.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key,this.index=1}):super(key:key);
  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  _TabsState(index){
    this._currentIndex=index;
  }
  int _currentIndex ;
  List _pageList = [HomePage(), CategoryPage(), SettingsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        // Here we take the value from the MyHomePage object that was created by
//        // the App.build method, and use it to set our appbar title.
//        title: Text("今日头条"),
//      ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,
          //图标大小
          iconSize: 35,
          //选中颜色
          fixedColor: Colors.redAccent,
          //底部可以设置多个按钮
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              this._currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
            BottomNavigationBarItem(icon: Icon(Icons.category), title: Text("分类")),
            BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("设置")),
          ]), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
