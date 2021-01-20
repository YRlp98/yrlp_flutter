import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/images.dart';
import 'contact_me_contact_me.dart';
import 'contact_me_social_media_content.dart';

class ContactMeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: dark2Color,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //* Social media
              SocialMediaContent(),
              //* Contact me
              ContactMeContent(),
            ],
          ),
          //* Image
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: const EdgeInsets.all(50),
              child: Image.asset(il3DContactMin),
            ),
          ),
        ],
      ),
    );
  }
}
