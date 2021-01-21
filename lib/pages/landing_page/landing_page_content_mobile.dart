import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../widgets/footer/footer_widget_mobile.dart';
import 'about_me/about_me_mobile.dart';
import 'contact_me/contact_me_desktop_mobile.dart';
import 'projects/projects_mobile.dart';
import 'quick_intro/quick_intro_mobile.dart';
import 'skills/skills_mobile.dart';

class LandingPageContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 75),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          //* Quick intro
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: QuickIntroMobile(),
          ),
          SizedBox(height: 120),
          //* About me
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            width: MediaQuery.of(context).size.width, // To fit the width
            color: dark1Color,
            child: AboutMeMobile(),
          ),
          //* Skills
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 110),
            width: MediaQuery.of(context).size.width, // To fit the width
            color: dark1Color,
            child: SkillsMobile(),
          ),
          //* Projects
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 140),
            width: MediaQuery.of(context).size.width, // To fit the width
            color: dark1Color,
            child: ProjectsMobile(),
          ),
          //* Contact me
          Container(
            padding: const EdgeInsets.symmetric(vertical: 110),
            width: MediaQuery.of(context).size.width, // To fit the width
            color: dark1Color,
            child: ContactMeMobile(),
          ),
          //* Footer
          Container(
            width: MediaQuery.of(context).size.width, // To fit the width
            color: dark1Color,
            child: FooterWidgetMobile(),
          ),
        ],
      ),
    );
  }
}
