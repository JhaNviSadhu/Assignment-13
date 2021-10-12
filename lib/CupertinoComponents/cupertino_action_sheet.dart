import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionSheetDemo extends StatelessWidget {
  final String title;
  const ActionSheetDemo({Key? key, required this.title}) : super(key: key);

  void myActionsheet(context) {
    showCupertinoModalPopup(
      context: context,
      barrierDismissible: false,
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
              onPressed: () {
                print("Dowload");

                showCupertinoDialog(
                  context: context,
                  builder: (context) => const CupertinoActivityIndicator(
                    radius: 20,
                  ),
                );
                Future.delayed(
                    const Duration(
                      seconds: 2,
                    ), () {
                  Navigator.pop(context);
                  print("Process Completed");
                });
              },
              child: const Text("Dowload"),
            ),
            CupertinoActionSheetAction(
              isDestructiveAction: true,
              onPressed: () {
                print("Delete");
                Navigator.of(context).pop();
              },
              child: const Text("Delete"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(title),
        backgroundColor: CupertinoColors.white,
      ),
      child: GestureDetector(
          onTap: () {
            myActionsheet(context);
          },
          child: Image.asset("assets/burger.jpg")),
    );
  }
}
