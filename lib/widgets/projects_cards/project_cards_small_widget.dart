import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../theme/colors.dart';

class ProjectCardsSmallWidget extends StatelessWidget {
  final String image, url;
  final Function onTap;

  const ProjectCardsSmallWidget({
    Key key,
    @required this.image,
    this.url,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Container(
          height: 400,
          width: 400,
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
