import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/strings.dart';
import '../../theme/text_style.dart';

class FooterWidgetMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, bottom: 60),
      color: dark1Color,
      child: Column(
        children: <Widget>[
          //* Divider
          Divider(
            color: light2Color,
            indent: 36,
            endIndent: 36,
          ),
          //* Copyright
          SizedBox(height: 37),
          SelectableText(
            copyRight,
            style: bodySmallRegularLightEnStyle,
          ),
        ],
      ),
    );
  }
}
