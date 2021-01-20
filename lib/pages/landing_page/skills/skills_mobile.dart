import 'package:flutter/material.dart';

import '../../../theme/icons.dart';
import '../../../theme/strings.dart';
import '../../../widgets/skill_cards/primary_skill_card_widget.dart';
import '../../../widgets/skill_cards/secondary_skill_card_widget.dart';

class SkillsMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        // Flutter
        PrimarySkillCardWidget(
          icon: flutterLogo,
          title: 'Flutter',
          yearsOfexperience: '2',
          numberOfProjects: '14',
        ),
        SizedBox(height: 50),
        // UI/UX
        PrimarySkillCardWidget(
          icon: penIcon,
          title: 'UI/UX Design',
          yearsOfexperience: '4',
          numberOfProjects: '20',
        ),
        SizedBox(height: 50),
        // Other
        SecondarySkillCardWidget(
          line1: skillsLine1,
          line2: skillsLine2,
          line3: skillsLine3,
        ),
      ],
    );
  }
}
