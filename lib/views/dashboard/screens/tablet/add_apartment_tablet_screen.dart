import 'dart:io';

import 'package:camera/camera.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/device_manger/screen_constants.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:sizing/sizing.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../../utils/asset_utilis/asset_tablet_utilis.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/core/utils/image_constant.dart';
import '../../../../utils/phone_size_utils.dart';
import '../../../../utils/tablet_size_utils.dart';
import '../../../../utils/theme/app_decoration.dart';
import '../../../../utils/theme/custom_text_style.dart';
import '../../../../utils/theme/theme_helper.dart';
import '../../../../utils/utils.dart';
import '../../../../utils/widgets_utils/widgets/custom_elevated_button.dart';
import '../../../../utils/widgets_utils/widgets/custom_image_view.dart';
import '../../../../utils/widgets_utils/widgets/custom_text_form_field.dart';
import '../../controller/home_controller.dart';
import '../../widget/mobile/add_property_mobile_card_widget.dart';
import '../../widget/tablet/add_property_tablet_card_widget.dart';
import '../../widget/tablet/add_property_tablet_portrait_cardWidget.dart';
import '../../widget/tablet/financial_details_file_widget_tablet.dart';
import '../../widget/tablet/toggel_button_widget.dart';

class AddApartmentTabletScreen extends StatelessWidget {
  AddApartmentTabletScreen({Key? key}) : super(key: key);
  final HomeController _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    print("tablet");
    bool? isLandscape =
        MediaQuery.of(context).orientation == Orientation.portrait;
    print("Landscape:$isLandscape");
    return isLandscape?Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageUtilsForTablet.universalBackgroundImageTabletPortrait),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.ss),
              child: ListView(
                children: [
                  Container(
                    height: 80.ss,
                  ),
                  AppBar(
                    scrolledUnderElevation: 0.0,
                    title: Text(
                      "Add Property",
                      style: CustomTextStyles.bold32Tablet,
                    ),
                    centerTitle: true,
                    backgroundColor: Colors.transparent,
                    leadingWidth: 100,
                    leading: Row(children: [
                      InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Color(0xFF222222),
                            size: getSize(24),
                          )),
                      Container(
                        width: getSize(10),
                      ),
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Text(
                          "Back",
                          style: CustomTextStyles.regular18000000TextStyleTablet,
                        ),
                      ),
                    ],),
                  ),
                  Container(
                    height: 10.ss,
                  ),
                  Text("Property Classification",
                      style: CustomTextStyles.medium18000000TextStyleTablet),
                  Container(
                    height: 15.ss,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 5,
                        child:  Obx(
                              () => GestureDetector(
                            onTap: () {
                              _homeController.favotitesSelected.value = true;
                              _homeController.savedSelected.value = false;
                            },
                            child: ToggleButtonWidgetTablet(
                              isDisabledWhite: true,
                              borderColor: Colors.grey.withOpacity(0.3),
                              isSelected: _homeController.favotitesSelected.value,
                              text: 'Residential',
                            ),
                          ),
                        ),),
                      Expanded(flex:5,child:   Obx(
                            () => GestureDetector(
                          onTap: () {
                            _homeController.favotitesSelected.value = false;
                            _homeController.savedSelected.value = true;
                          },
                          child: ToggleButtonWidgetTablet(
                            isDisabledWhite: true,
                            borderColor: Colors.grey.withOpacity(0.3),
                            isSelected: _homeController.savedSelected.value,
                            text: 'Commercial',
                          ),
                        ),
                      ),)
                    ],
                  ),
                  Container(
                    height: 10.ss,
                  ),
                  Text("Property Type",
                      style: CustomTextStyles.medium18000000TextStyleTablet),
                  Container(
                    height: 15.ss,
                  ),
                  Obx(
                        () => GridView.count(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 10,
                        children: List.generate(
                            _homeController.propertyType.length, (index) {
                          return AddPropertyTabletPortraitCardWidget(
                            image: _homeController.propertyType[index].image,
                            title: _homeController.propertyType[index].title,
                            onTap: () {
                              print("_homeController.isTapped.value");
                              _homeController.propertyType.forEach(
                                      (element) => element.isColoured = false);
                              print("index:$index");
                              _homeController.propertyType[index].isColoured =
                              !_homeController
                                  .propertyType[index].isColoured!;
                              _homeController.propertyType.refresh();
                            },
                            isColoured:
                            _homeController.propertyType[index].isColoured,
                          );
                        })
                    ),
                  ),
                  SizedBox(height: getTabletSize(20)),
              Text(
                        "Property Status",
                        style: CustomTextStyles.medium18000000TextStyleTablet,
                      ),
                  SizedBox(height: getTabletSize(20)),
                        Container(
                          margin: EdgeInsets.only(left: 2.h),
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child:    Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 4,
                                child:  Obx(
                                      () => GestureDetector(
                                    onTap: () {
                                      _homeController.favotitesSelected3.value = true;
                                      _homeController.savedSelected3.value = false;
                                    },
                                    child: ToggleButtonWidgetTablet(
                                      isDisabledWhite: true,
                                      borderColor: Colors.grey.withOpacity(0.3),
                                      isSelected: _homeController.favotitesSelected3.value,
                                      text: 'Rented',
                                    ),
                                  ),
                                ),),
                              Expanded(flex:4,child:   Obx(
                                    () => GestureDetector(
                                  onTap: () {
                                    _homeController.favotitesSelected3.value = false;
                                    _homeController.savedSelected3.value = true;
                                  },
                                  child: ToggleButtonWidgetTablet(
                                    isDisabledWhite: true,
                                    borderColor: Colors.grey.withOpacity(0.3),
                                    isSelected: _homeController.savedSelected3.value,
                                    text: 'Vacant',
                                  ),
                                ),
                              ),)
                            ],
                          ),
                        ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Expanded(
                  //       flex: 5,
                  //       child: Text(
                  //         "Property Status",
                  //         style: CustomTextStyles.medium18000000TextStyleTablet,
                  //       ),
                  //     ),
                  //     Expanded(
                  //       child: Transform.translate(
                  //         offset: Offset(-14.ss, 0),
                  //         child: Text(
                  //           "Bedrooms",
                  //           style: CustomTextStyles.medium18000000TextStyleTablet.copyWith(
                  //               fontSize : 11.fss
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     Expanded(
                  //       child: Transform.translate(
                  //         offset: Offset(-4.ss, 0),
                  //         child: Text(
                  //           "Bathrooms",
                  //           style: CustomTextStyles.medium18000000TextStyleTablet.copyWith(
                  //               fontSize : 11.fss
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     Expanded(
                  //       child: Transform.translate(
                  //         offset: Offset(4.ss, 0),
                  //         child: Text(
                  //           "Area square",
                  //           style: CustomTextStyles.medium18000000TextStyleTablet.copyWith(
                  //               fontSize : 11.fss
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  SizedBox(height: getTabletSize(20)),
                  // Padding(
                  //   padding: EdgeInsets.only(
                  //     left: 1.h,
                  //   ),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Padding(
                  //         padding: EdgeInsets.only(bottom: 2.v),
                  //         child: Text(
                  //           "Bedrooms",
                  //           style: CustomTextStyles.medium18000000TextStyleTablet,
                  //         ),
                  //       ),
                  //       Padding(
                  //         padding: EdgeInsets.only(
                  //           left: 25.h,
                  //           bottom: 2.v,
                  //         ),
                  //         child: Text(
                  //           "Bathrooms",
                  //           style: CustomTextStyles.medium18000000TextStyleTablet,
                  //         ),
                  //       ),
                  //       Padding(
                  //         padding: EdgeInsets.only(
                  //           left: 17.h,
                  //           top: 2.v,
                  //         ),
                  //         child: Text(
                  //           "Area square",
                  //           style: CustomTextStyles.medium18000000TextStyleTablet,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(left: 2.h,right: 4.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex:3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bedrooms",
                                style: CustomTextStyles.medium18000000TextStyleTablet,
                              ),
                              SizedBox(height: getTabletSize(20)),
                              Container(
                                height: 75,
                                padding: EdgeInsets.symmetric(vertical: 5.v,horizontal: 20.h),
                                decoration: AppDecoration.outlineBlack9005.copyWith(
                                  borderRadius: BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "02",
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12.fss,
                                            color: AppColors.blackColor,
                                          )),
                                    ),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: appTheme.gray10001,
                                        borderRadius: BorderRadius.circular(
                                          10.h,
                                        ),
                                        border: Border.all(
                                          color: appTheme.black900.withOpacity(0.08),
                                          width: 1.h,
                                        ),
                                      ),
                                      child: Center(
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgThumbsup,
                                          height: 28,
                                          alignment: Alignment.bottomCenter,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(width: 20,),
                        Expanded(
                          flex:3,child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                        Text(
                                  "Bathrooms",
                                  style: CustomTextStyles.medium18000000TextStyleTablet,
                                ),
                              SizedBox(height: getTabletSize(20)),
                              Container(
                                height: 75,
                                padding: EdgeInsets.symmetric(vertical: 5.v,horizontal: 20.h),
                                decoration: AppDecoration.outlineBlack9005.copyWith(
                                  borderRadius: BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "02",
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12.fss,
                                            color: AppColors.blackColor,
                                          )),
                                    ),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: appTheme.gray10001,
                                        borderRadius: BorderRadius.circular(
                                          10.h,
                                        ),
                                        border: Border.all(
                                          color: appTheme.black900.withOpacity(0.08),
                                          width: 1.h,
                                        ),
                                      ),
                                      child: Center(
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgThumbsup,
                                          height: 28,
                                          alignment: Alignment.bottomCenter,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),),
                        Container(width: 20,),
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          Text(
                                    "Area square",
                                    style: CustomTextStyles.medium18000000TextStyleTablet,
                                  ),
                              SizedBox(height: getTabletSize(20)),
                              Container(
                                height: 75,
                                padding: EdgeInsets.symmetric(vertical: 5.v,horizontal: 20.h),
                                decoration: AppDecoration.outlineBlack9005.copyWith(
                                  borderRadius: BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "1,215 sqft",
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12.fss,
                                            color: AppColors.blackColor,
                                          )),
                                    ),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: appTheme.gray10001,
                                        borderRadius: BorderRadius.circular(
                                          10.h,
                                        ),
                                        border: Border.all(
                                          color: appTheme.black900.withOpacity(0.08),
                                          width: 1.h,
                                        ),
                                      ),
                                      child: Center(
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgThumbsup,
                                          height: 28,
                                          alignment: Alignment.bottomCenter,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 5.ss),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.start,
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Expanded(
                  //         flex: 5,
                  //         child: Container(
                  //           margin: EdgeInsets.only(left: 2.h),
                  //           decoration: AppDecoration.outlineBlack.copyWith(
                  //             borderRadius: BorderRadiusStyle.roundedBorder10,
                  //           ),
                  //           child:    Row(
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             children: [
                  //               Expanded(
                  //                 flex: 4,
                  //                 child:  Obx(
                  //                       () => GestureDetector(
                  //                     onTap: () {
                  //                       _homeController.favotitesSelected3.value = true;
                  //                       _homeController.savedSelected3.value = false;
                  //                     },
                  //                     child: ToggleButtonWidgetTablet(
                  //                       isDisabledWhite: true,
                  //                       borderColor: Colors.grey.withOpacity(0.3),
                  //                       isSelected: _homeController.favotitesSelected3.value,
                  //                       text: 'Rented',
                  //                     ),
                  //                   ),
                  //                 ),),
                  //               Expanded(flex:4,child:   Obx(
                  //                     () => GestureDetector(
                  //                   onTap: () {
                  //                     _homeController.favotitesSelected3.value = false;
                  //                     _homeController.savedSelected3.value = true;
                  //                   },
                  //                   child: ToggleButtonWidgetTablet(
                  //                     isDisabledWhite: true,
                  //                     borderColor: Colors.grey.withOpacity(0.3),
                  //                     isSelected: _homeController.savedSelected3.value,
                  //                     text: 'Vacant',
                  //                   ),
                  //                 ),
                  //               ),)
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       SizedBox(width: 15.ss),
                  //       Expanded(
                  //         child: Container(
                  //           height: 75,
                  //           padding: EdgeInsets.symmetric(vertical: 5.v,horizontal: 20.h),
                  //           decoration: AppDecoration.outlineBlack9005.copyWith(
                  //             borderRadius: BorderRadiusStyle.roundedBorder10,
                  //           ),
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Text(
                  //                 "02",
                  //                 style: GoogleFonts.poppins(
                  //                     textStyle: TextStyle(
                  //                       fontWeight: FontWeight.w500,
                  //                       fontSize: 12.fss,
                  //                       color: AppColors.blackColor,
                  //                     )),
                  //               ),
                  //               Container(
                  //                 height: 40,
                  //                 width: 40,
                  //                 decoration: BoxDecoration(
                  //                   color: appTheme.gray10001,
                  //                   borderRadius: BorderRadius.circular(
                  //                     10.h,
                  //                   ),
                  //                   border: Border.all(
                  //                     color: appTheme.black900.withOpacity(0.08),
                  //                     width: 1.h,
                  //                   ),
                  //                 ),
                  //                 child: Center(
                  //                   child: CustomImageView(
                  //                     imagePath: ImageConstant.imgThumbsup,
                  //                     height: 28,
                  //                     alignment: Alignment.bottomCenter,
                  //                   ),
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       SizedBox(width: 15.ss),
                  //       Expanded(
                  //         child: Container(
                  //           height: 75,
                  //           padding: EdgeInsets.symmetric(vertical: 5.v,horizontal: 20.h),
                  //           decoration: AppDecoration.outlineBlack9005.copyWith(
                  //             borderRadius: BorderRadiusStyle.roundedBorder10,
                  //           ),
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Text(
                  //                 "02",
                  //                 style: GoogleFonts.poppins(
                  //                     textStyle: TextStyle(
                  //                       fontWeight: FontWeight.w500,
                  //                       fontSize: 12.fss,
                  //                       color: AppColors.blackColor,
                  //                     )),
                  //               ),
                  //               Container(
                  //                 height: 40,
                  //                 width: 40,
                  //                 decoration: BoxDecoration(
                  //                   color: appTheme.gray10001,
                  //                   borderRadius: BorderRadius.circular(
                  //                     10.h,
                  //                   ),
                  //                   border: Border.all(
                  //                     color: appTheme.black900.withOpacity(0.08),
                  //                     width: 1.h,
                  //                   ),
                  //                 ),
                  //                 child: Center(
                  //                   child: CustomImageView(
                  //                     imagePath: ImageConstant.imgThumbsup,
                  //                     height: 28,
                  //                     alignment: Alignment.bottomCenter,
                  //                   ),
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       SizedBox(width: 15.ss),
                  //       Expanded(
                  //         child: Container(
                  //           height: 75,
                  //           padding: EdgeInsets.symmetric(vertical: 5.v,horizontal: 10.h),
                  //           decoration: AppDecoration.outlineBlack9005.copyWith(
                  //             borderRadius: BorderRadiusStyle.roundedBorder10,
                  //           ),
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Flexible(
                  //                 child: Text(
                  //                   "1,215 sqft",
                  //                   maxLines: 1,
                  //                   style: GoogleFonts.poppins(
                  //                       textStyle: TextStyle(
                  //                         fontWeight: FontWeight.w500,
                  //                         fontSize: 10.fss,
                  //                         color: AppColors.blackColor,
                  //                       )),
                  //                 ).paddingOnly(left: 2.ss),
                  //               ),
                  //               Container(
                  //                 height: 40,
                  //                 width: 40,
                  //                 decoration: BoxDecoration(
                  //                   color: appTheme.gray10001,
                  //                   borderRadius: BorderRadius.circular(
                  //                     10.h,
                  //                   ),
                  //                   border: Border.all(
                  //                     color: appTheme.black900.withOpacity(0.08),
                  //                     width: 1.h,
                  //                   ),
                  //                 ),
                  //                 child: Center(
                  //                   child: CustomImageView(
                  //                     imagePath: ImageConstant.imgThumbsup,
                  //                     height: 28,
                  //                     alignment: Alignment.bottomCenter,
                  //                   ),
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Container(
                    height: 15.ss,
                  ),
                  Text("Project Name",
                      style: CustomTextStyles.medium18000000TextStyleTablet),
                  Container(
                    height: 15.ss,
                  ),
                  CustomTextFormField(
                    controller: TextEditingController(),
                    hintText: "A beautiful house rent",
                    hintStyle: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 20,
                        color: Color(0xFF969696),
                        fontWeight: FontWeight.w300),
                    suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 15.v, 14.h, 16.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgLinkedin,
                          height: 30.ss,
                          width: 30.ss),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: 55.v,
                    ),
                    borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                    fillColor: theme.colorScheme.onErrorContainer,
                    textStyle: CustomTextStyles.regular18TextStyleTablet.copyWith(
                        fontSize: 18.0, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    height: 10.ss,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text(
                            "Property number",
                            style: CustomTextStyles.medium18000000TextStyleTablet,
                          ),
                        ),
                      ),
                      SizedBox(width: getTabletSize(20)),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text(
                            "Property Price",
                            style: CustomTextStyles.medium18000000TextStyleTablet,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: getTabletSize(20)),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: CustomTextFormField(
                            controller: TextEditingController(),
                            hintText: "1542e11",
                            hintStyle: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 20,
                                color: Color(0xFF969696),
                                fontWeight: FontWeight.w300),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.h,
                              vertical: 15.v,
                            ),
                            borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                            fillColor: theme.colorScheme.onErrorContainer,
                            textStyle: CustomTextStyles.regular18TextStyleTablet.copyWith(
                                fontSize: 18.0, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      SizedBox(width: getTabletSize(20)),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: CustomTextFormField(
                            controller: TextEditingController(),
                            hintText: "54,300,000 AED",
                            hintStyle: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 20,
                                color: Color(0xFF969696),
                                fontWeight: FontWeight.w300),
                            textInputAction: TextInputAction.done,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.h,
                              vertical: 15.v,
                            ),
                            borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                            fillColor: theme.colorScheme.onErrorContainer,
                            textStyle: CustomTextStyles.regular18TextStyleTablet.copyWith(
                                fontSize: 18.0, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 30.ss,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 5,
                        child:  Obx(
                              () => GestureDetector(
                            onTap: () {
                              _homeController.favotitesSelected.value = true;
                              _homeController.savedSelected.value = false;
                            },
                            child: ToggleButtonWidgetTablet(
                              isDisabledWhite: true,
                              borderColor: Colors.grey.withOpacity(0.3),
                              isSelected: _homeController.favotitesSelected.value,
                              text: 'Single Payment',
                            ),
                          ),
                        ),),
                      Expanded(flex:5,child:   Obx(
                            () => GestureDetector(
                          onTap: () {
                            _homeController.favotitesSelected.value = false;
                            _homeController.savedSelected.value = true;
                          },
                          child: ToggleButtonWidgetTablet(
                            isDisabledWhite: true,
                            borderColor: Colors.grey.withOpacity(0.3),
                            isSelected: _homeController.savedSelected.value,
                            text: 'Installments',
                          ),
                        ),
                      ),)
                    ],
                  ),
                  Container(
                    height: 20.ss,
                  ),
                  FinancialDetailsTabletWidget(),
                  Container(
                    height: 20.ss,
                  ),
                  Obx(()=> Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Photo Upload",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 14.ss,
                                    color: Color(0xFF0A2342),
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            _homeController
                                .temporaryVehicleImagePath
                                .value
                                .isEmpty
                                ? const Offstage()
                                : InkWell(
                              onTap: () {
                                _homeController
                                    .temporaryVehicleImagePath
                                    .value = "";
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.v,
                                    vertical: 10.h),
                                decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(
                                        Radius.circular(
                                            20)),
                                    color: Colors.red),
                                child: Center(
                                    child: Text(
                                      "Delete",
                                      style: CustomTextStyles
                                          .elevatedButton1,
                                    )),
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: 10.ss,
                        ),
                        Obx(()=>_homeController
                            .temporaryVehicleImagePath
                            .value
                            .isEmpty
                            ?  InkWell(
                          onTap: () async {
                            await modalBottomSheetMenu(
                                context,
                                    (XFile? selectedImage) {
                                  _homeController
                                      .temporaryVehicleImageName
                                      .value = selectedImage!.name;
                                  _homeController
                                      .temporaryVehicleImagePath
                                      .value = selectedImage!.path;
                                  print(
                                      "_authenticationController.temporaryVehicleImageName.value:${_homeController.temporaryVehicleImagePath.value}");
                                });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(8.ss),
                              color: Colors.white,
                            ),
                            child: DottedBorder(
                              borderType: BorderType.RRect,
                              radius: Radius.circular(12),
                              dashPattern: [7, 7, 7, 7],
                              color: Color(0xFF000000),
                              strokeWidth: 1,
                              child: ClipRRect(
                                borderRadius:
                                BorderRadius.all(
                                    Radius.circular(
                                        8.ss)),
                                child: Padding(
                                  padding: getTabletPadding(
                                      left: 10,
                                      right: 5,
                                      top: 15,
                                      bottom: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Upload Image',
                                        style: CustomTextStyles
                                            .medium16TextStyleTablet,
                                      ),
                                      Image.asset(
                                        "asset/icons/tablet/download_8.png",
                                        height: ScreenConstant
                                            .defaultHeightTwentyThree,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ):ClipRRect(
                          borderRadius:
                          BorderRadius.circular(20),
                          child: Container(
                            height: ScreenConstant
                                .defaultHeightTwoHundred,
                            width: ScreenConstant
                                .defaultWidthNinetyEight-20,
                            child: Image.file(
                              fit: BoxFit.fitWidth,
                              File(_homeController
                                  .temporaryVehicleImagePath
                                  .value),
                            ),
                          ),
                        ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 20.ss,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(()=> Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Document Upload",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 14.ss,
                                    color: Color(0xFF0A2342),
                                    fontWeight: FontWeight.w500)),
                          ),
                          _homeController
                              .temporaryDocImagePath
                              .value
                              .isEmpty
                              ? const Offstage()
                              : InkWell(
                            onTap: () {
                              _homeController
                                  .temporaryDocImagePath
                                  .value = "";
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.v,
                                  vertical: 10.h),
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(
                                      Radius.circular(
                                          20)),
                                  color: Colors.red),
                              child: Center(
                                  child: Text(
                                    "Delete",
                                    style: CustomTextStyles
                                        .elevatedButton1,
                                  )),
                            ),
                          ),
                        ],
                      ),
                      ),
                      Container(
                        height: 10.ss,
                      ),
                      Obx(()=> _homeController
                          .temporaryDocImagePath.value.isEmpty
                          ?  InkWell(
                        onTap: () async {
                          await modalBottomSheetMenu(
                              context,
                                  (XFile? selectedImage) {
                                _homeController
                                    .temporaryDocImageName
                                    .value =
                                    selectedImage!.name;
                                _homeController
                                    .temporaryDocImagePath
                                    .value =
                                    selectedImage!.path;
                                print(
                                    "_authenticationController.temporaryVehicleImageName.value:${_homeController.temporaryVehicleImagePath.value}");
                              });
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.white,
                            child: DottedBorder(
                              borderType: BorderType.RRect,
                              radius: Radius.circular(12),
                              padding: EdgeInsets.all(2),
                              dashPattern: [7, 7, 7, 7],
                              color: Color(0xFF000000),
                              strokeWidth: 1,
                              child: Padding(
                                padding: getTabletPadding(
                                    left: 65,
                                    right: 70,
                                    top: 70,
                                    bottom: 70),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Drag and drop files here or',
                                      style: CustomTextStyles
                                          .medium16TextStyleTablet,
                                    ),
                                    DottedBorder(
                                      borderType:
                                      BorderType
                                          .RRect,
                                      radius:
                                      Radius.circular(
                                          5),
                                      padding:
                                      getTabletPadding(
                                          left: 15,
                                          right: 15,
                                          top: 5,
                                          bottom: 5),
                                      dashPattern: [
                                        6,
                                        6,
                                        6,
                                        6
                                      ],
                                      color: Colors.green,
                                      strokeWidth: 1.5,
                                      child: Text(
                                        'Browse',
                                        style: CustomTextStyles
                                            .medium16TextStyleTablet,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ):ClipRRect(
                        borderRadius:
                        BorderRadius.circular(20),
                        child: Container(
                          height: ScreenConstant
                              .defaultHeightTwoHundred,
                          width: ScreenConstant
                              .defaultWidthNinetyEight,
                          child: Image.file(
                            fit: BoxFit.fitWidth,
                            File(_homeController
                                .temporaryDocImagePath
                                .value),
                          ),
                        ),
                      ),
                      ),
                      Container(
                        height: 15.ss,
                      ),
                      Obx(()=> _homeController
                          .temporaryDocImagePath.value.isEmpty? Padding(
                        padding:
                        getTabletPadding(left: 80, right: 80),
                        child: SizedBox(
                          child: Text(
                            'Upload up to 3 Files. Max File Size: 10MB. Support Multiple File Formats',
                            style: CustomTextStyles
                                .light14TextStyleTablet,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ):const Offstage(),
                      ),
                    ],
                  ),
                  Container(
                    height: 200,
                  ),
                ],
              ),
            ),
          ),
        ),
    ):Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageUtilsForTablet.universalBackgroundImage),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0.ss),
            child: ListView(
              children: [
                Container(
                  height: 80.ss,
                ),
                AppBar(
                  scrolledUnderElevation: 0.0,
                  title: Text(
                    "Add Property",
                    style: CustomTextStyles.bold32Tablet,
                  ),
                  centerTitle: true,
                  backgroundColor: Colors.transparent,
                  leadingWidth: getTabletSize(150),
                  leading: Row(children: [
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Color(0xFF222222),
                          size: getSize(24),
                        )),
                    Container(
                      width: getSize(10),
                    ),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Text(
                        "Back",
                        style: CustomTextStyles.regular18TextStyleTablet,
                      ),
                    ),
                  ],),
                ),
                Container(
                  height: 10.ss,
                ),
                Text("Property Classification",
                    style: CustomTextStyles.medium18000000TextStyleTablet),
                Container(
                  height: 15.ss,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 5,
                      child:  Obx(
                            () => GestureDetector(
                          onTap: () {
                            _homeController.favotitesSelected.value = true;
                            _homeController.savedSelected.value = false;
                          },
                          child: ToggleButtonWidgetTablet(
                            isDisabledWhite: true,
                            borderColor: Colors.grey.withOpacity(0.3),
                            isSelected: _homeController.favotitesSelected.value,
                            text: 'Residential',
                          ),
                        ),
                      ),),
                    Expanded(flex:5,child:   Obx(
                          () => GestureDetector(
                        onTap: () {
                          _homeController.favotitesSelected.value = false;
                          _homeController.savedSelected.value = true;
                        },
                        child: ToggleButtonWidgetTablet(
                          isDisabledWhite: true,
                          borderColor: Colors.grey.withOpacity(0.3),
                          isSelected: _homeController.savedSelected.value,
                          text: 'Commercial',
                        ),
                      ),
                    ),)
                  ],
                ),
                Container(
                  height: 10.ss,
                ),
                Text("Property Type",
                    style: CustomTextStyles.medium18000000TextStyleTablet),
                Container(
                  height: 15.ss,
                ),
                Obx(
                      () => GridView.count(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 4,
                      crossAxisSpacing: 20,
                      children: List.generate(
                          _homeController.propertyType.length, (index) {
                        return AddPropertyTabletCardWidget(
                          image: _homeController.propertyType[index].image,
                          title: _homeController.propertyType[index].title,
                          onTap: () {
                            print("_homeController.isTapped.value");
                            _homeController.propertyType.forEach(
                                    (element) => element.isColoured = false);
                            print("index:$index");
                            _homeController.propertyType[index].isColoured =
                            !_homeController
                                .propertyType[index].isColoured!;
                            _homeController.propertyType.refresh();
                          },
                          isColoured:
                          _homeController.propertyType[index].isColoured,
                        );
                      })),
                ),
                SizedBox(height: getTabletSize(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Text(
                        "Property Status",
                        style: CustomTextStyles.medium18000000TextStyleTablet,
                      ),
                    ),
                    Expanded(
                      child: Transform.translate(
                        offset: Offset(-14.ss, 0),
                        child: Text(
                          "Bedrooms",
                          style: CustomTextStyles.medium18000000TextStyleTablet.copyWith(
                              fontSize : 11.fss
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Transform.translate(
                        offset: Offset(-4.ss, 0),
                        child: Text(
                          "Bathrooms",
                          style: CustomTextStyles.medium18000000TextStyleTablet.copyWith(
                              fontSize : 11.fss
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Transform.translate(
                        offset: Offset(4.ss, 0),
                        child: Text(
                          "Area square",
                          style: CustomTextStyles.medium18000000TextStyleTablet.copyWith(
                              fontSize : 11.fss
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: getTabletSize(20)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.ss),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          margin: EdgeInsets.only(left: 2.h),
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child:    Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 4,
                                child:  Obx(
                                      () => GestureDetector(
                                    onTap: () {
                                      _homeController.favotitesSelected3.value = true;
                                      _homeController.savedSelected3.value = false;
                                    },
                                    child: ToggleButtonWidgetTablet(
                                      isDisabledWhite: true,
                                      borderColor: Colors.grey.withOpacity(0.3),
                                      isSelected: _homeController.favotitesSelected3.value,
                                      text: 'Rented',
                                    ),
                                  ),
                                ),),
                              Expanded(flex:4,child:   Obx(
                                    () => GestureDetector(
                                  onTap: () {
                                    _homeController.favotitesSelected3.value = false;
                                    _homeController.savedSelected3.value = true;
                                  },
                                  child: ToggleButtonWidgetTablet(
                                    isDisabledWhite: true,
                                    borderColor: Colors.grey.withOpacity(0.3),
                                    isSelected: _homeController.savedSelected3.value,
                                    text: 'Vacant',
                                  ),
                                ),
                              ),)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 15.ss),
                      Expanded(
                        child: Container(
                          height: 75,
                          padding: EdgeInsets.symmetric(vertical: 5.v,horizontal: 20.h),
                          decoration: AppDecoration.outlineBlack9005.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "02",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.fss,
                                      color: AppColors.blackColor,
                                    )),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: appTheme.gray10001,
                                  borderRadius: BorderRadius.circular(
                                    10.h,
                                  ),
                                  border: Border.all(
                                    color: appTheme.black900.withOpacity(0.08),
                                    width: 1.h,
                                  ),
                                ),
                                child: Center(
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgThumbsup,
                                    height: 28,
                                    alignment: Alignment.bottomCenter,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 15.ss),
                      Expanded(
                        child: Container(
                          height: 75,
                          padding: EdgeInsets.symmetric(vertical: 5.v,horizontal: 20.h),
                          decoration: AppDecoration.outlineBlack9005.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "02",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.fss,
                                      color: AppColors.blackColor,
                                    )),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: appTheme.gray10001,
                                  borderRadius: BorderRadius.circular(
                                    10.h,
                                  ),
                                  border: Border.all(
                                    color: appTheme.black900.withOpacity(0.08),
                                    width: 1.h,
                                  ),
                                ),
                                child: Center(
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgThumbsup,
                                    height: 28,
                                    alignment: Alignment.bottomCenter,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 15.ss),
                      Expanded(
                        child: Container(
                          height: 75,
                          padding: EdgeInsets.symmetric(vertical: 5.v,horizontal: 10.h),
                          decoration: AppDecoration.outlineBlack9005.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  "1,215 sqft",
                                  maxLines: 1,
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10.fss,
                                        color: AppColors.blackColor,
                                      )),
                                ).paddingOnly(left: 2.ss),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: appTheme.gray10001,
                                  borderRadius: BorderRadius.circular(
                                    10.h,
                                  ),
                                  border: Border.all(
                                    color: appTheme.black900.withOpacity(0.08),
                                    width: 1.h,
                                  ),
                                ),
                                child: Center(
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgThumbsup,
                                    height: 28,
                                    alignment: Alignment.bottomCenter,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 15.ss,
                ),
                Text("Project Name",
                    style: CustomTextStyles.medium18000000TextStyleTablet),
                Container(
                  height: 15.ss,
                ),
                CustomTextFormField(
                  controller: TextEditingController(),
                  hintText: "A beautiful house rent",
                  hintStyle: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 20,
                      color: Color(0xFF969696),
                      fontWeight: FontWeight.w300),
                  suffix: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 15.v, 14.h, 16.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgLinkedin,
                        height: 30.ss,
                        width: 30.ss),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 55.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                  fillColor: theme.colorScheme.onErrorContainer,
                  textStyle: CustomTextStyles.regular18TextStyleTablet.copyWith(
                      fontSize: 18.0, fontWeight: FontWeight.w500),
                ),
                Container(
                  height: 10.ss,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "Property number",
                          style: CustomTextStyles.medium18000000TextStyleTablet,
                        ),
                      ),
                    ),
                    SizedBox(width: getTabletSize(20)),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "Property Price",
                          style: CustomTextStyles.medium18000000TextStyleTablet,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: getTabletSize(20)),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: CustomTextFormField(
                          controller: TextEditingController(),
                          hintText: "1542e11",
                          hintStyle: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 20,
                              color: Color(0xFF969696),
                              fontWeight: FontWeight.w300),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.h,
                            vertical: 15.v,
                          ),
                          borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                          fillColor: theme.colorScheme.onErrorContainer,
                          textStyle: CustomTextStyles.regular18TextStyleTablet.copyWith(
                              fontSize: 18.0, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    SizedBox(width: getTabletSize(20)),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: CustomTextFormField(
                          controller: TextEditingController(),
                          hintText: "54,300,000 AED",
                          hintStyle: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 20,
                              color: Color(0xFF969696),
                              fontWeight: FontWeight.w300),
                          textInputAction: TextInputAction.done,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.h,
                            vertical: 15.v,
                          ),
                          borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                          fillColor: theme.colorScheme.onErrorContainer,
                          textStyle: CustomTextStyles.regular18TextStyleTablet.copyWith(
                              fontSize: 18.0, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 30.ss,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 5,
                      child:  Obx(
                            () => GestureDetector(
                          onTap: () {
                            _homeController.favotitesSelected.value = true;
                            _homeController.savedSelected.value = false;
                          },
                          child: ToggleButtonWidgetTablet(
                            isDisabledWhite: true,
                            borderColor: Colors.grey.withOpacity(0.3),
                            isSelected: _homeController.favotitesSelected.value,
                            text: 'Single Payment',
                          ),
                        ),
                      ),),
                    Expanded(flex:5,child:   Obx(
                          () => GestureDetector(
                        onTap: () {
                          _homeController.favotitesSelected.value = false;
                          _homeController.savedSelected.value = true;
                        },
                        child: ToggleButtonWidgetTablet(
                          isDisabledWhite: true,
                          borderColor: Colors.grey.withOpacity(0.3),
                          isSelected: _homeController.savedSelected.value,
                          text: 'Installments',
                        ),
                      ),
                    ),)
                  ],
                ),
                Container(
                  height: 20.ss,
                ),
                // Container(
                //   decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(12.ss)),
                //   child: Column(
                //     children: [
                //       Row(
                //         children: [
                //           Padding(
                //             padding: EdgeInsets.symmetric(horizontal: 12.ss),
                //             child: Text("Financial Details",
                //                 style: GoogleFonts.poppins(
                //                     textStyle: TextStyle(
                //                   color: Color(0xFF111A24),
                //                   fontSize: 15.fss,
                //                   fontWeight: FontWeight.w500,
                //                 ))),
                //           ),
                //           Spacer(),
                //           Padding(
                //             padding: EdgeInsets.symmetric(horizontal: 15.0.ss,vertical: 10.0.ss),
                //             child: Container(
                //               padding: EdgeInsets.symmetric(horizontal: 5.ss,vertical: 5.ss),
                //               decoration: BoxDecoration(
                //                   color: Color(0xFF50C878),
                //                   borderRadius: BorderRadius.circular(4.ss)),
                //               child: Text("Add New", style: GoogleFonts.poppins(
                //                   textStyle: TextStyle(
                //                     color: Colors.white,
                //                     fontSize: 10.fss,
                //                     fontWeight: FontWeight.w500,
                //                   ))),
                //             ),
                //           )
                //         ],
                //       ),
                //       Table(
                //         columnWidths: const {0: FractionColumnWidth(.4),1: FractionColumnWidth(.25),2: FractionColumnWidth(.5)},
                //         border: const TableBorder(horizontalInside: BorderSide(width: 1, color: Colors.blue, style: BorderStyle.solid),),
                //         children: [
                //           TableRow(
                //               decoration: BoxDecoration(color: const Color(0xFF50C878),border: Border.all(color: const Color(0xFF50C878))),
                //               children: [
                //             Padding(
                //               padding: EdgeInsets.symmetric(horizontal: 53.0.ss,vertical: 10.ss),
                //               child: Text('Installment Date',style: GoogleFonts.poppins(
                //                   textStyle: TextStyle(
                //                     color: Colors.white,
                //                     fontWeight: FontWeight.w700,
                //                     fontSize: 10.fss,
                //                   )),),
                //             ),
                //             Padding(
                //               padding: EdgeInsets.symmetric(vertical: 10.ss),
                //               child: Text('Amount',style: GoogleFonts.poppins(
                //                   textStyle: TextStyle(
                //                     color: Colors.white,
                //                     fontWeight: FontWeight.w700,
                //                     fontSize: 10.fss,
                //                   )),),
                //             ),
                //             Padding(
                //               padding: EdgeInsets.symmetric(horizontal: 0.0.ss,vertical: 10.ss),
                //               child: Text('Percentage',style: GoogleFonts.poppins(
                //                   textStyle: TextStyle(
                //                     color: Colors.white,
                //                     fontWeight: FontWeight.w700,
                //                     fontSize: 10.fss,
                //                   )),),
                //             ),
                //           ]),
                //         ],
                //       ),
                //       Table(
                //         columnWidths: {0: FractionColumnWidth(.32),1:FractionColumnWidth(0.22),2:FractionColumnWidth(0.3)},
                //         border: TableBorder(verticalInside: BorderSide(width: 1, color:  Colors.blueGrey.withOpacity(0.5), style: BorderStyle.solid),),
                //         children: [
                //           TableRow(
                //               decoration: BoxDecoration(color: Color(0xFFFBFBFB).withOpacity(0.9),border: Border.all(color: Colors.blueGrey.withOpacity(0.5))),
                //               children: [
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 0.0.ss,vertical: 10.ss),
                //                   child: Text('12/02/23',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 8.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(vertical: 10.ss),
                //                   child: Text('\$400.00',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 8.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 10.0.ss,vertical: 10.ss),
                //                   child: Text('12452',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 8.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 25.0.ss,vertical: 5.ss),
                //                   child: Container(
                //                     padding: EdgeInsets.symmetric(horizontal: 0.ss,vertical: 5.ss),
                //                     decoration: BoxDecoration(
                //                       border: Border.all(color: Colors.black),
                //                         color: Colors.white,
                //                         borderRadius: BorderRadius.circular(4.ss)),
                //                     child: Text("Not", style: GoogleFonts.poppins(
                //                         textStyle: TextStyle(
                //                           color: Colors.black,
                //                           fontSize: 8.fss,
                //                           fontWeight: FontWeight.w500,
                //                         )),textAlign: TextAlign.center,),
                //                   ),
                //                 ),
                //               ]),
                //         ],
                //       ),
                //       Table(
                //         columnWidths: {0: FractionColumnWidth(.32),1:FractionColumnWidth(0.22),2:FractionColumnWidth(0.3)},
                //         border: TableBorder(verticalInside: BorderSide(width: 1, color:  Colors.blueGrey.withOpacity(0.5), style: BorderStyle.solid),),
                //         children: [
                //           TableRow(
                //               decoration: BoxDecoration(color: Color(0xFFFBFBFB).withOpacity(0.9),border: Border.all(color: Colors.blueGrey.withOpacity(0.5))),
                //               children: [
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 0.0.ss,vertical: 10.ss),
                //                   child: Text('12/02/23',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 8.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(vertical: 10.ss),
                //                   child: Text('\$400.00',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 8.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 10.0.ss,vertical: 10.ss),
                //                   child: Text('12452',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 8.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 25.0.ss,vertical: 5.ss),
                //                   child: Container(
                //                     padding: EdgeInsets.symmetric(horizontal: 0.ss,vertical: 5.ss),
                //                     decoration: BoxDecoration(
                //                         color: Color(0xFF50C878),
                //                         borderRadius: BorderRadius.circular(4.ss)),
                //                     child: Text("Paid", style: GoogleFonts.poppins(
                //                         textStyle: TextStyle(
                //                           color: Colors.white,
                //                           fontSize: 8.fss,
                //                           fontWeight: FontWeight.w500,
                //                         )),textAlign: TextAlign.center,),
                //                   ),
                //                 ),
                //               ]),
                //         ],
                //       ),
                //       Table(
                //         columnWidths: {0: FractionColumnWidth(.32),1:FractionColumnWidth(0.22),2:FractionColumnWidth(0.3)},
                //         border: TableBorder(verticalInside: BorderSide(width: 1, color:  Colors.blueGrey.withOpacity(0.5), style: BorderStyle.solid),),
                //         children: [
                //           TableRow(
                //               decoration: BoxDecoration(color: Color(0xFFFBFBFB).withOpacity(0.9),border: Border.all(color: Colors.blueGrey.withOpacity(0.5))),
                //               children: [
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 0.0.ss,vertical: 10.ss),
                //                   child: Text('12/02/23',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 8.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(vertical: 10.ss),
                //                   child: Text('\$400.00',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 8.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 10.0.ss,vertical: 10.ss),
                //                   child: Text('12452',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 8.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 25.0.ss,vertical: 5.ss),
                //                   child: Container(
                //                     padding: EdgeInsets.symmetric(horizontal: 0.ss,vertical: 5.ss),
                //                     decoration: BoxDecoration(
                //                         color: Color(0xFF50C878),
                //                         borderRadius: BorderRadius.circular(4.ss)),
                //                     child: Text("Paid", style: GoogleFonts.poppins(
                //                         textStyle: TextStyle(
                //                           color: Colors.white,
                //                           fontSize: 8.fss,
                //                           fontWeight: FontWeight.w500,
                //                         )),textAlign: TextAlign.center,),
                //                   ),
                //                 ),
                //               ]),
                //         ],
                //       ),
                //       Table(
                //         columnWidths: {0: FractionColumnWidth(.32),1:FractionColumnWidth(0.22),2:FractionColumnWidth(0.3)},
                //         border: TableBorder(verticalInside: BorderSide(width: 1, color:  Colors.blueGrey.withOpacity(0.5), style: BorderStyle.solid),),
                //         children: [
                //           TableRow(
                //               decoration: BoxDecoration(color: Color(0xFFFBFBFB).withOpacity(0.9),border: Border.all(color: Colors.blueGrey.withOpacity(0.5))),
                //               children: [
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 0.0.ss,vertical: 10.ss),
                //                   child: Text('12/02/23',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 8.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(vertical: 10.ss),
                //                   child: Text('\$400.00',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 8.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 10.0.ss,vertical: 10.ss),
                //                   child: Text('12452',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 8.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 25.0.ss,vertical: 5.ss),
                //                   child: Container(
                //                     padding: EdgeInsets.symmetric(horizontal: 0.ss,vertical: 5.ss),
                //                     decoration: BoxDecoration(
                //                         color: Color(0xFF50C878),
                //                         borderRadius: BorderRadius.circular(4.ss)),
                //                     child: Text("Paid", style: GoogleFonts.poppins(
                //                         textStyle: TextStyle(
                //                           color: Colors.white,
                //                           fontSize: 8.fss,
                //                           fontWeight: FontWeight.w500,
                //                         )),textAlign: TextAlign.center,),
                //                   ),
                //                 ),
                //               ]),
                //         ],
                //       ),
                //       Table(
                //         columnWidths: {0: FractionColumnWidth(.32),1:FractionColumnWidth(0.22),2:FractionColumnWidth(0.3)},
                //         border: TableBorder(verticalInside: BorderSide(width: 1, color:  Colors.blueGrey.withOpacity(0.5), style: BorderStyle.solid),),
                //         children: [
                //           TableRow(
                //               decoration: BoxDecoration(color: Color(0xFFFBFBFB).withOpacity(0.9),border: Border.all(color: Colors.blueGrey.withOpacity(0.5))),
                //               children: [
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 0.0.ss,vertical: 10.ss),
                //                   child: Text('12/02/23',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 8.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(vertical: 10.ss),
                //                   child: Text('\$400.00',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 8.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 10.0.ss,vertical: 10.ss),
                //                   child: Text('12452',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 8.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 25.0.ss,vertical: 5.ss),
                //                   child: Container(
                //                     padding: EdgeInsets.symmetric(horizontal: 0.ss,vertical: 5.ss),
                //                     decoration: BoxDecoration(
                //                         color: Color(0xFF50C878),
                //                         borderRadius: BorderRadius.circular(4.ss)),
                //                     child: Text("Paid", style: GoogleFonts.poppins(
                //                         textStyle: TextStyle(
                //                           color: Colors.white,
                //                           fontSize: 8.fss,
                //                           fontWeight: FontWeight.w500,
                //                         )),textAlign: TextAlign.center,),
                //                   ),
                //                 ),
                //               ]),
                //         ],
                //       ),
                //       Table(
                //         columnWidths: {0: FractionColumnWidth(.32),1:FractionColumnWidth(0.22),2:FractionColumnWidth(0.3)},
                //         border: TableBorder(verticalInside: BorderSide(width: 1, color:  Colors.blueGrey.withOpacity(0.5), style: BorderStyle.solid),),
                //         children: [
                //           TableRow(
                //               decoration: BoxDecoration(color: Color(0xFFFBFBFB).withOpacity(0.9),border: Border.all(color: Colors.blueGrey.withOpacity(0.5))),
                //               children: [
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 0.0.ss,vertical: 10.ss),
                //                   child: Text('12/02/23',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 8.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(vertical: 10.ss),
                //                   child: Text('\$400.00',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 8.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 10.0.ss,vertical: 10.ss),
                //                   child: Text('12452',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 8.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 25.0.ss,vertical: 5.ss),
                //                   child: Container(
                //                     padding: EdgeInsets.symmetric(horizontal: 0.ss,vertical: 5.ss),
                //                     decoration: BoxDecoration(
                //                         color: Color(0xFF50C878),
                //                         borderRadius: BorderRadius.circular(4.ss)),
                //                     child: Text("Paid", style: GoogleFonts.poppins(
                //                         textStyle: TextStyle(
                //                           color: Colors.white,
                //                           fontSize: 8.fss,
                //                           fontWeight: FontWeight.w500,
                //                         )),textAlign: TextAlign.center,),
                //                   ),
                //                 ),
                //               ]),
                //         ],
                //       ),
                //       Table(
                //         columnWidths: {0: FractionColumnWidth(.32),1:FractionColumnWidth(0.22),2:FractionColumnWidth(0.3)},
                //         border: TableBorder(verticalInside: BorderSide(width: 1, color:  Colors.blueGrey.withOpacity(0.5), style: BorderStyle.solid),),
                //         children: [
                //           TableRow(
                //               decoration: BoxDecoration(color: Color(0xFFFBFBFB).withOpacity(0.9),border: Border.all(color: Colors.blueGrey.withOpacity(0.5))),
                //               children: [
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 0.0.ss,vertical: 10.ss),
                //                   child: Text('12/02/23',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 8.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(vertical: 10.ss),
                //                   child: Text('\$400.00',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 8.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 10.0.ss,vertical: 10.ss),
                //                   child: Text('12452',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 8.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 25.0.ss,vertical: 5.ss),
                //                   child: Container(
                //                     padding: EdgeInsets.symmetric(horizontal: 0.ss,vertical: 5.ss),
                //                     decoration: BoxDecoration(
                //                         color: Color(0xFF50C878),
                //                         borderRadius: BorderRadius.circular(4.ss)),
                //                     child: Text("Paid", style: GoogleFonts.poppins(
                //                         textStyle: TextStyle(
                //                           color: Colors.white,
                //                           fontSize: 8.fss,
                //                           fontWeight: FontWeight.w500,
                //                         )),textAlign: TextAlign.center,),
                //                   ),
                //                 ),
                //               ]),
                //         ],
                //       ),
                //       Table(
                //         columnWidths: {0: FractionColumnWidth(.32),1:FractionColumnWidth(0.22),2:FractionColumnWidth(0.3)},
                //         border: TableBorder(verticalInside: BorderSide(width: 1, color:  Colors.blueGrey.withOpacity(0.5), style: BorderStyle.solid),),
                //         children: [
                //           TableRow(
                //               decoration: BoxDecoration(color: Color(0xFFFBFBFB).withOpacity(0.9),border: Border.all(color: Colors.blueGrey.withOpacity(0.5))),
                //               children: [
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 0.0.ss,vertical: 10.ss),
                //                   child: Text('12/02/23',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 8.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(vertical: 10.ss),
                //                   child: Text('\$400.00',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 8.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 10.0.ss,vertical: 10.ss),
                //                   child: Text('12452',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 8.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 25.0.ss,vertical: 5.ss),
                //                   child: Container(
                //                     padding: EdgeInsets.symmetric(horizontal: 0.ss,vertical: 5.ss),
                //                     decoration: BoxDecoration(
                //                         color: Color(0xFF50C878),
                //                         borderRadius: BorderRadius.circular(4.ss)),
                //                     child: Text("Paid", style: GoogleFonts.poppins(
                //                         textStyle: TextStyle(
                //                           color: Colors.white,
                //                           fontSize: 8.fss,
                //                           fontWeight: FontWeight.w500,
                //                         )),textAlign: TextAlign.center,),
                //                   ),
                //                 ),
                //               ]),
                //         ],
                //       ),
                //       Table(
                //         columnWidths: {0: FractionColumnWidth(.32),1:FractionColumnWidth(0.22),2:FractionColumnWidth(0.3)},
                //         border: TableBorder(verticalInside: BorderSide(width: 1, color:  Colors.blueGrey.withOpacity(0.5), style: BorderStyle.solid),),
                //         children: [
                //           TableRow(
                //               decoration: BoxDecoration(color: Color(0xFFFBFBFB).withOpacity(0.9),border: Border.all(color: Colors.blueGrey.withOpacity(0.5))),
                //               children: [
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 0.0.ss,vertical: 10.ss),
                //                   child: Text('12/02/23',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 8.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(vertical: 10.ss),
                //                   child: Text('\$400.00',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 8.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 10.0.ss,vertical: 10.ss),
                //                   child: Text('12452',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 8.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 25.0.ss,vertical: 5.ss),
                //                   child: Container(
                //                     padding: EdgeInsets.symmetric(horizontal: 0.ss,vertical: 5.ss),
                //                     decoration: BoxDecoration(
                //                         color: Color(0xFF50C878),
                //                         borderRadius: BorderRadius.circular(4.ss)),
                //                     child: Text("Paid", style: GoogleFonts.poppins(
                //                         textStyle: TextStyle(
                //                           color: Colors.white,
                //                           fontSize: 8.fss,
                //                           fontWeight: FontWeight.w500,
                //                         )),textAlign: TextAlign.center,),
                //                   ),
                //                 ),
                //               ]),
                //         ],
                //       ),
                //       Table(
                //         columnWidths: {0: FractionColumnWidth(.32),1:FractionColumnWidth(0.22),2:FractionColumnWidth(0.3)},
                //         border: TableBorder(verticalInside: BorderSide(width: 1, color:  Colors.blueGrey.withOpacity(0.5), style: BorderStyle.solid),),
                //         children: [
                //           TableRow(
                //               decoration: BoxDecoration(color: Color(0xFFFBFBFB).withOpacity(0.9),border: Border.all(color: Colors.blueGrey.withOpacity(0.5))),
                //               children: [
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 0.0.ss,vertical: 10.ss),
                //                   child: Text('12/02/23',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 8.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(vertical: 10.ss),
                //                   child: Text('\$400.00',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 8.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 10.0.ss,vertical: 10.ss),
                //                   child: Text('12452',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 8.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 25.0.ss,vertical: 5.ss),
                //                   child: Container(
                //                     padding: EdgeInsets.symmetric(horizontal: 0.ss,vertical: 5.ss),
                //                     decoration: BoxDecoration(
                //                         color: Color(0xFF50C878),
                //                         borderRadius: BorderRadius.circular(4.ss)),
                //                     child: Text("Paid", style: GoogleFonts.poppins(
                //                         textStyle: TextStyle(
                //                           color: Colors.white,
                //                           fontSize: 8.fss,
                //                           fontWeight: FontWeight.w500,
                //                         )),textAlign: TextAlign.center,),
                //                   ),
                //                 ),
                //               ]),
                //         ],
                //       ),
                //       Table(
                //         columnWidths: {0: FractionColumnWidth(.52),1:FractionColumnWidth(0.0),},
                //         border: TableBorder(verticalInside: BorderSide(width: 1, color:  Colors.white, style: BorderStyle.solid),),
                //         children: [
                //           TableRow(
                //               decoration: BoxDecoration(color: Color(0xFFFBFBFB).withOpacity(0.9),border: Border.all(color: Colors.blueGrey.withOpacity(0.5))),
                //               children: [
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 0.0.ss,vertical: 10.ss),
                //                   child: Text('Sum Installments',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 10.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(vertical: 10.ss),
                //                   child: Text(':',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 10.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 10.0.ss,vertical: 10.ss),
                //                   child: Text('12452',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 10.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //               ]),
                //         ],
                //       ),
                //       Table(
                //         columnWidths: {0: FractionColumnWidth(.52),1:FractionColumnWidth(0.0),},
                //         border: TableBorder(verticalInside: BorderSide(width: 1, color:  Colors.white, style: BorderStyle.solid),),
                //         children: [
                //           TableRow(
                //               decoration: BoxDecoration(color: Color(0xFFFBFBFB).withOpacity(0.9),border: Border.all(color: Colors.blueGrey.withOpacity(0.5))),
                //               children: [
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 0.0.ss,vertical: 10.ss),
                //                   child: Text('Sum Paid Amounts',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 10.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(vertical: 10.ss),
                //                   child: Text(':',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 10.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 10.0.ss,vertical: 10.ss),
                //                   child: Text('\$15000.00',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 10.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //               ]),
                //         ],
                //       ),
                //       Table(
                //         columnWidths: {0: FractionColumnWidth(.52),1:FractionColumnWidth(0.0),},
                //         border: TableBorder(verticalInside: BorderSide(width: 1, color:  Colors.white, style: BorderStyle.solid),),
                //         children: [
                //           TableRow(
                //               decoration: BoxDecoration(color: Color(0xFFFBFBFB).withOpacity(0.9),border: Border.all(color: Colors.blueGrey.withOpacity(0.5))),
                //               children: [
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 0.0.ss,vertical: 10.ss),
                //                   child: Text('Sum Unpaid Amount',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 10.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(vertical: 10.ss),
                //                   child: Text(':',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 10.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 10.0.ss,vertical: 10.ss),
                //                   child: Text('\$1200.00',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 10.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //               ]),
                //         ],
                //       ),
                //       Table(
                //         columnWidths: {0: FractionColumnWidth(.52),1:FractionColumnWidth(0.0),},
                //         border: TableBorder(verticalInside: BorderSide(width: 1, color:  Colors.white, style: BorderStyle.solid),),
                //         children: [
                //           TableRow(
                //               decoration: BoxDecoration(color: Color(0xFFFBFBFB).withOpacity(0.9),border: Border.all(color: Colors.blueGrey.withOpacity(0.5))),
                //               children: [
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 0.0.ss,vertical: 10.ss),
                //                   child: Text('Percentage Paid Amount',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 10.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(vertical: 10.ss),
                //                   child: Text(':',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 10.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsets.symmetric(horizontal: 10.0.ss,vertical: 10.ss),
                //                   child: Text('15%',style: GoogleFonts.poppins(
                //                       textStyle: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 10.fss,
                //                       )),textAlign: TextAlign.center,),
                //                 ),
                //               ]),
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
                FinancialDetailsTabletWidget(),
                Container(
                  height: 20.ss,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(()=> Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Photo Upload",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 14.ss,
                                      color: Color(0xFF0A2342),
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              _homeController
                                  .temporaryVehicleImagePath
                                  .value
                                  .isEmpty
                                  ? const Offstage()
                                  : InkWell(
                                onTap: () {
                                  _homeController
                                      .temporaryVehicleImagePath
                                      .value = "";
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.v,
                                      vertical: 10.h),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.all(
                                          Radius.circular(
                                              20)),
                                      color: Colors.red),
                                  child: Center(
                                      child: Text(
                                        "Delete",
                                        style: CustomTextStyles
                                            .elevatedButton1,
                                      )),
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: 10.ss,
                          ),
                          Obx(()=>_homeController
                              .temporaryVehicleImagePath
                              .value
                              .isEmpty
                              ?  InkWell(
                            onTap: () async {
                              await modalBottomSheetMenu(
                                  context,
                                      (XFile? selectedImage) {
                                    _homeController
                                        .temporaryVehicleImageName
                                        .value = selectedImage!.name;
                                    _homeController
                                        .temporaryVehicleImagePath
                                        .value = selectedImage!.path;
                                    print(
                                        "_authenticationController.temporaryVehicleImageName.value:${_homeController.temporaryVehicleImagePath.value}");
                                  });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(8.ss),
                                color: Colors.white,
                              ),
                              child: DottedBorder(
                                borderType: BorderType.RRect,
                                radius: Radius.circular(12),
                                dashPattern: [7, 7, 7, 7],
                                color: Color(0xFF000000),
                                strokeWidth: 1,
                                child: ClipRRect(
                                  borderRadius:
                                  BorderRadius.all(
                                      Radius.circular(
                                          8.ss)),
                                  child: Padding(
                                    padding: getTabletPadding(
                                        left: 10,
                                        right: 5,
                                        top: 15,
                                        bottom: 15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Upload Image',
                                          style: CustomTextStyles
                                              .medium16TextStyleTablet,
                                        ),
                                        Image.asset(
                                          "asset/icons/tablet/download_8.png",
                                          height: ScreenConstant
                                              .defaultHeightTwentyThree,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ):ClipRRect(
                            borderRadius:
                            BorderRadius.circular(20),
                            child: Container(
                              height: ScreenConstant
                                  .defaultHeightTwoHundred,
                              width: ScreenConstant
                                  .defaultWidthNinetyEight-20,
                              child: Image.file(
                                fit: BoxFit.fitWidth,
                                File(_homeController
                                    .temporaryVehicleImagePath
                                    .value),
                              ),
                            ),
                          ),
                          )
                        ],
                      ),
                    ),
                    ),
                    Container(
                      width: 30.ss,
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(()=> Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Document Upload",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 14.ss,
                                        color: Color(0xFF0A2342),
                                        fontWeight: FontWeight.w500)),
                              ),
                              _homeController
                                  .temporaryDocImagePath
                                  .value
                                  .isEmpty
                                  ? const Offstage()
                                  : InkWell(
                                onTap: () {
                                  _homeController
                                      .temporaryDocImagePath
                                      .value = "";
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.v,
                                      vertical: 10.h),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.all(
                                          Radius.circular(
                                              20)),
                                      color: Colors.red),
                                  child: Center(
                                      child: Text(
                                        "Delete",
                                        style: CustomTextStyles
                                            .elevatedButton1,
                                      )),
                                ),
                              ),
                            ],
                          ),
                          ),
                          Container(
                            height: 10.ss,
                          ),
                          Obx(()=> _homeController
                              .temporaryDocImagePath.value.isEmpty
                              ?  InkWell(
                            onTap: () async {
                              await modalBottomSheetMenu(
                                  context,
                                      (XFile? selectedImage) {
                                    _homeController
                                        .temporaryDocImageName
                                        .value =
                                        selectedImage!.name;
                                    _homeController
                                        .temporaryDocImagePath
                                        .value =
                                        selectedImage!.path;
                                    print(
                                        "_authenticationController.temporaryVehicleImageName.value:${_homeController.temporaryVehicleImagePath.value}");
                                  });
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                color: Colors.white,
                                child: DottedBorder(
                                  borderType: BorderType.RRect,
                                  radius: Radius.circular(12),
                                  padding: EdgeInsets.all(2),
                                  dashPattern: [7, 7, 7, 7],
                                  color: Color(0xFF000000),
                                  strokeWidth: 1,
                                  child: Padding(
                                    padding: getTabletPadding(
                                        left: 65,
                                        right: 70,
                                        top: 70,
                                        bottom: 70),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Text(
                                            'Drag and drop files here or',
                                            style: CustomTextStyles
                                                .medium16TextStyleTablet,
                                          ),
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: Center(
                                              child: DottedBorder(
                                                borderType:
                                                BorderType
                                                    .RRect,
                                                radius:
                                                Radius.circular(
                                                    5),
                                                padding:
                                                getTabletPadding(
                                                    left: 15,
                                                    right: 15,
                                                    top: 5,
                                                    bottom: 5),
                                                dashPattern: [
                                                  6,
                                                  6,
                                                  6,
                                                  6
                                                ],
                                                color: Colors.green,
                                                strokeWidth: 1.5,
                                                child: Text(
                                                  'Browse',
                                                  style: CustomTextStyles
                                                      .medium16TextStyleTablet,
                                                ),
                                              ),
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ):ClipRRect(
                            borderRadius:
                            BorderRadius.circular(20),
                            child: Container(
                              height: ScreenConstant
                                  .defaultHeightTwoHundred,
                              width: ScreenConstant
                                  .defaultWidthNinetyEight,
                              child: Image.file(
                                fit: BoxFit.fitWidth,
                                File(_homeController
                                    .temporaryDocImagePath
                                    .value),
                              ),
                            ),
                          ),
                          ),
                          Container(
                            height: 15.ss,
                          ),
                          Obx(()=> _homeController
                              .temporaryDocImagePath.value.isEmpty? Padding(
                            padding:
                            getTabletPadding(left: 80, right: 80),
                            child: SizedBox(
                              child: Text(
                                'Upload up to 3 Files. Max File Size: 10MB. Support Multiple File Formats',
                                style: CustomTextStyles
                                    .light14TextStyleTablet,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ):const Offstage(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 200,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
