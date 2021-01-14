import 'package:flutter/material.dart';
import '../../../theme/icons.dart';
import '../../../theme/strings.dart';
import '../../../widgets/cards/primary_skill_card_widget.dart';
import '../../../widgets/cards/secondary_skill_card_widget.dart';

class SkillsDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        // Flutter
        PrimarySkillCardWidget(
          icon: flutterLogo,
          title: 'Flutter',
          yearsOfexperience: '2',
          numberOfProjects: '14',
        ),
        // UI/UX
        PrimarySkillCardWidget(
          icon: penIcon,
          title: 'UI/UX Design',
          yearsOfexperience: '4',
          numberOfProjects: '20',
        ),
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
