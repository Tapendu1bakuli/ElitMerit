import 'package:flutter/material.dart';
import 'package:main/main.dart';

import 'package:main/views/authentication/screens/mobile/multi_method_login_screen_ui_screen.dart';
import 'package:main/views/authentication/screens/tablet/login_screen_tablet.dart';
import 'package:main/views/authentication/screens/web/login_screen_web.dart';

import '../../../dashboard/screens/tablet/my_properties_tablet.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
    return macOS || windows?LoginScreenWeb():isMobile ?
           MultiMethodLoginScreenUiScreen():LoginScreenTablet();
  }
}
