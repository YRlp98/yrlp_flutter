import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/icons.dart';
import '../../../theme/strings.dart';
import '../../../theme/text_style.dart';
import '../../../widgets/tile/tile_widget.dart';

class ContactMeContent extends StatelessWidget {
  const ContactMeContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 40, top: 85),
      child: Row(
        children: [
          //* Title
          RotatedBox(
            quarterTurns: -1,
            child: SelectableText(
              contactMeBold,
              style: heading2BoldLightEnStyle,
            ),
          ),
          SizedBox(width: 30),
          //* Tile
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Email
              TileWidget(
                icon: emailIcon,
                iconColor: light1Color,
                title: email,
                subTitle: yousefEmail,
                onTap: () {},
              ),
              SizedBox(height: 30),
              // Skype
              TileWidget(
                icon: skypeIcon,
                iconColor: light1Color,
                title: skype,
                subTitle: yousefSkype,
                onTap: () {},
              ),
              SizedBox(height: 30),
              // Discord
              TileWidget(
                icon: discordIcon,
                iconColor: light1Color,
                title: discord,
                subTitle: yousefDiscord,
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
