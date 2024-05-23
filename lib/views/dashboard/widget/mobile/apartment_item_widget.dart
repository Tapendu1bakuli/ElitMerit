import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/core/utils/image_constant.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/theme/app_decoration.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:main/utils/widgets_utils/widgets/custom_image_view.dart';
import 'package:main/views/dashboard/controller/home_controller.dart';
import 'package:sizing/sizing.dart';

// ignore: must_be_immutable
class ApartmentItemWidget extends StatelessWidget {
 final String title;
 final String image;
 final int index;
   ApartmentItemWidget({Key? key, required this.title, required this.image, required this.index}): super(key: key,);
 final HomeController _homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Obx(
            () => Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          CustomImageView(
            imagePath: image,
            height: 30.ss,
            width: 40.ss,
          fit: BoxFit.contain,
          color: _homeController.selectedIndex.value == index ? AppColors.whiteColor: AppColors.primaryColor,
          ),
          SizedBox(height: 14.v),
          Expanded(
            child: Text(
             title,
              style: CustomTextStyles.titleMediumOnErrorContainer_1.copyWith(

                color: _homeController.selectedIndex.value == index ? AppColors.whiteColor: AppColors.blackColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
