import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../theme/images.dart';

class AppBarLogo extends StatelessWidget {
  final Function onTap;

  const AppBarLogo({Key key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Container(
          height: 30,
          width: 120,
          child: SvgPicture.asset(logo),
        ),
        onTap: onTap,
      ),
    );
  }
}
