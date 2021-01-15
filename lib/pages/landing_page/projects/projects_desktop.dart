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

class ProjectsDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //* Title
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // Line
            Container(
              height: 3,
              width: 40,
              color: light1Color,
            ),
            SizedBox(width: 10),
            // Text
            SelectableText(
              myProjects,
              style: display3LightLightEnStyle,
            ),
          ],
        ),
        SizedBox(height: 85),
        //* Projects
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ProjectCardsSmallWidget(image: landingPageBackground),
            ProjectCardsBigWidget(
              image: foxholeCover,
              title: foxholeArtillery,
              platforms: android + ', ' + iOS + ', ' + windows,
            ),
            ProjectCardsSmallWidget(image: xtraderCover),
          ],
        ),
        SizedBox(height: 100),
        //* Button
        Align(
          alignment: Alignment.bottomRight,
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
