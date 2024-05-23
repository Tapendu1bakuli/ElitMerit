import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'package:main/views/dashboard/screens/tablet/my_properties_tablet.dart';
import 'package:main/views/transaction/screens/mobile/transaction_history_screen_mobile.dart';
import 'package:main/views/transaction/screens/tablet/transaction_history_screen_tablet.dart';
import 'package:main/views/transaction/screens/web/transaction_history_screen_web.dart';

class TransactionHistoryScreen extends StatelessWidget {
  const TransactionHistoryScreen({super.key});

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
   return macOS || windows ? const TransactionHistoryScreenWeb() :
   isMobile ? const TransactionHistoryScreenMobile() : TransactionHistoryScreenTablet();





  }
}



