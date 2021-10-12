class ModelSwitch {
  final String? fruit;
  late bool? isSelected;

  ModelSwitch({this.fruit, this.isSelected});
}

List fruits = [
  {
    "fruit": "Apple",
    "isSelected": false,
  },
  {
    "fruit": "Apricot",
    "isSelected": true,
  },
  {
    "fruit": "Banana",
    "isSelected": false,
  },
  {
    "fruit": "Blackberry",
    "isSelected": true,
  },
  {
    "fruit": "Coconut",
    "isSelected": false,
  },
  {
    "fruit": "Date",
    "isSelected": false,
  },
  {
    "fruit": "Fig",
    "isSelected": false,
  },
  {
    "fruit": "Gooseberry",
    "isSelected": false,
  },
  {
    "fruit": "Grapes",
    "isSelected": false,
  },
  {
    "fruit": "Lemon",
    "isSelected": false,
  },
  {
    "fruit": "Litchi",
    "isSelected": false,
  },
  {
    "fruit": "Mango",
    "isSelected": false,
  },
  {
    "fruit": "Orange",
    "isSelected": false,
  },
  {
    "fruit": "Papaya",
    "isSelected": false,
  },
  {
    "fruit": "Peach",
    "isSelected": false,
  },
  {
    "fruit": "Pineapple",
    "isSelected": false,
  },
  {
    "fruit": "Pomegranate",
    "isSelected": false,
  },
  {
    "fruit": "Starfruit",
    "isSelected": false,
  },
];

List<ModelSwitch> getFruitsList() {
  return fruits
      .map(
        (item) => ModelSwitch(
          fruit: item["fruit"],
          isSelected: item["isSelected"],
        ),
      )
      .toList();
}
