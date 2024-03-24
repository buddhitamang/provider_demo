import 'package:flutter/material.dart';

class MapDemo extends StatelessWidget {
  List<String> people = ['hjdl', 'dfdf', 'dfdsf', 'ghuds'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            height: 200, // Set a fixed height for the first ListView
            child: ListView(
              children: people.map((e) {
                return Container(
                  child: Text(e),
                );
              }).toList(),
            ),
          ),
          Container(
            color: Colors.red,
            height: 200, // Set a fixed height for the second ListView
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                return Text(people[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
