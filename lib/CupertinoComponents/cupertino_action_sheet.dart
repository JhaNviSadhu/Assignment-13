import 'package:flutter/cupertino.dart';

class ActionSheetDemo extends StatelessWidget {
  const ActionSheetDemo({Key? key}) : super(key: key);

  void myActionsheet(context) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return CupertinoActionSheet(
          title: const Text("This is CupertinoActionSheet "),
          cancelButton: CupertinoActionSheetAction(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Cancle"),
          ),
          actions: [
            CupertinoActionSheetAction(
              isDefaultAction: true,
              onPressed: () {
                print("Yes");
                Navigator.of(context).pop();
              },
              child: const Text("Yes"),
            ),
            CupertinoActionSheetAction(
              isDestructiveAction: true,
              onPressed: () {
                print("No");
                Navigator.of(context).pop();
              },
              child: const Text("No"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(),
      child: Center(
        child: GestureDetector(
          onTap: () {
            myActionsheet(context);
          },
          child: Image.asset("assets/burger.jpg"),
        ),
      ),
    );
  }
}
