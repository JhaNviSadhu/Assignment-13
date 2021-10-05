import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActivityIndicatorDemo extends StatefulWidget {
  const ActivityIndicatorDemo({Key? key}) : super(key: key);

  @override
  _ActivityIndicatorDemoState createState() => _ActivityIndicatorDemoState();
}

class _ActivityIndicatorDemoState extends State<ActivityIndicatorDemo> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
            backgroundColor: CupertinoColors.white),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: CupertinoButton.filled(
            child: const Text("data"),
            onPressed: () {
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
          ),
        ));
  }
}
