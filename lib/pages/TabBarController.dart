import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

//第一步：继承SingleTickerProviderStateMixin
class _TabBarControllerPageState extends State<TabBarControllerPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;


  //组件生命周期函数 加载时调用
  @override
  void initState() {
    super.initState();
    //第二步
    _tabController = new TabController(vsync: this, length: 2);
    //第三步 注意 在TabBar和TabBarView中都需要配置controller

    //第四步 controller监听函数
    _tabController.addListener(() {
      //通过监听实现自定义的功能
      print(_tabController.index);
    });
  }

  //组件生命周期函数 渲染（创建/构建）视图时执行 setState重新调用
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBarControllerPage'),
        bottom: TabBar(
            //通过Controller实现顶部切换
            controller: this._tabController,
            tabs: <Widget>[
              Tab(
                text: '热销',
              ),
              Tab(
                text: '推荐',
              ),
            ]),
      ),
      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
        Center(child: Text('热销'),),
        Center(child: Text('推荐'),),
      ],),
    );
  }
}
