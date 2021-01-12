import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'app_bar_desktop.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: AppBarDesktop(),
      tablet: AppBarDesktop(),
      mobile: AppBarDesktop(),
    );
  }
}