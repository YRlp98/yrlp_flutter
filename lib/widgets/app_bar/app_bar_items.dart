import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../theme/text_style.dart';

class AppBarItems extends StatelessWidget {
  final String title;
  final Function onTap;

  const AppBarItems({
    Key key,
    @required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Text(
          title,
          style: bodyNormalRegularLightEnStyle,
        ),
        onTap: onTap,
      ),
    );
  }
}
