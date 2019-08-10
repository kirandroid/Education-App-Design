import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlaceholderTab extends StatefulWidget {
  String icon;
  PlaceholderTab({this.icon});

  @override
  _PlaceholderTabState createState() => _PlaceholderTabState();
}

class _PlaceholderTabState extends State<PlaceholderTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          widget.icon,
          height: 50,
          width: 50,
        ),
      ),
    );
  }
}
