import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/strings.dart';
import '../theme/text_style.dart';

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 180, bottom: 50),
      color: dark1Color,
      child: Column(
        children: <Widget>[
          //* Divider
          Divider(
            color: light2Color,
            indent: 460,
            endIndent: 460,
          ),
          //* Copyright
          SizedBox(height: 100),
          SelectableText(
            copyRight,
            style: bodySmallRegularLightEnStyle,
          ),
        ],
      ),
    );
  }
}
