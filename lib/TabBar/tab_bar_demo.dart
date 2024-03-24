import 'package:flutter/material.dart';
import 'package:provider_demo/BottomNavigationBar/home_page.dart';
import 'package:provider_demo/TabBar/home_page.dart';
import 'package:provider_demo/TabBar/reels_page.dart';
import 'package:provider_demo/TabBar/video_page.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('hello'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.settings),
                ),
                Tab(
                  icon: Icon(Icons.video_call),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                FirstPage2(),
                ReelsPage(),
                VideoPage(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
