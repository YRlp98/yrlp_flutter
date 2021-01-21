import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/strings.dart';
import 'drawer_items.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      decoration: BoxDecoration(color: dark1Color, boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 16,
        ),
      ]),
      child: Column(
        children: <Widget>[
          Spacer(),
          //* Home
          DrawerItems(
            title: home,
          ),
          //* Blog
          DrawerItems(
            title: blog,
            url: virgooYRlp98URL,
          ),
          //* Contact me
          DrawerItems(
            title: contactMe,
            url: mailToYousef,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
