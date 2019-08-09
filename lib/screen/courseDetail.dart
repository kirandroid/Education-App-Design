import 'package:education_app/components/toggleButton.dart';
import 'package:flutter/material.dart';
import 'package:education_app/utils/Theme.dart' as AppTheme;
import 'package:flutter_icons/flutter_icons.dart';

class CourseDetail extends StatefulWidget {
  @override
  _CourseDetailState createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          new SliverAppBar(
            floating: true,
            elevation: 0,
            snap: true,
            backgroundColor: AppTheme.Colors.white,
            brightness: Brightness.light,
            actions: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 50,
                      child: IconButton(
                        icon: Icon(SimpleLineIcons.getIconData("arrow-left")),
                        color: AppTheme.Colors.black,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          ToggleButton(
                            buttonName: "Lesson 1",
                            buttonColor: AppTheme.Colors.flatOrange,
                            isPressed: true,
                          ),
                          ToggleButton(
                            buttonName: "Lesson 2",
                            buttonColor: AppTheme.Colors.flatDeepPurple,
                            isPressed: false,
                          ),
                          ToggleButton(
                            buttonName: "Lesson 3",
                            buttonColor: AppTheme.Colors.flatRed,
                            isPressed: false,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ];
      },
      body: Container(
        color: AppTheme.Colors.white,
      ),
    ));
  }
}
