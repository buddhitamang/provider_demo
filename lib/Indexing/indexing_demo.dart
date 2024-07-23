import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider_demo/Indexing/demo_page.dart';

class IndexingDemo extends StatefulWidget {
  @override
  State<IndexingDemo> createState() => _IndexingDemoState();
}

class _IndexingDemoState extends State<IndexingDemo> {
  //store coffetypes in list
  final List coffeTypes = [
    ['capocino', true],
    ['latte', false],
    ['mocha', false],
    ['shake', false],
  ];


  void CoffeeSelected(int index){
   setState(() {
     for(int i=0;i<coffeTypes.length;i++){
       coffeTypes[i][1]=false;
     }
     coffeTypes[index][1]=true;
   });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Hello this is indexing demo'),
      ),
      body: Container(
        height: 40,
        color: Colors.blue,
        child: ListView.builder(
          itemCount: coffeTypes.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return CoffeTypes(
                coffeTypes: coffeTypes[index][0],
                isSelected: coffeTypes[index][1],
                onTap: () {
                  CoffeeSelected(index);
                });
          },
        ),
      ),
    );
  }
}

class CoffeTypes extends StatelessWidget {
  final String coffeTypes;
  final bool isSelected;
  final VoidCallback onTap;

  const CoffeTypes(
      {super.key,
      required this.coffeTypes,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Text(
          coffeTypes,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: isSelected ? Colors.orange : Colors.white),
        ),
      ),
    );
  }
}
