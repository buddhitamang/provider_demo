
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is home page'),
      ),
      body: Column(
        children: [
          ContainerTile(),
          ContainerTile(),
          ContainerTile(),
          ContainerTile(),
          ContainerTile(),
          ContainerTile(),
          ContainerTile(),
        ],
      )
    );
  }
}

class ContainerTile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: double.infinity,
        color: Colors.blue,
      ),
    );
  }

}
