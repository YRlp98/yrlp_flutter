import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../theme/colors.dart';
import '../../theme/text_style.dart';

class ProjectCardsBigWidget extends StatelessWidget {
  final String image, title, platforms, url;
  final Function onTap;

  const ProjectCardsBigWidget({
    Key key,
    @required this.image,
    @required this.title,
    @required this.platforms,
    this.url,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Container(
          height: 450,
          width: 450,
          decoration: BoxDecoration(
            color: dark1Color,
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                spreadRadius: 15,
                blurRadius: 45,
                offset: Offset(0, 10),
              )
            ],
          ),
          child: Container(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                SizedBox(height: 60),
                //* Title
                Align(
                  alignment: Alignment.bottomLeft,
                  child: SelectableText(
                    title,
                    style: heading2BoldLightEnStyle,
                  ),
                ),
                SizedBox(height: 2),
                //* Platfroms
                Align(
                  alignment: Alignment.bottomLeft,
                  child: SelectableText(
                    platforms,
                    style: display4LightLightEnStyle,
                  ),
                ),
              ],
            ),
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
