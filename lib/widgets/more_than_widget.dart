import 'package:flutter/material.dart';

import '../theme/strings.dart';
import '../theme/text_style.dart';

class MoreThanWidget extends StatelessWidget {
  final String number, text;

  const MoreThanWidget({
    Key key,
    @required this.number,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SelectableText(
          moreThan,
          style: largeParagraph3RegularLightEnStyle,
        ),
        Row(
          children: <Widget>[
            // Number
            SelectableText(
              number,
              style: ultraLargeParagraphBoldGreenEnStyle,
            ),
            // Text
            SelectableText(
              text,
              style: halfLargeParagraphRegularLightEnStyle,
            ),
          ],
        ),
      ],
    );
  }
}
