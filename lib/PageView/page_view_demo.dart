import 'package:flutter/material.dart';
import 'package:provider_demo/PageView/page1.dart';
import 'package:provider_demo/PageView/page2.dart';
import 'package:provider_demo/PageView/page3.dart';

class PageViewDemo extends StatelessWidget {
  const PageViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController=PageController(initialPage: 0);
    return Scaffold(
      body: PageView(
        controller: pageController,
        scrollDirection: Axis.vertical,
        physics: PageScrollPhysics(),
        children: [
          Page1(),
          Page2(),
          Page3()
        ],

      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
        ],

      ),
    );
  }
}
