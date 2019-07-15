import 'package:flutter/material.dart';
import 'package:flutter_start_activity_result/text_feed_page.dart';
import 'package:flutter_start_activity_result/utils/Routes.dart';

import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: HomePage(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: <String, WidgetBuilder>{
          Routes.ROUTE_SECOND_SCREEN: (BuildContext context) =>
              ResultFeederPage(),
        });
  }
}
