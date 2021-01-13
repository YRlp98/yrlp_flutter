import 'package:flutter/material.dart';
import '../../theme/strings.dart';
import 'app_bar_items.dart';
import 'app_bar_logo.dart';

class AppBarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.only(top: 15, left: 160, right: 160),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //* Logo
          AppBarLogo(),
          //* Items
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              // Home
              AppBarItems(
                title: home,
                onTap: () {},
              ),
              SizedBox(width: 40),
              // Blog
              AppBarItems(
                title: blog,
                onTap: () {},
              ),
              SizedBox(width: 40),
              // Contact me
              AppBarItems(
                title: contactMe,
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
