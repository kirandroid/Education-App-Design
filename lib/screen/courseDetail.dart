import 'package:cached_network_image/cached_network_image.dart';
import 'package:education_app/components/horizontalScrollCourseItem.dart';
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
                      width: 40,
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
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      height: 200,
                      child: Stack(
                        children: <Widget>[
                          CachedNetworkImage(
                            imageUrl: "https://picsum.photos/id/216/500/300",
                            placeholder: (context, url) => Center(
                              child: CircularProgressIndicator(),
                            ),
                            errorWidget: (context, url, error) =>
                                Center(child: Icon(Icons.error)),
                            imageBuilder: (context, imageProvider) => Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: Material(
                                type: MaterialType.transparency,
                                child: InkWell(
                                  radius: 25,
                                  borderRadius: BorderRadius.circular(25),
                                  highlightColor: AppTheme.Colors.flatOrange,
                                  onTap: () {},
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Icon(
                                      Icons.play_arrow,
                                      size: 40,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Web Design",
                          style: AppTheme.TextTheme.titleSemiBoldPurple,
                        ),
                        Text(
                          "09:30",
                          style: AppTheme.TextTheme.titleRegularGray,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Text(
                      "The web design industry has been undergoing tremendous changes to meet the demand of users all over to have more access to content. Between mobile phones, tablets, and desktops, accessibility on the web is so easy.",
                      style: AppTheme.TextTheme.regularTextBlack,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 10),
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Recent ",
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
    ));
  }
}
