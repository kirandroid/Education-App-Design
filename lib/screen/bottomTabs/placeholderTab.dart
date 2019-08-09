import 'package:flutter/material.dart';

class PlaceholderTab extends StatefulWidget {
  String title;
  PlaceholderTab({this.title});

  @override
  _PlaceholderTabState createState() => _PlaceholderTabState();
}

class _PlaceholderTabState extends State<PlaceholderTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.title),
      ),
    );
  }
}
