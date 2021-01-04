import 'package:flutter/material.dart';

import '../Form.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 11,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: <Widget>[
              Expanded(
                child: TabBar(
                  indicatorColor: Colors.redAccent,
                    labelColor: Colors.redAccent,
                    unselectedLabelColor: Colors.black,
                    isScrollable: true,
                    //和文字等宽
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: <Widget>[
                  Tab(
                    text: "推荐",
                  ),
                  Tab(
                    text: "热点",
                  ),
                  Tab(
                    text: "军事",
                  ),
                  Tab(
                    text: "政治",
                  ),
                  Tab(
                    text: "历史",
                  ),
                  Tab(
                    text: "人文",
                  ),
                  Tab(
                    text: "新闻",
                  ),
                  Tab(
                    text: "艺术",
                  ),
                  Tab(
                    text: "音乐",
                  ),
                  Tab(
                    text: "游戏",
                  ),
                  Tab(
                    text: "娱乐",
                  ),
                ]),
              )
            ],
          ),
          /*bottom: TabBar(tabs: <Widget>[
            Tab(
              text: "热销",
            ),
            Tab(
              text: "推荐",
            ),
          ]),*/
        ),
        body: TabBarView(children: <Widget>[
         Center(child: Text('推荐'),),
         Center(child: Text('热点'),),
         Center(child: Text('军事'),),
         Center(child: Text('政治'),),
         Center(child: Text('历史'),),
         Center(child: Text('人文'),),
         Center(child: Text('新闻'),),
         Center(child: Text('艺术'),),
         Center(child: Text('音乐'),),
         Center(child: Text('游戏'),),
         Center(child: Text('娱乐'),),
        ]),
      ),
    );
  }
}
