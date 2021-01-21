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
            ProjectCardsBigWidget(
              image: foxholeCover,
              title: foxholeArtillery,
              platforms: android + ', ' + iOS + ', ' + windows,
              url: foxholeRepo,
            ),
            SizedBox(height: 20),
            ProjectCardsBigWidget(
              image: xtraderCover,
              title: xTrader,
              platforms: android + ', ' + iOS,
              url: xTraderRepo,
            ),
            SizedBox(height: 20),
            ProjectCardsBigWidget(
              image: quizAppCoverMin,
              title: quizApp,
              platforms: android + ', ' + iOS,
              url: quizAppRepo,
            ),
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
            url: yrlpProjects,
          ),
        ),
      ],
    );
  }
}
