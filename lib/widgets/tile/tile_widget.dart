import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme/text_style.dart';

class TileWidget extends StatelessWidget {
  final String icon, title, subTitle;
  final Color iconColor;
  final Function onTap;

  const TileWidget({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.subTitle,
    @required this.iconColor,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Row(
          children: <Widget>[
            //* Icon
            Container(
              width: 55,
              height: 55,
              child: SvgPicture.asset(
                icon,
                color: iconColor,
              ),
            ),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //* Title
                SelectableText(
                  title + ':',
                  style: display5LightLightEnStyle,
                ),
                //* Subtitle
                SelectableText(
                  subTitle,
                  style: leadParagraphRegularLightEnStyle,
                ),
              ],
            )
          ],
        ),
        onTap: onTap,
      ),
    );
  }
}
