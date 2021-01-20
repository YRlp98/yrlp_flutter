import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/strings.dart';
import '../../../theme/text_style.dart';
import '../../../widgets/more_than_widget.dart';

class AboutMeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        //* Title
        // Title
        SelectableText(
          aboutMe,
          style: bodyLargeRegularGreenEnStyle,
        ),
        // under line
        Container(
          margin: const EdgeInsets.only(top: 1),
          width: 50,
          height: 2,
          color: mainColor,
        ),
        //* Body
        SizedBox(height: 40),
        aboutMeBody(),
      ],
    );
  }

  Column aboutMeBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        //* Description
        SelectableText(
          aboutMeDescription,
          style: bodyNormalRegularLightEnStyle,
        ),
        SizedBox(height: 50),
        //* Experience
        MoreThanWidget(
          number: '6',
          text: yearsOfExperienceMultiline,
        ),
        //* Satisfied Clients
        MoreThanWidget(
          number: '30',
          text: satisfiedClientsMultiline,
        ),
      ],
    );
  }
}
