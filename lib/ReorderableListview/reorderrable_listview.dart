import 'package:flutter/material.dart';

class ReorderListView extends StatefulWidget {
  @override
  State<ReorderListView> createState() => _ReorderListViewState();
}

class _ReorderListViewState extends State<ReorderListView> {
  List<dynamic> items = ['A', 'B', 'C', 'D'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reorderable List View'),
        centerTitle: true,
      ),
      body: ReorderableListView(
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            if (newIndex > oldIndex) {
              newIndex -= 1;
            }
            final String item = items.removeAt(oldIndex);
            items.insert(newIndex, item);
          });
        },
        children: items
            .map((item) => Padding(
          key: ValueKey(item), // Unique key for each item
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.blue,
            child: ListTile(
              title: Text(item),
            ),
          ),
        ))
            .toList(),
      ),
    );
  }
}
