import 'package:flutter/material.dart';

class FirstWhereDemo extends StatelessWidget {
  const FirstWhereDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<int> numbers = [3, 7, 8, 2, 33, 1, 21, 98, 7];
    int firstNumberGreaterThan1 = numbers.firstWhere((element) => element > 1);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text('First Where Demo'),
      ),
      body: Center(
        child: Text('Number is: $firstNumberGreaterThan1'),
      ),
    );
  }
}
