import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../theme/colors.dart';
import '../widgets/app_bar/app_bar_widget.dart';
import '../widgets/centered_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: dark1Color,
        body: CenteredWidget(
          child: Column(
            children: <Widget>[
              //* Appbar
              AppBarWidget(),
              //* Body
              Expanded(
                child: ScreenTypeLayout(
                  desktop: Container(
                    // color: mainColor,
                  ),
                  mobile: Container(
                    color: darkerColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
