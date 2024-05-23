import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:main/views/dashboard/widget/mobile/add_lease_contract_widget.dart';
import 'package:sizing/sizing_extension.dart';

import '../../../../utils/core/utils/image_constant.dart';
import '../../../../utils/widgets_utils/widgets/app_bar/appbar_leading_image.dart';
import '../../../../utils/widgets_utils/widgets/app_bar/appbar_title.dart';
import '../../../../utils/widgets_utils/widgets/app_bar/custom_app_bar.dart';

class AddLeaseContractMobile extends StatelessWidget {
  const AddLeaseContractMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Container(
        width: Get.width,
        height: Get.height,
        color: const Color(0xFF1E1E1E).withOpacity(0.1),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Add Lease Contract',
                style: CustomTextStyles.bold24FssMobile,
              ),
              SizedBox(height: 20.ss,),
              AddLeaseContractWidget(),
            ],
          ).marginOnly(left: 20.ss,right: 20.ss,top: 5.ss,bottom: 20.ss),
        ),
      ),
    );
  }
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      appBarColor: const Color(0xFF1E1E1E).withOpacity(0.1),
        leadingWidth: 36.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,

            margin: EdgeInsets.only(left: 12.h, top: 16.v, bottom: 15.v),
            onTap: () {
              Get.back();
            }),
        title:
        AppbarTitle(text: "Back    ", margin: EdgeInsets.only(left: 4.h)));
  }
}
