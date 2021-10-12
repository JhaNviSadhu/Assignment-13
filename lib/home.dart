import 'package:cupertino_widgets_hw/CupertinoComponents/context_menu.dart';
import 'package:cupertino_widgets_hw/CupertinoComponents/datetime_picker.dart';
import 'package:cupertino_widgets_hw/CupertinoComponents/Tabbar/tab_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CupertinoComponents/cupertino_action_sheet.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

List<String> buttonName = [
  "ActionSheet",
  "DateTime Picker",
  "Context Menu",
  "Tab Bar",
];

List<Widget> buttonWidget = [
  ActionSheetDemo(title: buttonName[0]),
  DatetimePickerDemo(title: buttonName[1]),
  ContextMenuDemo(title: buttonName[2]),
  TabBarClass(title: buttonName[3]),
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.activeBlue,
        middle: Text(
          "Cupertino Widgets",
          style: TextStyle(color: CupertinoColors.white),
        ),
      ),
      child: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: ListView.builder(
            itemCount: buttonName.length,
            itemBuilder: (BuildContext context, int index) => Padding(
              padding: const EdgeInsets.only(top: 10),
              child: CupertinoButton.filled(
                padding: const EdgeInsets.all(0),
                child: Text(
                  buttonName[index],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
                onPressed: () => Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => buttonWidget[index],
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
