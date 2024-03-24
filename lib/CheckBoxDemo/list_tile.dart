import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTileDemo extends StatelessWidget {
  final String teskName;
  final bool isCompleted;
  Function(bool?)? onChanged;

  ListTileDemo(
      {super.key,
      required this.onChanged,
      required this.isCompleted,
      required this.teskName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(value: isCompleted, onChanged: onChanged),
                Text(
                  teskName,
                  style: TextStyle(decoration: isCompleted?TextDecoration.lineThrough:TextDecoration.none),
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.delete))
          ],
        ),
      ),
    );
  }
}
