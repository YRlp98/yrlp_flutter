import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/icons.dart';
import '../../../theme/strings.dart';
import '../../../theme/text_style.dart';
import '../../../widgets/icon_buttons/icon_button_widget.dart';

class SocialMediaContent extends StatelessWidget {
  const SocialMediaContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 60, top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Title
          Align(
            alignment: Alignment.topLeft,
            child: SelectableText(
              meOnSocialMedia,
              style: leadParagraphRegularLightEnStyle,
            ),
          ),
          SizedBox(height: 25),
          // Icon buttons
          Row(
            children: <Widget>[
              // Guthub
              IconButtonwidget(
                icon: gitHubIcon,
                iconButtonColor: light1Color,
                shadowColor: Colors.black,
                iconColor: dark1Color,
                url: yrlpGitHub,
              ),
              SizedBox(width: 20),
              // Dribbble
              IconButtonwidget(
                icon: dribbbleIcon,
                iconButtonColor: light1Color,
                shadowColor: Colors.black,
                iconColor: dark1Color,
                url: yrlpDribbble,
              ),
              SizedBox(width: 20),
              // LinkedIn
              IconButtonwidget(
                icon: linkedinIcon,
                iconButtonColor: light1Color,
                shadowColor: Colors.black,
                iconColor: dark1Color,
                url: yrlpLinkedIn,
              ),
              SizedBox(width: 20),
              // Twitter
              IconButtonwidget(
                icon: twitterIcon,
                iconButtonColor: light1Color,
                shadowColor: Colors.black,
                iconColor: dark1Color,
                url: yrlpTwitter,
              ),
              SizedBox(width: 20),
              // Instagram
              IconButtonwidget(
                icon: instagramIcon,
                iconButtonColor: light1Color,
                shadowColor: Colors.black,
                iconColor: dark1Color,
                url: yrlpInstagram,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
