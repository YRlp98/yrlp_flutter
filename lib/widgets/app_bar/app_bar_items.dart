import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../theme/text_style.dart';

class AppBarItems extends StatelessWidget {
  final String title, url;

  const AppBarItems({
    Key key,
    @required this.title,
    this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Text(
          title,
          style: bodyNormalRegularLightEnStyle,
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
