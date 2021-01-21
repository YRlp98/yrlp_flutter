import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../theme/text_style.dart';

class TileWidgetMobile extends StatelessWidget {
  final String icon, title, subTitle, url;
  final Color iconColor;
  final Function onTap;

  const TileWidgetMobile({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.subTitle,
    @required this.iconColor,
    this.url,
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
              width: 45,
              height: 45,
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
                  style: miniParagraphRegularLightEnStyle,
                ),
              ],
            )
          ],
        ),
        onTap: () {
          _launchURL(url);
        },
      ),
    );
  }

  _launchURL(String urlAddress) async {
    if (await canLaunch(urlAddress)) {
      await launch(urlAddress);
    } else {
      throw 'Could not launch $urlAddress';
    }
  }
}
