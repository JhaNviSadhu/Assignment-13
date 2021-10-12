import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatetimePickerDemo extends StatefulWidget {
  final String title;
  const DatetimePickerDemo({Key? key, required this.title}) : super(key: key);

  @override
  _DatetimePickerDemoState createState() => _DatetimePickerDemoState();
}

class _DatetimePickerDemoState extends State<DatetimePickerDemo> {
  // int Age = 0;
  DateTime? _chosenDateTime;
  DateTime? today = DateTime.now();

  // isAdult(String birthDateString) {
  //   String newFormat = "yyyy-MM-dd";
  //   DateTime birthDate = DateFormat(newFormat).parse(birthDateString);
  //   DateTime today = DateTime.now();

  //   int yearDiff = today.year - birthDate.year;
  //   int monthDiff = today.month - birthDate.month;
  //   int dayDiff = today.day - birthDate.day;

  //   setState(() {
  //     Age = yearDiff;
  //   });
  //   return Age;
  // }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _chosenDateTime != null
                  ? DateFormat.yMMMd().format(_chosenDateTime!) +
                      "   "
                          "${DateFormat.jm().format(_chosenDateTime!)}"
                  : DateFormat.yMMMd().format(today!) +
                      "   "
                          "${DateFormat.jm().format(today!)}",
            ),
            // Text(
            //   "Your Age" + " : " + " $Age",
            // ),
            const SizedBox(
              height: 20,
            ),
            CupertinoButton.filled(
              padding: const EdgeInsetsDirectional.only(
                  top: 5, bottom: 5, start: 5, end: 5),
              child: const Text("Show Picker"),
              onPressed: () {
                showCupertinoModalPopup(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) => Container(
                    height: 300,
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 200,
                          child: CupertinoDatePicker(
                              initialDateTime: _chosenDateTime,
                              // mode: CupertinoDatePickerMode.date,
                              onDateTimeChanged: (val) {
                                setState(() {
                                  _chosenDateTime = val;
                                });
                              }),
                        ),
                        CupertinoButton.filled(
                          child: const Text("Okay"),
                          onPressed: () {
                            Navigator.of(context).pop();
                            // isAdult(_chosenDateTime!.toString());
                          },
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
