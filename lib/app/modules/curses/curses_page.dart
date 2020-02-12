import 'package:flutter/material.dart';

class CursesPage extends StatefulWidget {
  final String title;
  const CursesPage({Key key, this.title = "Curses"}) : super(key: key);

  @override
  _CursesPageState createState() => _CursesPageState();
}

class _CursesPageState extends State<CursesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Text("Curses"),
          )
        ],
      ),
    );
  }
}
