import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../theme/colors.dart';
import '../../theme/images.dart';
import '../../widgets/app_bar/app_bar_widget.dart';
import 'landing_page_content_desktop.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: dark1Color,
        body: Container(
          //* Background image
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(landingPageBackground),
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),
          // TODO: CenteredWidget
          child: Column(
            children: <Widget>[
              //* Appbar
              AppBarWidget(),
              //* Body
              Expanded(
                child: SingleChildScrollView(
                  child: ScreenTypeLayout(
                    desktop: LandingPageContentDesktop(),
                    mobile: Container(color: darkerColor),
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
