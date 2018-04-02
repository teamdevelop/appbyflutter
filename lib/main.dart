import 'package:flutter/material.dart';

import './pages/home_page.dart';

import './pages/Articles/ArticleList.dart';

void main() => runApp(new MaterialApp(
  home: new HomePage(),
  routes: <String, WidgetBuilder> {
      '/a': (BuildContext context) => new ArticleList(),
    },
  )
);

