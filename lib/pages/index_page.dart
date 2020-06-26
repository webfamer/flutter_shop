import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_shop/pages/home_page.dart';
import 'package:flutter_shop/pages/category_page.dart';
import 'package:flutter_shop/pages/shopcar_page.dart';
import 'package:flutter_shop/pages/mycenter_page.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final List<BottomNavigationBarItem> tabList = [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), title: Text('首页')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.search), title: Text('分类')),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.car), title: Text('购物车')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.profile_circled), title: Text('会员中心'))
  ];
  final List tabBodies = [
    HomePage(),
    CategoryPage(),
    ShopcarPage(),
    MycenterPage()
  ];
int currentIndex = 0;
var currentpage;
@override
@override
void initState() { 
  currentpage = tabBodies[currentIndex];
  super.initState();
}
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('百姓生活+d'),),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          items: tabList,
          onTap:(index){
            setState(() {
              currentIndex = index;
              currentpage = tabBodies[currentIndex];
            });
          }
        ),
        body: currentpage,
      ),
    );
  }
}
