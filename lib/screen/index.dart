import 'package:education_app/screen/bottomTabs/homeTab.dart';
import 'package:education_app/screen/bottomTabs/placeholderTab.dart';
import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int _selectedTab = 2;

  final _tabs = [
    PlaceholderTab(title: "Courses"),
    PlaceholderTab(title: "Notification"),
    HomeTab(),
    PlaceholderTab(title: "Setting"),
    PlaceholderTab(title: "Account"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("__")),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("__")),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("__")),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("__")),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("__")),
        ],
        currentIndex: _selectedTab,
        unselectedItemColor: Colors.grey,
        fixedColor: Colors.red,
        type: BottomNavigationBarType.shifting,
        onTap: _onTabTapped,
      ),
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      _selectedTab = index;
    });
  }
}
