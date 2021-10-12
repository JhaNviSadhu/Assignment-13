import 'package:cupertino_widgets_hw/CupertinoComponents/Tabbar/tab1.dart';
import 'package:cupertino_widgets_hw/CupertinoComponents/Tabbar/tab2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarClass extends StatefulWidget {
  final String title;
  const TabBarClass({Key? key, required this.title}) : super(key: key);

  @override
  _TabBarClassState createState() => _TabBarClassState();
}

List<Widget> _tabs = [
  const Tab1(),
  const Tab2(),
];

class _TabBarClassState extends State<TabBarClass> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      resizeToAvoidBottomInset: false,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.white,
        middle: Text(widget.title),
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search),
            ),
          ],
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (context) {
              return _tabs[index];
            },
          );
        },
      ),
    );
  }
}
