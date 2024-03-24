import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider_demo/BottomNavigationBar/home_page.dart';

class BottomNavDemo extends StatefulWidget {
  @override
  State<BottomNavDemo> createState() => _BottomNavDemoState();
}

class _BottomNavDemoState extends State<BottomNavDemo> {
  int _selectedIndex=0;

void navigatePage(int index){
  setState(() {
    _selectedIndex=index;
  });
}

final List<Widget> pages=[
  HomePage(),
  Center(child:Text('search page')),
  Center(child:Text('videos page')),
  Center(child:Text('profile page')),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (
      pages[_selectedIndex]
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: navigatePage,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call),label: 'videos'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'profile'),
        ],
      ),

    );
  }
}
