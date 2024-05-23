import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'package:main/views/dashboard/screens/mobile/account_settings_mobile_scrren.dart';
import 'package:main/views/dashboard/screens/tablet/account_settings_tablet_screen.dart';
import 'package:main/views/dashboard/screens/web/account_settings_web_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../tablet/my_properties_tablet.dart';
class AccountSettingsScreen extends StatelessWidget {
  const AccountSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = true;
    if (ResponsiveUtils.isMobile(context)) {
      isMobile = true;
    } else if (ResponsiveUtils.isDesktop(context)) {
      isMobile = false;
    }
    else if (ResponsiveUtils.isTablet(context)) {
      isMobile = false;
    }
    return macOS || windows?AccountSettingsWebScreen():isMobile?
    AccountSettingsMobileScreen():AccountSettingsTabletScreen();
  }
}
