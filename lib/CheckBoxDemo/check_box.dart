import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider_demo/CheckBoxDemo/list_tile.dart';

class CheckBoxDemo extends StatefulWidget {
  @override
  State<CheckBoxDemo> createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  List demo = [
    ['hello', false],
    ['demo', false],
    ['moje', false],
    ['moje', false],
  ];

  void changeCheckBox(bool? value, int index) {
    setState(() {
      demo[index][1]=!demo[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('hello'),
        backgroundColor: Colors.transparent,
      ),
      body: ListView.builder(
        itemCount: demo.length,
        itemBuilder: (context, index) {
          return ListTileDemo(
            onChanged: (value) {
              return changeCheckBox(value, index);
            },
            isCompleted: demo[index][1],
            teskName: demo[index][0],
        
          );
        },
      ),
    );
  }
}
