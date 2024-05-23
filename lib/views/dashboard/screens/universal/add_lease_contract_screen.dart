import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'package:main/views/dashboard/screens/mobile/add_lease_contract_mobile_screen.dart';
import 'package:main/views/dashboard/screens/tablet/add_lease_contract_tablet_screen.dart';

import '../tablet/my_properties_tablet.dart';
import '../web/add_lease_contract_web_screen.dart';


class AddLeaseContractScreen extends StatelessWidget {
  const AddLeaseContractScreen({super.key});

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
   return macOS||windows?AddLeaseContractWeb():isMobile?  AddLeaseContractMobile():AddLeaseContractTablet();
  }
}
