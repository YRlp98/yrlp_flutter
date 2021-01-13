import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import 'about_me/about_me_desktop.dart';
import 'quick_intro/quick_intro_desktop.dart';

class LandingPageContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 300),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //* Quick intro
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 160),
            child: QuickIntroDesktop(),
          ),
          SizedBox(height: 120),
          //* About me
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 320, vertical: 120),
            width: MediaQuery.of(context).size.width, // To fit the width
            color: dark1Color,
            child: AboutMeDesktop(),
          ),
        ],
      ),
    );
  }
}
