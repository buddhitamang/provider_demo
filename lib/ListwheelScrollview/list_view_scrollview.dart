import 'package:flutter/material.dart';

class ListViewScrollView extends StatelessWidget {
  var arrIndex = [1, 2, 53, 22, 54, 22, 534, 6];

  @override
  Widget build(context) {
    return Scaffold(
        body: ListWheelScrollView(
      itemExtent: 80, // Height of each item
      diameterRatio: 1.5, // Controls the size of the wheel
      perspective: 0.002, // Defines the depth of the wheel
      children: List.generate(
        10,
        (index) => ListTile(
          title: Text('Item $index'),
          tileColor: Colors.blueAccent,
        ),
      ),
    ));
  }
}
