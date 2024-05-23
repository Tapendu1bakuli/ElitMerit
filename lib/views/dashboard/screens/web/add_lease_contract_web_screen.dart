import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:main/device_manger/screen_constants.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/tablet_size_utils.dart';
import 'package:main/utils/widows_size_utilis.dart';
import 'package:main/views/dashboard/widget/web/add_lease_contract_widget_web.dart';
import 'package:sizing/sizing.dart';
import '../../../../utils/theme/custom_text_style.dart';

class AddLeaseContractWeb extends StatelessWidget {
  const AddLeaseContractWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:     AppBar(
        scrolledUnderElevation: 0.0,
        leadingWidth: getWebSize(150),
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
                        size: getWebSize(24),
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
        backgroundColor: AppColors.webBgColor,
        elevation: 0,
      ),
      extendBodyBehindAppBar: false,
      body: Container(
        width: Get.width,
        height: Get.height,
        color: AppColors.webBgColor,
        child: Center(
          child: Container(
            width: 800.ss,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                        SizedBox(height: ScreenConstant.defaultHeightTwentyThree),
                  AddLeaseContractWebWidget(),
                ],
              ).marginOnly(left: 20.ss,right: 20.ss,top: 5.ss,bottom: 20.ss),
            ),
          ),
        ),
      ),
    );
  }
}
