import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridBuilderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> name = [
      'dfdf',
      'dfdfd',
      'heelo',
      'moje',
      'this',
      'is',
      'the',
      'chance ',
      'to be big'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('this is the grid layout demo'),
      ),
      body: Column(
        children: [
          Center(
            child: GridView.builder(
                itemCount: name.length,
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.blue,
                      child: Text(name[index]),
                    ),
                  );
                }),
          ),

        ],
      ),
    );
  }
}
