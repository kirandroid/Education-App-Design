import 'package:education_app/components/homeCategoryItem.dart';
import 'package:education_app/components/horizontalScrollCourseItem.dart';
import 'package:flutter/material.dart';
import 'package:education_app/utils/Theme.dart' as AppTheme;
import 'package:flutter_icons/flutter_icons.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
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
              IconButton(
                icon: Icon(EvilIcons.getIconData("search")),
                color: AppTheme.Colors.black,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.sort),
                color: AppTheme.Colors.black,
                onPressed: () {},
              ),
            ],
          ),
        ];
      },
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
              AppTheme.Colors.grayOne,
              AppTheme.Colors.white,
            ])),
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Hello",
                      style: AppTheme.TextTheme.bigTitleLight,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Text(
                        "Brayden",
                        style: AppTheme.TextTheme.bigTitleSemiBold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(right: 7),
                                child: HomeCategoryItem(
                                  primaryColor: AppTheme.Colors.flatRed,
                                  primaryIcon: "lib/assets/images/study.svg",
                                  primaryTitle: "Chemistry",
                                  secondaryColor: AppTheme.Colors.flatOrange,
                                  secondaryIcon: "lib/assets/images/flask.svg",
                                  secondaryIconHeight: 30,
                                )),
                          ),
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 7),
                                child: HomeCategoryItem(
                                  primaryColor: AppTheme.Colors.flatPurple,
                                  primaryIcon: "lib/assets/images/study.svg",
                                  primaryTitle: "Biology",
                                  secondaryColor:
                                      AppTheme.Colors.flatDeepPurple,
                                  secondaryIcon: "lib/assets/images/dna.svg",
                                  secondaryIconHeight: 40,
                                )),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(right: 7),
                                child: HomeCategoryItem(
                                  primaryColor: AppTheme.Colors.flatDeepPurple,
                                  primaryIcon: "lib/assets/images/study.svg",
                                  primaryTitle: "Physics",
                                  secondaryColor: AppTheme.Colors.flatPurple,
                                  secondaryIcon:
                                      "lib/assets/images/microscope.svg",
                                  secondaryIconHeight: 30,
                                )),
                          ),
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 7),
                                child: HomeCategoryItem(
                                  primaryColor: AppTheme.Colors.flatOrange,
                                  primaryIcon: "lib/assets/images/study.svg",
                                  primaryTitle: "Math",
                                  secondaryColor: AppTheme.Colors.flatRed,
                                  secondaryIcon:
                                      "lib/assets/images/design-tool.svg",
                                  secondaryIconHeight: 25,
                                )),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 10),
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Popular ",
                              style: AppTheme.TextTheme.titleRegularBlack),
                          TextSpan(
                              text: "Courses",
                              style: AppTheme.TextTheme.titleRegularOrange),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    HorizontalScrollCourseItem(
                      courseImage: "https://picsum.photos/id/277/500/300",
                      courseTitle: "Web Design",
                    ),
                    HorizontalScrollCourseItem(
                      courseImage: "https://picsum.photos/id/216/500/300",
                      courseTitle: "Marketing",
                    ),
                    HorizontalScrollCourseItem(
                      courseImage: "https://picsum.photos/id/26/500/300",
                      courseTitle: "Programming",
                    ),
                    SizedBox(
                      width: 16,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
