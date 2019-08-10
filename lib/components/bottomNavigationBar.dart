import 'package:flutter/material.dart' as md;
import 'package:flutter_svg/flutter_svg.dart';

final md.Color defaultColor = md.Colors.grey[700];

final md.Color defaultOnSelectColor = md.Colors.blue;

class BottomNav extends md.StatefulWidget {
  final int index;
  final void Function(int i) onTap;
  final List<BottomNavItem> items;
  final double elevation;
  final IconStyle iconStyle;
  final md.Color color;
  final LabelStyle labelStyle;

  BottomNav({
    this.index,
    this.onTap,
    this.items,
    this.elevation = 0.0,
    this.iconStyle,
    this.color = md.Colors.white,
    this.labelStyle,
  })  : assert(items != null),
        assert(items.length >= 2);

  @override
  BottomNavState createState() => BottomNavState();
}

class BottomNavState extends md.State<BottomNav> {
  int currentIndex;
  IconStyle iconStyle;
  LabelStyle labelStyle;

  @override
  void initState() {
    currentIndex = widget.index ?? 0;
    iconStyle = widget.iconStyle ?? IconStyle();
    labelStyle = widget.labelStyle ?? LabelStyle();
    super.initState();
  }

  @override
  md.Widget build(md.BuildContext context) {
    return md.Material(
        elevation: widget.elevation,
        color: widget.color,
        child: md.Row(
          mainAxisAlignment: md.MainAxisAlignment.spaceAround,
          mainAxisSize: md.MainAxisSize.max,
          children: widget.items.map((b) {
            final int i = widget.items.indexOf(b);
            final bool selected = i == currentIndex;

            return BMNavItem(
              icon: b.icon,
              iconSize:
                  selected ? iconStyle.getSelectedSize() : iconStyle.getSize(),
              label: parseLabel(b.label, labelStyle, selected),
              onTap: () => onItemClick(i),
              textStyle: selected
                  ? labelStyle.getOnSelectTextStyle()
                  : labelStyle.getTextStyle(),
              color: selected
                  ? iconStyle.getSelectedColor()
                  : iconStyle.getColor(),
            );
          }).toList(),
        ));
  }

  onItemClick(int i) {
    setState(() {
      currentIndex = i;
    });
    if (widget.onTap != null) widget.onTap(i);
  }

  parseLabel(String label, LabelStyle style, bool selected) {
    if (!style.isVisible()) {
      return null;
    }

    if (style.isShowOnSelect()) {
      return selected ? label : null;
    }

    return label;
  }
}

class BottomNavItem {
  final String icon;
  final String label;

  BottomNavItem(this.icon, {this.label});
}

class LabelStyle {
  final bool visible;
  final bool showOnSelect;
  final md.TextStyle textStyle;
  final md.TextStyle onSelectTextStyle;

  LabelStyle(
      {this.visible,
      this.showOnSelect,
      this.textStyle,
      this.onSelectTextStyle});

  isVisible() {
    return visible ?? true;
  }

  isShowOnSelect() {
    return showOnSelect ?? false;
  }

  // getTextStyle returns `textStyle` with default `fontSize` and
  // `color` values if not provided. if `textStyle` is null then
  // returns default text style
  getTextStyle() {
    if (textStyle != null) {
      return md.TextStyle(
        inherit: textStyle.inherit,
        color: textStyle.color ?? defaultOnSelectColor,
        fontSize: textStyle.fontSize ?? 12.0,
        fontWeight: textStyle.fontWeight,
        fontStyle: textStyle.fontStyle,
        letterSpacing: textStyle.letterSpacing,
        wordSpacing: textStyle.wordSpacing,
        textBaseline: textStyle.textBaseline,
        height: textStyle.height,
        locale: textStyle.locale,
        foreground: textStyle.foreground,
        background: textStyle.background,
        decoration: textStyle.decoration,
        decorationColor: textStyle.decorationColor,
        decorationStyle: textStyle.decorationStyle,
        debugLabel: textStyle.debugLabel,
        fontFamily: textStyle.fontFamily,
      );
    }
    return md.TextStyle(color: defaultColor, fontSize: 12.0);
  }

