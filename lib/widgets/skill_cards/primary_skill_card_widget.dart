import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme/colors.dart';
import '../../theme/strings.dart';
import '../../theme/text_style.dart';

class PrimarySkillCardWidget extends StatelessWidget {
  final String icon, title, yearsOfexperience, numberOfProjects;

  const PrimarySkillCardWidget({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.yearsOfexperience,
    @required this.numberOfProjects,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        children: <Widget>[
          Spacer(),
          SizedBox(height: 60),
          //* Title
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // icon
              Container(
                height: 40,
                child: SvgPicture.asset(icon),
              ),
              SizedBox(width: 5),
              // title
              SelectableText(
                title,
                style: largeParagraph2RegularLightEnStyle,
              ),
            ],
          ),
          Spacer(),
          //* Description
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Expreince
                  SelectableText(
                    yearsOfexperience + ' ' + yearsOfExperience,
                    style: display4LightLightEnStyle,
                  ),
                  SizedBox(height: 2),
                  // Projects
                  SelectableText(
                    numberOfProjects + ' ' + projects,
                    style: display4LightLightEnStyle,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
