import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../theme/text_style.dart';

class LargeButton extends StatelessWidget {
  final Color buttonColor, shadowColor;
  final String text, icon, url;
  final Function onTap;

  const LargeButton({
    Key key,
    @required this.buttonColor,
    @required this.shadowColor,
    @required this.text,
    @required this.icon,
    this.url,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Container(
          height: 50,
          width: 170,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: shadowColor.withOpacity(0.15),
                spreadRadius: 15,
                blurRadius: 45,
                offset: Offset(0, 4),
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                text,
                style: miniParagraphRegularLightEnStyle,
              ),
              SizedBox(width: 5),
              Container(
                height: 13.5,
                width: 13.5,
                child: SvgPicture.asset(icon),
              ),
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
