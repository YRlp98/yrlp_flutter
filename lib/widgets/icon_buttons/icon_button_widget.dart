import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconButtonwidget extends StatelessWidget {
  final String icon;
  final Color iconButtonColor, shadowColor, iconColor;
  final Function onTap;

  const IconButtonwidget(
      {Key key,
      @required this.icon,
      @required this.iconButtonColor,
      @required this.shadowColor,
      @required this.iconColor,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: iconButtonColor,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: shadowColor.withOpacity(0.15),
                spreadRadius: 0.5,
                blurRadius: 99,
                offset: Offset(0, 4),
              )
            ],
          ),
          child: Container(
            padding: const EdgeInsets.all(3),
            child: SvgPicture.asset(
              icon,
              color: iconColor,
            ),
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
