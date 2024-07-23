import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/BottomNavigationBar/bottom_nav_demo.dart';
import 'package:provider_demo/CheckBoxDemo/check_box.dart';
import 'package:provider_demo/FlappyBird/game_screen.dart';
import 'package:provider_demo/GridLayoutDemo/grid_builder.dart';
import 'package:provider_demo/ImagePicker/demo.dart';
import 'package:provider_demo/Indexing/indexing_demo.dart';
import 'package:provider_demo/MapMethod/map_demo.dart';
import 'package:provider_demo/PageView/page_view_demo.dart';
import 'package:provider_demo/Routing/static_routing.dart';
import 'package:provider_demo/SerializationAndDeserialization/seri_deseri_demo.dart';
import 'package:provider_demo/TabBar/tab_bar_demo.dart';
import 'package:provider_demo/TweenAnimation/tween_animation.dart';
import 'package:provider_demo/neo_box.dart';
import 'package:provider_demo/provider_class.dart';

import 'AnimatedContainer/animated_controller_demo.dart';
import 'BottomNavigationBar/scrol_bottom_nav.dart';
import 'CheckBoxDemo/demo_checkbox.dart';
import 'FirstWhereMethod/firstwhere_demo.dart';
import 'ListTile/list_tile.dart';
import 'ListwheelScrollview/list_view_scrollview.dart';
import 'PassingData/first_page.dart';
import 'ReorderableListview/reorderrable_listview.dart';
import 'Routing/routing_second_page.dart';
import 'calculator/calculator_demo.dart';
import 'first_page.dart';
import 'intlpackage/date_format.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=>IncrementProvider(),
      child:  MaterialApp(
          title: 'Flutter Demo',
          home: NeoBox(),
        routes: {
      'firstRoute':(context)=>StaticRoutingSecondPage(),
      },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
      ),
    );
  }
}


