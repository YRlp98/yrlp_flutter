import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';

import '../../theme/text_style.dart';

class LargeButton extends StatelessWidget {
  final Color buttonColor, shadowColor;
  final String text, icon;
  final Function onTap;

  const LargeButton({
    Key key,
    @required this.buttonColor,
    @required this.shadowColor,
    @required this.text,
    @required this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Container(
          height: 50,
          width: 170,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: shadowColor.withOpacity(0.15),
                spreadRadius: 15,
                blurRadius: 45,
                offset: Offset(0, 4),
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                text,
                style: miniParagraphRegularLightEnStyle,
              ),
              SizedBox(width: 5),
              Container(
                height: 13.5,
                width: 13.5,
                child: SvgPicture.asset(icon),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
