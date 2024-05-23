import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'package:main/views/dashboard/screens/mobile/add_apartment_mobile_screen.dart';
import 'package:main/views/dashboard/screens/tablet/add_apartment_tablet_screen.dart';
import 'package:main/views/dashboard/screens/web/add_property_web_screen.dart';

import '../tablet/my_properties_tablet.dart';
class AddApartmentScreen extends StatelessWidget {
  const AddApartmentScreen({Key? key}) : super(key: key);

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
    return macOS||windows?AddPropertyWebScreen():isMobile?AddApartmentMobileScreen():AddApartmentTabletScreen();
  }
}
