import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFormatDemo extends StatelessWidget {
  const DateFormatDemo({super.key});

  @override
  Widget build(BuildContext context) {

    DateTime timeNow= DateTime.now();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(timeNow.toString()),
            Text('${DateFormat('yyyy-MMMM-dd').format(timeNow)}'),
          ],
        ),
      ),

    );
  }
}
