import 'package:flutter/material.dart';
import 'package:main/views/dashboard/screens/mobile/current_deals_in_progress_mobile_screen.dart';
import 'package:main/views/dashboard/screens/tablet/current_deals_in_progress_tablet_screen.dart';
import 'package:main/views/dashboard/screens/web/current_deals_in_progress_web_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../main.dart';
import '../../../transaction/screens/tablet/transaction_history_screen_tablet.dart';
import '../tablet/my_properties_tablet.dart';
class CurrentDealsInProgress extends StatelessWidget {
  const CurrentDealsInProgress({Key? key}) : super(key: key);


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
    //return TransactionHistoryScreenTablet();
     return macOS||windows?CurrentDealsInProgressWebScreen(isTabletScreen: true):isMobile ? CurrentDealsInProgressMobileScreen() : CurrentDealsInProgressTabletScreen(isTabletScreen:true);


    // mobile: (BuildContext context) => CurrentDealsInProgressMobileScreen(),
    // tablet:  (BuildContext context) =>  CurrentDealsInProgressTabletScreen(),
  }
}
