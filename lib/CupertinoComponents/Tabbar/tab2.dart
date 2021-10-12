import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tab2 extends StatefulWidget {
  const Tab2({Key? key}) : super(key: key);

  @override
  State<Tab2> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  int _selectedSegment1 = 0;
  int _selectedSegment2 = 0;
  double _sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoSegmentedControl(
                groupValue: _selectedSegment1,
                children: {
                  0: Container(
                    color: (_selectedSegment1 == 0)
                        ? CupertinoColors.activeBlue
                        : null,
                    padding: const EdgeInsets.all(8),
                    child: const Text('Segment 0'),
                  ),
                  1: Container(
                    color: (_selectedSegment1 == 1)
                        ? CupertinoColors.activeBlue
                        : null,
                    padding: const EdgeInsets.all(8),
                    child: const Text('Segment 1'),
                  ),
                  2: Container(
                    color: (_selectedSegment1 == 2)
                        ? CupertinoColors.activeBlue
                        : null,
                    padding: const EdgeInsets.all(8),
                    child: const Text('Segment 2'),
                  ),
                },
                onValueChanged: (int value) {
                  setState(() {
                    _selectedSegment1 = value;
                  });
                },
              ),
              const SizedBox(height: 30),
              Expanded(
                child: Center(
                  child: Text(
                    "$_selectedSegment1",
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ),
              CupertinoSlidingSegmentedControl(
                
                groupValue: _selectedSegment2,
                thumbColor: CupertinoColors.white,
                children: {
                  0: const Text('Segment 0'),
                  1: Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Segment 1'),
                  ),
                  2: Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Segment 2'),
                  ),
                },
                onValueChanged: (int? value) {
                  setState(() {
                    _selectedSegment2 = value ?? 0;
                  });
                },
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "$_selectedSegment2",
                    style: const TextStyle(fontSize: 50),
                  ),
                ),
              ),
              Text("${_sliderValue.toInt()}",
                  style: const TextStyle(fontSize: 30)),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CupertinoSlider(
                  max: 10,
                  min: 0,
                  onChanged: (double value) {
                    setState(() {
                      _sliderValue = value;
                    });
                  },
                  value: _sliderValue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
