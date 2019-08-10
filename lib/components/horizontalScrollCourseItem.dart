import 'package:cached_network_image/cached_network_image.dart';
import 'package:education_app/screen/courseDetail.dart';
import 'package:flutter/material.dart';
import 'package:education_app/utils/Theme.dart' as AppTheme;

class HorizontalScrollCourseItem extends StatefulWidget {
  String courseImage;
  String courseTitle;

  HorizontalScrollCourseItem({this.courseImage, this.courseTitle});

  @override
  _HorizontalScrollCourseItemState createState() =>
      _HorizontalScrollCourseItemState();
}

class _HorizontalScrollCourseItemState
    extends State<HorizontalScrollCourseItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CourseDetail()));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                flex: 3,
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: CachedNetworkImage(
                    imageUrl: widget.courseImage,
                    placeholder: (context, url) => Center(
                      child: Container(
                        alignment: Alignment.center,
                        color: AppTheme.Colors.grayTwo,
                        child: CircularProgressIndicator(
                          backgroundColor: AppTheme.Colors.primaryColor,
                        ),
                      ),
                    ),
                    errorWidget: (context, url, error) =>
                        Center(child: Icon(Icons.error)),
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                  child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  widget.courseTitle,
                  style: AppTheme.TextTheme.regularTextPurple,
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
