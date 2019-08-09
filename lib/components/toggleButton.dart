import 'package:flutter/material.dart';
import 'package:education_app/utils/Theme.dart' as AppTheme;

class ToggleButton extends StatefulWidget {
  String buttonName;
  Color buttonColor;
  bool isPressed;

  ToggleButton({this.buttonColor, this.buttonName, this.isPressed});

  @override
  _ToggleButtonState createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10),
        child: InkWell(
          onTap: () {
            this.setState(() {
              widget.isPressed = !widget.isPressed;
            });
          },
          child: Container(
            foregroundDecoration: !widget.isPressed
                ? BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white.withOpacity(0.7),
                  )
                : null,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                widget.buttonName,
                style: AppTheme.TextTheme.regularTextWhite,
              ),
            ),
            decoration: BoxDecoration(
                color: widget.buttonColor,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      color: widget.buttonColor.withOpacity(0.4),
                      blurRadius: 8,
                      offset: Offset(0.0, 3))
                ]),
          ),
        ));
  }
}
