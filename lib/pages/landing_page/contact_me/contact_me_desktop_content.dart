import 'package:flutter/material.dart';
import '../../../theme/colors.dart';
import '../../../theme/images.dart';

import 'contact_me_contact_me.dart';
import 'contact_me_social_media_content.dart';

class ContactMeDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: dark2Color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          bottomLeft: Radius.circular(5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //* Social media
              SocialMediaContent(),
              //* Contact me
              ContactMeContent(),
            ],
          ),
          //* Image
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: const EdgeInsets.only(
                right: 270,
                bottom: 50,
                top: 50,
              ),
              child: Image.asset(il3DContactMin),
            ),
          ),
        ],
      ),
    );
  }
}
