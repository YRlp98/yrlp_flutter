import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/text_style.dart';

class SecondarySkillCardWidget extends StatelessWidget {
  final String line1, line2, line3;

  const SecondarySkillCardWidget({
    Key key,
    @required this.line1,
    @required this.line2,
    @required this.line3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      height: 355,
      width: 355,
      decoration: BoxDecoration(
        color: dark1Color,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 15,
            blurRadius: 45,
            offset: Offset(0, 10),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //* Line 1
          SelectableText(
            line1,
            style: leadParagraphRegularLightEnStyle,
          ),
          SizedBox(height: 10),
          //* Line 2
          SelectableText(
            line2,
            style: bodyMediumRegularLightEnStyle,
          ),
          SizedBox(height: 10),
          //* Line 3
          SelectableText(
            line3,
            style: bodySmallRegularLightEnStyle,
          ),
        ],
      ),
    );
  }
}
