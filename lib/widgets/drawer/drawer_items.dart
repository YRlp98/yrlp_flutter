import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../theme/colors.dart';
import '../../theme/icons.dart';
import '../../theme/text_style.dart';

class DrawerItems extends StatelessWidget {
  final String title, url;

  const DrawerItems({
    Key key,
    @required this.title,
    this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //* Title
              SelectableText(
                title,
                style: bodyMediumRegularLightEnStyle,
              ),
              //* Icon
              Container(
                child: SvgPicture.asset(
                  arrowRightIcon,
                  color: light1Color,
                ),
              )
            ],
          ),
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
