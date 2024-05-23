import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'package:main/views/dashboard/screens/mobile/property_detail_mobile_screen.dart';
import 'package:main/views/dashboard/screens/tablet/property_detail_tablet_screen.dart';
import '../tablet/my_properties_tablet.dart';
import '../web/property_details_screen_web.dart';

class PropertyDetailScreen extends StatelessWidget {
  const PropertyDetailScreen({Key? key}) : super(key: key);

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
    return macOS||windows?PropertyDetailWeb():isMobile?const PropertyDetailMobile():PropertyDetailTablet();
  }
}
