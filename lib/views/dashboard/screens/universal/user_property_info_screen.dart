import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'package:main/views/dashboard/screens/mobile/user_property_info_mobile_screen.dart';
import 'package:main/views/dashboard/screens/tablet/user_property_info_tablet_screen.dart';
import 'package:main/views/transaction/widget/tablet/transaction_widget_tablet.dart';

import '../tablet/my_properties_tablet.dart';
import '../web/user_property_info_web_screen.dart';


class UserPropertyInfoScreen extends StatelessWidget {
  const UserPropertyInfoScreen({super.key});

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
    return macOS || windows?
     UserPropertyInfoWebScreen():
    isMobile?  const UserPropertyInfoMobileScreen():const UserPropertyInfoTablet();
  }
}