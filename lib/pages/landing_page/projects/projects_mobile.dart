import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../theme/colors.dart';
import '../../../theme/icons.dart';
import '../../../theme/images.dart';
import '../../../theme/strings.dart';
import '../../../theme/text_style.dart';
import '../../../widgets/buttons/large_button_widget.dart';
import '../../../widgets/projects_cards/project_cards_big_widget.dart';
import '../../../widgets/projects_cards/project_cards_small_widget.dart';

class ProjectsMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //* Title
        SelectableText(
          myProjects + '.',
          style: halfLargeParagraphRegularLightEnStyle,
        ),
        SizedBox(height: 85),
        //* Projects
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ProjectCardsSmallWidget(image: landingPageBackground),
            SizedBox(height: 20),
            ProjectCardsBigWidget(
              image: foxholeCover,
              title: foxholeArtillery,
              platforms: android + ', ' + iOS + ', ' + windows,
            ),
            SizedBox(height: 20),
            ProjectCardsSmallWidget(image: xtraderCover),
          ],
        ),
        SizedBox(height: 100),
        //* Button
        Align(
          alignment: Alignment.center,
          child: LargeButton(
            buttonColor: mainColor,
            shadowColor: mainColor,
            text: allProjects,
            icon: rightIcon,
          ),
        ),
      ],
    );
  }
}
