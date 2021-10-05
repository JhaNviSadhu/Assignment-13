import 'package:cupertino_widgets_hw/CupertinoComponents/activity_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CupertinoComponents/cupertino_action_sheet.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

List<String> buttonName = [
  "Cupertino ActionSheet",
  "Activity Indicator",
];

List<Widget> buttonWidget = [
  const ActionSheetDemo(),
  const ActivityIndicatorDemo(),
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
                child: Text(buttonName[index]),
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
