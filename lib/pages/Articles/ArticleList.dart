import 'package:flutter/material.dart';

class ArticleList extends StatefulWidget {
  const ArticleList({ Key key , this.data}) : super(key: key); //构造函数中增加参数
    final String data;    //为参数分配空间
    @override
    _MainList createState() => new _MainList();
}

class _MainList extends State<ArticleList> {

  @override
  Widget build(BuildContext context){
    return new ListView(
      // shrinkWrap: true,
      padding: const EdgeInsets.all(20.0),
      children: <Widget>[
        const Text('I\'m dedicating every day to you'),
        const Text('Domestic life was never quite my style'),
        const Text('When you smile, you knock me out, I fall apart'),
        const Text('And I thought I was so smart'),
      ],
    );
  }
}

