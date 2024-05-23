import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:main/device_manger/screen_constants.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/phone_size_utils.dart';
import 'package:main/views/dashboard/controller/home_controller.dart';
import 'package:main/views/dashboard/widget/mobile/favorite_property_mobile.dart';

import 'package:main/views/dashboard/widget/mobile/tab_widget.dart';
import 'package:main/views/dashboard/widget/tablet/tab_widget_mobile.dart';
import 'package:sizing/sizing.dart';

import '../../../../utils/core/utils/image_constant.dart';
import '../../../../utils/theme/custom_text_style.dart';
import '../../../../utils/widgets_utils/widgets/app_bar/appbar_leading_image.dart';
import '../../../../utils/widgets_utils/widgets/app_bar/appbar_title.dart';
import '../../../../utils/widgets_utils/widgets/app_bar/custom_app_bar.dart';
import '../../../authentication/screens/mobile/widgets/custom_search_view.dart';
import '../../widget/mobile/my_property_widget.dart';

class FavoritesAndSavedFiltersMobile extends StatelessWidget {
  FavoritesAndSavedFiltersMobile({super.key});

  final HomeController _homeController = Get.put(HomeController());
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,

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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Obx(
                                () => GestureDetector(
                                  onTap: () {
                                    _homeController.favotitesSelected.value = true;
                                    _homeController.savedSelected.value = false;
                                  },
                                  child: TabWidgetMobile(
                                    isSelected: _homeController.favotitesSelected.value,
                                    text: 'Favorites List',
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: getSize(15),
                              ),
                              Obx(
                                () => GestureDetector(
                                  onTap: () {
                                    _homeController.favotitesSelected.value = false;
                                    _homeController.savedSelected.value = true;
                                  },
                                  child: TabWidgetMobile(
                                    isSelected: _homeController.savedSelected.value,
                                    text: 'Saved Filters',
                                  ),
                                ),
                              ),
                            ],
                          ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.h),
                child: Container(height: 1.5,color: Color(0xFF50C878),),
              ),
              Container(height: ScreenConstant.defaultHeightTen,),
              ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 22.v);
                },
                scrollDirection: Axis.vertical,
                itemCount: 5,
                itemBuilder: (context, i) {
                  return const FavoritePropertyMobile();
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
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     extendBodyBehindAppBar: true,
  //     appBar: AppBar(
  //       automaticallyImplyLeading: false,
  //       backgroundColor: Color(0xFF1E1E1E).withOpacity(0.1),
  //       elevation: 0,
  //       title: Padding(
  //         padding: EdgeInsets.symmetric(
  //             vertical: getVerticalSize(20), horizontal: getHorizontalSize(10)),
  //         child: SizedBox(
  //           width: double.infinity,
  //           child: Row(
  //             children: [
  //               Expanded(
  //                 child: Container(
  //                   decoration: BoxDecoration(boxShadow: [
  //                     BoxShadow(
  //                       color: Colors.black12,
  //                       offset: Offset(0, 0),
  //                       blurRadius: 5,
  //                     )
  //                   ], borderRadius: BorderRadius.circular(10)),
  //                   child: TextFormField(
  //                     readOnly: true,
  //                     controller: TextEditingController(),
  //                     keyboardType: TextInputType.emailAddress,
  //                     autofocus: false,
  //                     maxLines: 1,
  //                     cursorColor: AppColors.primaryColor,
  //                     textInputAction: TextInputAction.next,
  //                     autovalidateMode: AutovalidateMode.onUserInteraction,
  //                     style: TextStyle(
  //                         color: const Color(0xFF111A24),
  //                         fontSize: 14.fss,
  //                         fontFamily: 'Gordita'),
  //                     decoration: InputDecoration(
  //                       filled: true,
  //                       fillColor: Colors.white,
  //                       hintText: "Search properties",
  //                       hintStyle: TextStyle(
  //                         color: const Color(0xFF6A6A6A),
  //                         fontSize: 12.fss,
  //                       ),
  //                       errorStyle: TextStyle(
  //                           color: const Color(0xFFE8503A),
  //                           fontSize: 12.fss,
  //                           fontFamily: 'Gordita'),
  //                       prefixIcon: Padding(
  //                         padding: EdgeInsets.only(
  //                             left: getHorizontalSize(10),
  //                             right: getHorizontalSize(5)),
  //                         child: Icon(
  //                           Icons.search_rounded,
  //                           //color: Colors.green,
  //                           color: Color(0xFF0A2342),
  //                           size: 16.ss,
  //                         ),
  //                       ),
  //                       suffixIcon: Padding(
  //                         padding:
  //                             EdgeInsets.only(right: getHorizontalSize(10)),
  //                         child: Icon(
  //                           Icons.cancel_outlined,
  //                           //color: Colors.green,
  //                           color: Color(0xFF0A2342),
  //                           size: 16.ss,
  //                         ),
  //                       ),
  //                       contentPadding:
  //                           EdgeInsets.all(ScreenConstant.sizeMedium),
  //                       focusedBorder: OutlineInputBorder(
  //                         borderRadius: BorderRadius.all(Radius.circular(10)),
  //                         borderSide: BorderSide(
  //                             color: AppColors.primaryColor,
  //                             width: 1,
  //                             style: BorderStyle.solid),
  //                       ),
  //                       disabledBorder: OutlineInputBorder(
  //                         borderRadius: BorderRadius.all(Radius.circular(10)),
  //                         borderSide: BorderSide(
  //                             color: Color(0xFFC4C4C4),
  //                             width: 1,
  //                             style: BorderStyle.solid),
  //                       ),
  //                       enabledBorder: OutlineInputBorder(
  //                         borderRadius: BorderRadius.all(Radius.circular(10)),
  //                         borderSide: BorderSide(
  //                             color: Color(0xFFC4C4C4),
  //                             width: 1,
  //                             style: BorderStyle.solid),
  //                       ),
  //                       errorBorder: const OutlineInputBorder(
  //                         borderRadius: BorderRadius.all(Radius.circular(10)),
  //                         borderSide: BorderSide(
  //                             color: Color(0xFFE8503A),
  //                             width: 1,
  //                             style: BorderStyle.solid),
  //                       ),
  //                       focusedErrorBorder: const OutlineInputBorder(
  //                         borderRadius: BorderRadius.all(Radius.circular(10)),
  //                         borderSide: BorderSide(
  //                             color: Color(0xFFE8503A),
  //                             width: 1,
  //                             style: BorderStyle.solid),
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //               Container(
  //                 width: getSize(15),
  //               ),
  //               Container(
  //                 padding: EdgeInsets.symmetric(
  //                     horizontal: getHorizontalSize(8),
  //                     vertical: getVerticalSize(20)),
  //                 decoration: BoxDecoration(
  //                     boxShadow: [
  //                       BoxShadow(
  //                         color: Colors.black12,
  //                         offset: Offset(0, 0),
  //                         blurRadius: 5,
  //                       )
  //                     ],
  //                     color: Colors.white,
  //                     borderRadius: BorderRadius.circular(10)),
  //                 child: Image.asset(
  //                   "asset/icons/tablet/sliders.png",
  //                   height: getSize(20),
  //                   color: AppColors.primaryColor,
  //                 ),
  //                 //child: Image.asset("asset/icons/tablet/sliders.png",height: 15.ss,),
  //               )
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //     body: SafeArea(
  //       child: Container(
  //         decoration: BoxDecoration(color: Color(0xFF1E1E1E).withOpacity(0.1)),
  //         padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(20)),
  //         child: ListView(
  //           children: [
  //             SizedBox(height: getSize(30)),
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 Obx(
  //                   () => GestureDetector(
  //                     onTap: () {
  //                       _homeController.favotitesSelected.value = true;
  //                       _homeController.savedSelected.value = false;
  //                     },
  //                     child: TabWidgetMobile(
  //                       isSelected: _homeController.favotitesSelected.value,
  //                       text: 'Favorites List',
  //                     ),
  //                   ),
  //                 ),
  //                 SizedBox(
  //                   width: getSize(15),
  //                 ),
  //                 Obx(
  //                   () => GestureDetector(
  //                     onTap: () {
  //                       _homeController.favotitesSelected.value = false;
  //                       _homeController.savedSelected.value = true;
  //                     },
  //                     child: TabWidgetMobile(
  //                       isSelected: _homeController.savedSelected.value,
  //                       text: 'Saved Filters',
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //             SizedBox(
  //               height: getSize(20),
  //             ),
  //             (_homeController.favotitesSelected.value == true)
  //                 ? ListView.separated(
  //                     physics: ClampingScrollPhysics(),
  //                     shrinkWrap: true,
  //                     scrollDirection: Axis.vertical,
  //                     itemCount: 6,
  //                     itemBuilder: (context, i) {
  //                       return FavoritePropertyMobile();
  //                     },
  //                     separatorBuilder: (BuildContext context, int index) {
  //                       return SizedBox(
  //                         height: getSize(20),
  //                       );
  //                     },
  //                   )
  //                 : ListView.separated(
  //                     physics: ClampingScrollPhysics(),
  //                     shrinkWrap: true,
  //                     scrollDirection: Axis.vertical,
  //                     itemCount: 6,
  //                     itemBuilder: (context, i) {
  //                       return FavoritePropertyMobile();
  //                     },
  //                     separatorBuilder: (BuildContext context, int index) {
  //                       return SizedBox(
  //                         height: 20.ss,
  //                       );
  //                     },
  //                   )
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
