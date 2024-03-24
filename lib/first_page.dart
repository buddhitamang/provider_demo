import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider_class.dart';
import 'package:provider_demo/second_page.dart';

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Counter Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter Value:',
              style: TextStyle(fontSize: 20),
            ),

            Consumer<IncrementProvider>(
              builder: (context, counter, child) => Text(
                '${counter.count}',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),

            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
            },
              child: Text('Next page'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Provider.of<IncrementProvider>(context, listen: false).increment();
          //this two are same down and up
         IncrementProvider incrementProvider= Provider.of<IncrementProvider>(context, listen: false);
         incrementProvider.increment();

        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
