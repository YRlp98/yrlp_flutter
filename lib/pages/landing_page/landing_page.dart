import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../theme/colors.dart';
import '../../theme/images.dart';
import '../../widgets/app_bar/app_bar_widget.dart';
import '../../widgets/drawer/drawer_widget.dart';
import 'landing_page_content_desktop.dart';
import 'landing_page_content_mobile.dart';

class LandingPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ResponsiveBuilder(builder: (context, sizeInformation) {
        return Scaffold(
          key: _scaffoldKey,
          backgroundColor: dark1Color,
          drawer: sizeInformation.deviceScreenType == DeviceScreenType.mobile
              ? DrawerWidget()
              : null,
          body: Container(
            //* Background image
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(landingPageBackground),
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      //* Appbar
                      AppBarWidget(),
                      //* Body
                      ScreenTypeLayout(
                        desktop: LandingPageContentDesktop(),
                        mobile: LandingPageContentMobile(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
