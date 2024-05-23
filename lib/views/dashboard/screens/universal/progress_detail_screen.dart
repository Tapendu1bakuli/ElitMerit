import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'package:main/views/dashboard/screens/mobile/progress_detail_mobile_screen.dart';
import 'package:main/views/dashboard/screens/tablet/progress_detail_tablet_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../tablet/my_properties_tablet.dart';
import '../web/progress_detail_web_screen.dart';

class ProgressDetailScreen extends StatelessWidget {
  const ProgressDetailScreen({Key? key}) : super(key: key);

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
    return macOS || windows ? ProgressDetailWeb() :isMobile ? const ProgressDetailMobile(): ProgressDetailTablet();
  }
}
