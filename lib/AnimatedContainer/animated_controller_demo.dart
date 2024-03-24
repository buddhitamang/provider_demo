import 'package:flutter/material.dart';

class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerDemo> createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  bool isExpanded = false;

  void animateContainer() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: animateContainer,
          child: AnimatedContainer(
            duration: Duration(seconds: 2),
            alignment: isExpanded ? Alignment.center : Alignment.topLeft,
            width: isExpanded ? 120 : 80,
            height: isExpanded ? 120 : 80,
            color: Colors.blue,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
