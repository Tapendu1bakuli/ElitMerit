import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'package:main/views/dashboard/screens/mobile/financial_overview_mobile_screen.dart';
import 'package:main/views/dashboard/screens/tablet/financial_overview_tablet_screen.dart';

import '../tablet/my_properties_tablet.dart';
import '../web/financial_overview_web_screen.dart';

class FinancialOverviewScreen extends StatelessWidget {
  const FinancialOverviewScreen({super.key});

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
    return   macOS || windows ? FinancialOverviewWebScreen() : isMobile? FinancialOverviewMobileScreen():FinancialOverviewTabletScreen();
  }
}
