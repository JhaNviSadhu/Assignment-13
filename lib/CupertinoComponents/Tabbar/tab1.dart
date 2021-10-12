import 'package:cupertino_widgets_hw/model/model_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tab1 extends StatefulWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  List<ModelSwitch> myswitch = getFruitsList();
  List<ModelSwitch> myFilteredSwitch = List.from(getFruitsList());
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
  }

  onItemChanged(String value) {
    setState(() {
      myFilteredSwitch = getFruitsList()
          .where((string) => string.fruit!.contains(value))
          .toList();
    });
  }

  // static List<String> mainDataList = [
  //   "Apple",
  //   "Apricot",
  //   "Banana",
  //   "Blackberry",
  //   "Coconut",
  //   "Date",
  //   "Fig",
  //   "Gooseberry",
  //   "Grapes",
  //   "Lemon",
  //   "Litchi",
  //   "Mango",
  //   "Orange",
  //   "Papaya",
  //   "Peach",
  //   "Pineapple",
  //   "Pomegranate",
  //   "Starfruit"
  // ];
  // List newDataList = List.from(mainDataList);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CupertinoSearchTextField(
            controller: _textController,
            onChanged: (String value) {
              // onItemChanged(value);
              // var myArray =
              //     myswitch.map((e) => (e.fruit ?? "").contains(value)).toList();

              // setState(() {
              //   for (var item in myswitch) {
              //     if ((item.fruit ?? "").contains(value)) {
              //       myFilteredSwitch.add(item);
              //     }
              //   }

              //   myswitch = myFilteredSwitch;
              // });

              print('The text has changed to: $value');
            },
            onSubmitted: (String value) {
              print('Submitted text: $value');
            },
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: myswitch.length,
            itemBuilder: (context, index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        myFilteredSwitch[index].fruit ?? " ",
                        style: const TextStyle(fontSize: 20),
                      ),
                      CupertinoSwitch(
                        value: myswitch[index].isSelected ?? false,
                        onChanged: (bool value) {
                          setState(() {
                            myswitch[index].isSelected = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