  // getOnSelectTextStyle returns `onSelectTextStyle` with
  // default `fontSize` and `color` values if not provided. if
  // `onSelectTextStyle` is null then returns default text style
  getOnSelectTextStyle() {
    if (onSelectTextStyle != null) {
      return md.TextStyle(
        inherit: onSelectTextStyle.inherit,
        color: onSelectTextStyle.color ?? defaultOnSelectColor,
        fontSize: onSelectTextStyle.fontSize ?? 12.0,
        fontWeight: onSelectTextStyle.fontWeight,
        fontStyle: onSelectTextStyle.fontStyle,
        letterSpacing: onSelectTextStyle.letterSpacing,
        wordSpacing: onSelectTextStyle.wordSpacing,
        textBaseline: onSelectTextStyle.textBaseline,
        height: onSelectTextStyle.height,
        locale: onSelectTextStyle.locale,
        foreground: onSelectTextStyle.foreground,
        background: onSelectTextStyle.background,
        decoration: onSelectTextStyle.decoration,
        decorationColor: onSelectTextStyle.decorationColor,
        decorationStyle: onSelectTextStyle.decorationStyle,
        debugLabel: onSelectTextStyle.debugLabel,
        fontFamily: onSelectTextStyle.fontFamily,
      );
    }
    return md.TextStyle(color: defaultOnSelectColor, fontSize: 12.0);
  }
}

class IconStyle {
  final double size;
  final double onSelectSize;
  final md.Color color;
  final md.Color onSelectColor;

  IconStyle({this.size, this.onSelectSize, this.color, this.onSelectColor});

  getSize() {
    return size ?? 24.0;
  }

  getSelectedSize() {
    return onSelectSize ?? 24.0;
  }

  getColor() {
    return color ?? defaultColor;
  }

  getSelectedColor() {
    return onSelectColor ?? defaultOnSelectColor;
  }
}

class BMNavItem extends md.StatelessWidget {
  final String icon;
  final double iconSize;
  final String label;
  final void Function() onTap;
  final md.Color color;
  final md.TextStyle textStyle;

  BMNavItem({
    this.icon,
    this.iconSize,
    this.label,
    this.onTap,
    this.color,
    this.textStyle,
  })  : assert(icon != null),
        assert(iconSize != null),
        assert(color != null),
        assert(onTap != null);

  @override
  md.Widget build(md.BuildContext context) {
    return md.Expanded(
        child: md.InkResponse(
      key: key,
      child: md.Padding(
          padding: getPadding(),
          child: md.Column(
              mainAxisSize: md.MainAxisSize.min,
              children: <md.Widget>[
                SvgPicture.asset(
                  icon,
                  height: iconSize,
                  color: color,
                  width: iconSize,
                ),
                md.SizedBox(
                  height: 5,
                ),
                label != null
                    ? md.Container(
                        height: 1,
                        width: iconSize / 1.5,
                        color: color,
                      )
                    : md.Container(
                        height: 1, width: 10, color: md.Colors.transparent)
                // label != null
                //     ? md.Text(label, style: textStyle)
                //     : md.Container()
              ])),
      highlightColor: md.Theme.of(context).highlightColor,
      splashColor: md.Theme.of(context).splashColor,
      radius: md.Material.defaultSplashRadius,
      onTap: () => onTap(),
    ));
  }

  // getPadding returns the padding after adjusting the top and bottom
  // padding based on the fontsize and iconSize.
  getPadding() {
    if (label != null) {
      final double p = ((56 - textStyle.fontSize) - iconSize) / 2;
      return md.EdgeInsets.fromLTRB(0.0, p, 0.0, p);
    }
    return md.EdgeInsets.fromLTRB(
        0.0, (56 - iconSize) / 2, 0.0, (56 - iconSize) / 2);
  }
}
