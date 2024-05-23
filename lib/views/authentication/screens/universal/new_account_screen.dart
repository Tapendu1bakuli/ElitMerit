import 'package:flutter/material.dart';
import 'package:main/views/authentication/screens/mobile/new_account_Screen_mobile.dart';
import 'package:main/views/authentication/screens/tablet/new_account_screen_tablet.dart';
import 'package:main/views/authentication/screens/web/new_account_screen_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../main.dart';
import '../../../dashboard/screens/tablet/my_properties_tablet.dart';

class NewAccountScreen extends StatelessWidget {
  const NewAccountScreen({Key? key}) : super(key: key);

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
    return macOS || windows?NewAccountScreenWeb():isMobile ?
    NewAccountScreenMobile():NewAccountScreenTablet();
  }
}
