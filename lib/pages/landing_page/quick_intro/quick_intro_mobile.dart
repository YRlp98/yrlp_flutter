import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/images.dart';
import '../../../theme/strings.dart';
import '../../../theme/text_style.dart';

class QuickIntroMobile extends StatelessWidget {
  const QuickIntroMobile({
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
          style: heading3BoldLightEnStyle,
        ),
        //* Medium Texts
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Green line
            Container(
              width: 2,
              height: 55,
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
                  style: bodyNormalRegularLightEnStyle,
                ),
                SelectableText(
                  andUIUXDesigner,
                  style: bodyNormalRegularLightEnStyle,
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 50),
        //* 3D Illustration
        Container(
          padding: const EdgeInsets.all(20),
          child: Image.asset(quickYou3DMin),
        ),
        //* Scroll
        Align(
          alignment: Alignment.centerRight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
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
          ),
        ),
      ],
    );
  }
}
