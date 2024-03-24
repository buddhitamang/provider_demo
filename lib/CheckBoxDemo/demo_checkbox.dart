import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoCheckBox extends StatefulWidget {
  const DemoCheckBox({super.key});

  @override
  State<DemoCheckBox> createState() => _DemoCheckBoxState();
}

class _DemoCheckBoxState extends State<DemoCheckBox> {
  bool isSlected=false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('hello'),
            Checkbox(value: isSlected, onChanged: (value){
              setState(() {

                isSlected=value!;

              });
            })
          ],
        ),
      ),
    );
  }
}
