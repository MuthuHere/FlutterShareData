import 'package:flutter/material.dart';
import 'dart:async' show Future;

import 'package:flutter_start_activity_result/utils/Routes.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String _selection = 'Your Data will be here!!';

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Scaffold(
        appBar: new AppBar(
          title: new Text("Home Page"),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(_selection),
              new FlatButton(
                textColor: Colors.blueGrey,
                color: Colors.white,
                child: new Text('To Next Screen'),
                onPressed: () => _buttonTapped(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future _buttonTapped() async {
    Map coordinates = await Navigator.of(context)
        .pushNamed<dynamic>(Routes.ROUTE_SECOND_SCREEN);
    if (coordinates != null) {
      setState(() {
        _selection = coordinates['data'];
      });
    }
  }
}
