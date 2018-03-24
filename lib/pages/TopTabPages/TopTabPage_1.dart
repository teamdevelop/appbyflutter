import 'package:flutter/material.dart';

class TabPage1 extends StatefulWidget {
  const TabPage1({ Key key , this.data}) : super(key: key); //构造函数中增加参数
  final String data;    //为参数分配空间
  @override
  _MyTabbedPageState createState() => new _MyTabbedPageState();
}

class _MyTabbedPageState extends State<TabPage1> with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    new Tab(text: 'Tab1'),
    new Tab(text: 'Tab2'),
    new Tab(text: 'Tab3'),
    new Tab(text: 'Tab4'),
    new Tab(text: 'Tab5'),
    new Tab(text: 'Tab6'),
    new Tab(text: 'Tab7'),
    new Tab(text: 'Tab8'),
    new Tab(text: 'Tab9'),
    new Tab(text: 'Tab10'),
    new Tab(text: 'Tab11'),

  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: myTabs.length);
  }

 @override
 void dispose() {
   _tabController.dispose();
   super.dispose();
 }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.orangeAccent,
        title: new TabBar(
          controller: _tabController,
          tabs: myTabs,
          indicatorColor: Colors.white,
          isScrollable: true,   //水平滚动的开关，开启后Tab标签可自适应宽度并可横向拉动，关闭后每个Tab自动压缩为总长符合屏幕宽度的等宽，默认关闭
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: myTabs.map((Tab tab) {
          return new Center(child: new Text(tab.text+'   '+widget.data)); //使用参数值
        }).toList(),
      ),
    );
  }
}