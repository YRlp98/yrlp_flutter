import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme/icons.dart';
import 'app_bar_logo.dart';

class AppBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //* Icon button
          IconButton(
            icon: SvgPicture.asset(drawerIcon),
            onPressed: () {},
          ),
          //* Logo
          AppBarLogo(),
        ],
      ),
    );
  }
}
