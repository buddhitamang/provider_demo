import 'package:flutter/material.dart';

class ListTileExample extends StatefulWidget {
  @override
  State<ListTileExample> createState() => _ListTileExampleState();
}

class _ListTileExampleState extends State<ListTileExample> {
  List<String> car = ['dfld', 'dfjild', 'dfkls', 'ereh'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('list tile example'),
        ),
        body: Column(
          children: [
            MaterialButton(
              onPressed: () {
                setState(() {
                  car.add('added value ');

                });

              },
              child: Text(
                'Click me',
              ),
              color: Colors.blue,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: car.length,
                  itemBuilder: (context, index){
                    return ListTile(
                      title: Text(car[index]),
                    );
                  }),
            ) ,
            
          ],
        ));
  }
}
