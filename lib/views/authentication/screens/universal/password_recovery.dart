import 'package:flutter/material.dart';
import 'package:main/views/authentication/screens/mobile/forgot_password_screen.dart';
import 'package:main/views/authentication/screens/tablet/password_recovery_screen_tablet.dart';
import 'package:main/views/authentication/screens/web/password_recovery_screen_web.dart';
import '../../../../main.dart';
import '../../../dashboard/screens/tablet/my_properties_tablet.dart';

class PasswordRecoveryScreen extends StatelessWidget {
  const PasswordRecoveryScreen({Key? key}) : super(key: key);

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
   return macOS || windows?PasswordRecoveryScreenWeb():isMobile ?
   ForgotPasswordScreenMobile():PasswordRecoveryScreenTablet();
  }
}
