import 'package:flutter/material.dart';

class ResultFeederPage extends StatefulWidget {
  @override
  _ResultFeederState createState() => _ResultFeederState();
}

class _ResultFeederState extends State<ResultFeederPage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  TextEditingController _controllerText = new TextEditingController();

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

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Enter data'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              TextField(
                controller: _controllerText,
              ),
              RaisedButton(
                child: Text('Return Text'),
                onPressed: () => {
                  Navigator.of(context)
                      .pop({"data": _controllerText.text.toString()})
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
