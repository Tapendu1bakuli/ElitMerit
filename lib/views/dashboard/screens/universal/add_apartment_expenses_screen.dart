import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'package:main/views/dashboard/screens/mobile/add_apartment_expenses_mobile_Screen.dart';
import 'package:main/views/dashboard/screens/tablet/add_apartment_expenses_tablet_screen.dart';
import 'package:main/views/dashboard/screens/web/add_apartment_expenses_web_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../tablet/my_properties_tablet.dart';

class AddExpensesScreen extends StatelessWidget {
  const AddExpensesScreen({Key? key}) : super(key: key);

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
    return macOS || windows?AddApartmentExpensesWebScreen():isMobile ?  AddExpensesScreenMobile():AddExpensesScreenTablet();
  }
}
