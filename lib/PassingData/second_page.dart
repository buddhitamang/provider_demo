import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage1 extends StatelessWidget {
  var text;

  SecondPage1({super.key,required this.text});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'hello'+" "+text,
              style: TextStyle(fontSize: 45),
            ),
            MaterialButton(

              onPressed: () {
                Navigator.of(context).pop();

              },
              child: Text('GOback'),
            )
          ],
        ),
      ),
    );
  }
}
