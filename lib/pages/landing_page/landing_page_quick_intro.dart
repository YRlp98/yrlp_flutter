import 'package:flutter/material.dart';
import '../../theme/colors.dart';
import '../../theme/strings.dart';
import '../../theme/text_style.dart';

class LandingPageQuickIntro extends StatelessWidget {
  const LandingPageQuickIntro({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        //* Large Text
        SelectableText(
          imYousef,
          style: extraLargeParagraphRegularLightEnStyle,
        ),
        //* Medium Texts
        Row(
          children: <Widget>[
            // Green line
            Container(
              width: 5,
              height: 50,
              color: mainColor,
            ),
            SizedBox(
              width: 10,
              height: 10,
            ),
            // texts
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SelectableText(
                  aMobileDeveloper,
                  style: bodyLargeRegularLightEnStyle,
                ),
                SelectableText(
                  andUIUXDesigner,
                  style: bodyLargeRegularLightEnStyle,
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 300),
        // Scroll down
        SelectableText(
          scrollDown,
          style: smallParagraphRegularLightEnStyle,
        ),
        // Read more
        SelectableText(
          readMore,
          style: bodyNormalRegularLightEnStyle,
        ),
      ],
    );
  }
}
