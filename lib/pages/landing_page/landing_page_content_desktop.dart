import 'package:flutter/material.dart';
import 'landing_page_quick_intro.dart';

class LandingPageContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 300),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 160),
            child: LandingPageQuickIntro(),
          ),
        ],
      ),
    );
  }
}
