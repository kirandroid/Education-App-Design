import 'package:education_app/components/bottomNavigationBar.dart';
import 'package:education_app/screen/bottomTabs/homeTab.dart';
import 'package:education_app/screen/bottomTabs/placeholderTab.dart';
import 'package:flutter/material.dart';
import 'package:education_app/utils/Theme.dart' as AppTheme;

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int _selectedTab = 2;

  final _tabs = [
    PlaceholderTab(icon: "lib/assets/images/bookmark.svg"),
    PlaceholderTab(icon: "lib/assets/images/notification.svg"),
    HomeTab(),
    PlaceholderTab(icon: "lib/assets/images/controls.svg"),
    PlaceholderTab(icon: "lib/assets/images/user.svg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _tabs[_selectedTab],
        bottomNavigationBar: BottomNav(
          index: _selectedTab,
          labelStyle: LabelStyle(showOnSelect: true),
          iconStyle: IconStyle(onSelectColor: AppTheme.Colors.flatOrange),
          items: [
            BottomNavItem("lib/assets/images/bookmark.svg", label: 'bookmark'),
            BottomNavItem("lib/assets/images/notification.svg",
                label: 'notification'),
            BottomNavItem("lib/assets/images/home.svg", label: 'home'),
            BottomNavItem("lib/assets/images/controls.svg", label: 'Settings'),
            BottomNavItem("lib/assets/images/user.svg", label: 'user')
          ],
          onTap: (index) {
            setState(() {
              _selectedTab = index;
            });
          },
        ));
  }
}
