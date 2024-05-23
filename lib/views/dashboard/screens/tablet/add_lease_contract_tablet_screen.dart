import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/device_manger/screen_constants.dart';
import 'package:main/utils/tablet_size_utils.dart';
import 'package:main/views/dashboard/widget/tablet/add_lease_contract_portrait_view.dart';
import 'package:sizing/sizing.dart';

import '../../../../utils/theme/custom_text_style.dart';
import '../../widget/mobile/add_lease_contract_widget.dart';
import '../../widget/tablet/add_lease_contract_widget_tablet.dart';

class AddLeaseContractTablet extends StatelessWidget {
  const AddLeaseContractTablet({super.key});

  @override
  Widget build(BuildContext context) {
    bool? isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        leadingWidth: 200,
        centerTitle: true,
        title: Text(
          'Add Lease Contract',
          style: CustomTextStyles.bold32Tablet,
        ),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              GestureDetector(
                  onTap: () => Get.back(),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        size: getTabletSize(24),
                      ),
                      Text(
                        'Back',
                        style: CustomTextStyles.regular18232323WithOutOpacityTablet,
                      ),
                    ],
                  )),
            ],
          ),
        ),
        backgroundColor: Color(0xFF1E1E1E).withOpacity(0.1),
        elevation: 0,
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        color: const Color(0xFF1E1E1E).withOpacity(0.1),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: ScreenConstant.defaultHeightTwentyThree),
              isLandscape ? AddLeaseContractTabletWidget() :  AddLeaseContractTabletPortraitWidget(),
            ],
          ).marginOnly(left: 20.ss,right: 20.ss,top: 5.ss,bottom: 20.ss),
        ),
      ),
    );
  }
}
