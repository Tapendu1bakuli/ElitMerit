import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/core/utils/image_constant.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:main/utils/widgets_utils/widgets/app_bar/appbar_leading_image.dart';
import 'package:main/utils/widgets_utils/widgets/app_bar/custom_app_bar.dart';
import 'package:main/views/authentication/screens/mobile/widgets/custom_search_view.dart';
import 'package:main/views/dashboard/screens/mobile/widgets/app_bar/appbar_title.dart';
import 'package:main/views/dashboard/widget/mobile/my_property_widget.dart';
import 'package:sizing/sizing.dart';


class MyPropertiesScreenMobile extends StatelessWidget {
   MyPropertiesScreenMobile({Key? key}) : super(key: key);


  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(context),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(color: Color(0xFFF5F5F5)),
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.v),
          child: ListView(
              children: [

                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child:
                        CustomSearchView(readOnly: true,
                            controller: searchController, hintText: "Search properties",textStyle: CustomTextStyles.medium12TextStyleMobile,)),
                    Container(
                      height: 43.v,
                      width: 38.h,
                      margin: EdgeInsets.only(left: 16.h),
                      padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 9.v),

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        "asset/icons/tablet/sliders.png",
                         height: 15.ss,
                        color: AppColors.primaryColor,
                      ),
                      //child: Image.asset("asset/icons/tablet/sliders.png",height: 15.ss,),
                    )
                  ],
                ),
                SizedBox(height: 22.v),
                ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 22.v);
                  },
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemBuilder: (context, i) {
                    return const MyPropertyCardWidgetMobile();
                  },

                )
              ],
            ),

        ),
      ),
    );
  }


  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
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
