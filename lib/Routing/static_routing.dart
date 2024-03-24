import 'package:flutter/material.dart';

class StaticRoutingDemo extends StatelessWidget {
  const StaticRoutingDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('This is static navigation'),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, 'firstRoute');
            },
            child: Text('Press me'),
            color: Colors.blue,
          )
        ],
      )),
    );
  }
}
