import 'dart:io';

import 'package:camera/camera.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/device_manger/screen_constants.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/views/dashboard/widget/mobile/financial_details_file_widget_mobilet.dart';
import 'package:main/views/dashboard/widget/mobile/add_property_mobile_card_widget.dart';
import 'package:sizing/sizing.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../../utils/core/utils/image_constant.dart';
import '../../../../utils/phone_size_utils.dart';
import '../../../../utils/theme/app_decoration.dart';
import '../../../../utils/theme/custom_text_style.dart';
import '../../../../utils/theme/theme_helper.dart';
import '../../../../utils/utils.dart';
import '../../../../utils/widgets_utils/widgets/custom_image_view.dart';
import '../../controller/home_controller.dart';
import '../../widget/mobile/toggle_button_widget_mobile.dart';
class AddApartmentMobileScreen extends StatelessWidget {
   AddApartmentMobileScreen({Key? key}) : super(key: key);
  final HomeController _homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("asset/images/mobile/background.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.ss),
          child: ListView(
            children: [
              Container(height: 80.ss,),
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Color(0xFF222222),
                        size: 12,
                      )),
                  Container(
                    width: 10.ss,
                  ),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Text(
                      "Back",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.fss,
                            color: Color(0xFF000000),
                          )),
                    ),
                  ),
                ],
              ),
              Container(height: 10.ss,),
              Text(
                "Add Property",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w800, fontSize: 24.fss)),
              ),
              Container(
                height: 30.ss,
              ),
              Text("Property Classification",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xFF111A24),
                        fontSize: 15.fss,
                        fontWeight: FontWeight.w500,
                      ))),
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
                        child: ToggleButtonWidgetMobile(
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
                      child: ToggleButtonWidgetMobile(
                        isSelected: _homeController.savedSelected.value,
                        text: 'Commercial',
                      ),
                    ),
                  ),)


                ],
              ),
              Container(
                height: 30.ss,
              ),
              Text("Property Type",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xFF111A24),
                        fontSize: 15.fss,
                        fontWeight: FontWeight.w500,
                      ))),
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
                      return AddPropertyMobileCardWidget(
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
              Container(
                height: 30.ss,
              ),
              Text("Property Status",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xFF111A24),
                        fontSize: 15.fss,
                        fontWeight: FontWeight.w500,
                      ))),
              Container(
                height: 10.ss,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 5,
                    child:  Obx(
                          () => GestureDetector(
                        onTap: () {
                          _homeController.favotitesSelected1.value = true;
                          _homeController.savedSelected1.value = false;
                        },
                        child: ToggleButtonWidgetMobile(
                          isSelected: _homeController.favotitesSelected1.value,
                          text: 'Rented',
                        ),
                      ),
                    ),),
                  Expanded(flex:5,child:   Obx(
                        () => GestureDetector(
                      onTap: () {
                        _homeController.favotitesSelected1.value = false;
                        _homeController.savedSelected1.value = true;
                      },
                      child: ToggleButtonWidgetMobile(
                        isSelected: _homeController.savedSelected1.value,
                        text: 'Vacant',
                      ),
                    ),
                  ),)


                ],
              ),
              Container(
                height: 30.ss,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 1.h,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 2.v),
                      child: Text(
                        "Bedrooms",
                        style: CustomTextStyles.titleMediumGray9000118,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 25.h,
                        bottom: 2.v,
                      ),
                      child: Text(
                        "Bathrooms",
                        style: CustomTextStyles.titleMediumGray9000118,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 17.h,
                        top: 2.v,
                      ),
                      child: Text(
                        "Area square",
                        style: CustomTextStyles.titleMediumGray9000118,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(left: 2.h,right: 4.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 97.h,
                      padding: EdgeInsets.symmetric(vertical: 9.v),
                      decoration: AppDecoration.outlineBlack9005.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 6.v,
                              bottom: 5.v,
                            ),
                            child: Text(
                              "02",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          Container(
                            height: 36.v,
                            width: 38.h,
                            margin: EdgeInsets.only(top: 1.v),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 35.v,
                                    width: 38.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.gray10001,
                                      borderRadius: BorderRadius.circular(
                                        10.h,
                                      ),
                                      border: Border.all(
                                        color: appTheme.black900
                                            .withOpacity(0.08),
                                        width: 1.h,
                                      ),
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgThumbsup,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  alignment: Alignment.bottomCenter,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 9.v,
                      ),
                      decoration: AppDecoration.outlineBlack9005.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 6.v,
                              bottom: 5.v,
                            ),
                            child: Text(
                              "02",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          Container(
                            height: 36.v,
                            width: 38.h,
                            margin: EdgeInsets.only(
                              left: 15.h,
                              top: 1.v,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 35.v,
                                    width: 38.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.gray10001,
                                      borderRadius: BorderRadius.circular(
                                        10.h,
                                      ),
                                      border: Border.all(
                                        color: appTheme.black900
                                            .withOpacity(0.08),
                                        width: 1.h,
                                      ),
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgThumbsup,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  alignment: Alignment.bottomCenter,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.h,
                        vertical: 9.v,
                      ),
                      decoration: AppDecoration.outlineBlack9005.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 8.v,
                              bottom: 3.v,
                            ),
                            child: Text(
                              "1,215 sqft",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          Container(
                            height: 36.v,
                            width: 38.h,
                            margin: EdgeInsets.only(
                              left: 17.h,
                              top: 1.v,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 35.v,
                                    width: 38.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.gray10001,
                                      borderRadius: BorderRadius.circular(
                                        10.h,
                                      ),
                                      border: Border.all(
                                        color: appTheme.black900
                                            .withOpacity(0.08),
                                        width: 1.h,
                                      ),
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgThumbsup,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  alignment: Alignment.bottomCenter,
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
              Container(
                height: 30.ss,
              ),
              Container(
                height: 10.ss,
              ),
              Text("Project Name",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xFF111A24),
                        fontSize: 15.fss,
                        fontWeight: FontWeight.w500,
                      ))),
              Container(
                height: 15.ss,
              ),
              TextFormField(
                readOnly: false,
                controller: TextEditingController(),
                keyboardType: TextInputType.emailAddress,
                autofocus: false,
                maxLines: 1,
                cursorColor: const Color(0xFFC4C4C4),
                textInputAction: TextInputAction.next,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                style: TextStyle(
                    color: const Color(0xFF111A24),
                    fontSize: 14.fss,
                    fontFamily: 'Gordita'),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "A beautiful house rent",
                  hintStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: const Color(0xFF6A6A6A),
                        fontSize: 12.fss,
                      )),
                  errorStyle: TextStyle(
                      color: const Color(0xFFE8503A),
                      fontSize: 12.fss,
                      fontFamily: 'Gordita'),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: 10.0.ss),
                    child: Icon(
                      Icons.location_on_outlined,
                      color: const Color(0xFF6A6A6A),
                      size: 16.ss,
                    ),
                  ),
                  contentPadding: EdgeInsets.all(ScreenConstant.sizeMedium),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        color: Color(0xFFC4C4C4),
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                  disabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        color: Color(0xFFC4C4C4),
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        color: Color(0xFFC4C4C4),
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                  errorBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        color: Color(0xFFE8503A),
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                  focusedErrorBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        color: Color(0xFFE8503A),
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                ),
              ),
              Container(
                height: 30.ss,
              ),
              Text("Property Number",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xFF111A24),
                        fontSize: 15.fss,
                        fontWeight: FontWeight.w500,
                      ))),
              Container(
                height: 15.ss,
              ),
              TextFormField(
                readOnly: false,
                controller: TextEditingController(),
                keyboardType: TextInputType.emailAddress,
                autofocus: false,
                maxLines: 1,
                cursorColor: const Color(0xFFC4C4C4),
                textInputAction: TextInputAction.next,
                autovalidateMode:
                AutovalidateMode.onUserInteraction,
                style: TextStyle(
                    color: const Color(0xFF111A24),
                    fontSize: 14.fss,
                    fontFamily: 'Gordita'),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "1542e11",
                  hintStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: const Color(0xFF6A6A6A),
                        fontSize: 12.fss,
                      )),
                  errorStyle: TextStyle(
                      color: const Color(0xFFE8503A),
                      fontSize: 12.fss,
                      fontFamily: 'Gordita'),
                  contentPadding:
                  EdgeInsets.all(ScreenConstant.sizeMedium),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        color: Color(0xFFC4C4C4),
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                  disabledBorder: const OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        color: Color(0xFFC4C4C4),
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        color: Color(0xFFC4C4C4),
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                  errorBorder: const OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        color: Color(0xFFE8503A),
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                  focusedErrorBorder: const OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        color: Color(0xFFE8503A),
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                ),
              ),
              Container(
                height: 30.ss,
              ),
              Text("Property Price",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xFF111A24),
                        fontSize: 15.fss,
                        fontWeight: FontWeight.w500,
                      ))),
              Container(
                height: 15.ss,
              ),
              TextFormField(
                readOnly: false,
                controller: TextEditingController(),
                keyboardType: TextInputType.emailAddress,
                autofocus: false,
                maxLines: 1,
                cursorColor: const Color(0xFFC4C4C4),
                textInputAction: TextInputAction.next,
                autovalidateMode:
                AutovalidateMode.onUserInteraction,
                style: TextStyle(
                    color: const Color(0xFF111A24),
                    fontSize: 14.fss,
                    fontFamily: 'Gordita'),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "54,300,000 AED",
                  hintStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: const Color(0xFF6A6A6A),
                        fontSize: 12.fss,
                      )),
                  errorStyle: TextStyle(
                      color: const Color(0xFFE8503A),
                      fontSize: 12.fss,
                      fontFamily: 'Gordita'),
                  contentPadding:
                  EdgeInsets.all(ScreenConstant.sizeMedium),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        color: Color(0xFFC4C4C4),
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                  disabledBorder: const OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        color: Color(0xFFC4C4C4),
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        color: Color(0xFFC4C4C4),
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                  errorBorder: const OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        color: Color(0xFFE8503A),
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                  focusedErrorBorder: const OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        color: Color(0xFFE8503A),
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                ),
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
                          _homeController.favotitesSelected2.value = true;
                          _homeController.savedSelected2.value = false;
                        },
                        child: ToggleButtonWidgetMobile(
                          isSelected: _homeController.favotitesSelected2.value,
                          text: 'Single Payments',
                        ),
                      ),
                    ),),
                  Expanded(flex:5,child:   Obx(
                        () => GestureDetector(
                      onTap: () {
                        _homeController.favotitesSelected2.value = false;
                        _homeController.savedSelected2.value = true;
                      },
                      child: ToggleButtonWidgetMobile(
                        isSelected: _homeController.savedSelected2.value,
                        text: 'Installments',
                      ),
                    ),
                  ),)


                ],
              ),
              Container(
                height: 30.ss,
              ),
              FinancialDetails(),
              Container(
                height: 30.ss,
              ),
              Obx(()=> Row(
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
                            vertical: 6.h),
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
              ),
              Container(
                height: 10.ss,
              ),
              Obx(()=> _homeController
                  .temporaryVehicleImagePath
                  .value
                  .isEmpty? InkWell(
                onTap: ()async{
                  await modalBottomSheetMenu(context,(XFile? selectedImage){
                    _homeController.temporaryVehicleImageName.value = selectedImage!.name;
                    _homeController.temporaryVehicleImagePath.value = selectedImage!.path;
                    print("_authenticationController.temporaryVehicleImageName.value:${_homeController.temporaryVehicleImagePath.value}");
                  });

                },
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.ss),color: Colors.white,),
                  child: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(12),
                    padding: EdgeInsets.all(2),
                    dashPattern: [7, 7, 7, 7],
                    color: Color(0xFF000000),
                    strokeWidth: 1,
                    child:  ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(8.ss)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0.ss,vertical: 8.ss),
                        child: Row(children: [
                          Text(
                            'Upload Image',
                            style: CustomTextStyles.medium166a6a6aMobile,
                          ),
                          Spacer(),
                          Image.asset("asset/icons/tablet/download_8.png",height: getSize(24),width: getSize(24),),
                        ],),
                      ),
                    ),
                  ),
                ),
              ):Center(
                child: ClipRRect(
                  borderRadius:
                  BorderRadius.circular(20),
                  child: Container(
                    height: ScreenConstant
                        .defaultHeightOneForty,
                    width: ScreenConstant
                        .defaultWidthOneSeventy,
                    child: Image.file(
                      fit: BoxFit.fitWidth,
                      File(_homeController
                          .temporaryVehicleImagePath
                          .value),
                    ),
                  ),
                ),
              ),
              ),
              Container(
                height: 30.ss,
              ),
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
                            vertical: 6.h),
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
              ),
              Container(
                height: 10.ss,
              ),
              Obx(()=> _homeController
                  .temporaryDocImagePath
                  .value.isEmpty?InkWell(
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
                child: Container(
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(8.ss)),
                  child: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(12),
                    padding: EdgeInsets.all(2),
                    dashPattern: [7, 7, 7, 7],
                    color: Color(0xFF000000),
                    strokeWidth: 1,
                    child:  Padding(
                      padding:  getPadding(left: 30,right: 40,top: 50,bottom: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(flex:1,child: Text(
                            'Drag and drop files here or', style: CustomTextStyles.medium166a6a6aMobile,),),
                          Container(width: getHorizontalSize(10)),
                          Expanded(flex:0,child: DottedBorder(
                            borderType: BorderType.RRect,
                            radius: Radius.circular(5),
                            padding: EdgeInsets.symmetric(horizontal: 10.ss,vertical: 3.ss),
                            dashPattern: [6, 6, 6, 6],
                            color: Colors.green,
                            strokeWidth: 1.5,
                            child:  Center(
                              child: Text(
                                'Browse',
                                style: CustomTextStyles.medium166a6a6aMobile,
                              ),
                            ),
                          ),),

                        ],),
                    ),
                  ),
                ),
              ):Center(
                child: ClipRRect(
                  borderRadius:
                  BorderRadius.circular(20),
                  child: Container(
                    height: ScreenConstant
                        .defaultHeightOneForty,
                    width: ScreenConstant
                        .defaultWidthOneSeventy,
                    child: Image.file(
                      fit: BoxFit.fitWidth,
                      File(_homeController
                          .temporaryDocImagePath
                          .value),
                    ),
                  ),
                ),
              ),
              ),
              Container(
                height: 15.ss,
              ),
              Obx(()=> _homeController
                  .temporaryDocImagePath
                  .value.isEmpty? Padding(
                padding: getPadding(left: 40,right: 40),
                child: SizedBox(

                  child: Text(
                    'Upload up to 3 Files. Max File Size: 10MB. Support Multiple File Formats',
                    style: CustomTextStyles.light146a6a6aMobile,textAlign: TextAlign.center,),
                ),
              ):const Offstage(),
              ),
              Container(height: 100.ss,)
            ],
          ),
        ),
      ),
    );
  }
}
