import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';

import '../../theme/colors.dart';
import '../../theme/icons.dart';
import '../../theme/text_style.dart';

class DrawerItems extends StatelessWidget {
  final String title;
  final Function onTap;

  const DrawerItems({
    Key key,
    @required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //* Title
              SelectableText(
                title,
                style: bodyMediumRegularLightEnStyle,
              ),
              //* Icon
              Container(
                child: SvgPicture.asset(
                  arrowRightIcon,
                  color: light1Color,
                ),
              )
            ],
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
