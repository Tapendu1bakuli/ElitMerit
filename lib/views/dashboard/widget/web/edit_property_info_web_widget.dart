import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/core/utils/image_constant.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/screen_constants.dart';
import 'package:main/utils/tablet_size_utils.dart';
import 'package:main/utils/theme/app_decoration.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:main/utils/theme/theme_helper.dart';
import 'package:main/utils/widgets_utils/widgets/custom_elevated_button.dart';
import 'package:main/utils/widgets_utils/widgets/custom_image_view.dart';
import 'package:main/utils/widgets_utils/widgets/custom_text_form_field.dart';
import 'package:main/views/dashboard/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:sizing/sizing.dart';

class EditPropertyInfoWebWidget extends StatefulWidget {
  const EditPropertyInfoWebWidget({super.key});

  @override
  EditPropertyInfoTabletWidgetState createState() =>
      EditPropertyInfoTabletWidgetState();
}

class EditPropertyInfoTabletWidgetState
    extends State<EditPropertyInfoWebWidget> {
  TextEditingController nameController = TextEditingController();

  TextEditingController eElevenController = TextEditingController();

  TextEditingController priceController = TextEditingController();
  final HomeController _homeController = Get.put(HomeController());
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return _buildPropertyType(context);
  }

  /// Section Widget
  Widget _buildPropertyType(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Row(children: [
         Expanded(child: _propertyTypeList(0)),
         SizedBox(width: 10.ss,),
         Expanded(child: _propertyTypeList(1)),
         SizedBox(width: 10.ss,),
         Expanded(child: _propertyTypeList(2)),
         SizedBox(width: 10.ss,),
         Expanded(child: _propertyTypeList(3)),

       ],),
        SizedBox(height: getTabletSize(40)),
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
        Row(
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 4,
                      child: CustomElevatedButton(
                        height: ScreenConstant.defaultHeightSixty,
                        text: "Rented",
                        buttonTextStyle: CustomTextStyles
                            .regular18TextStyleTablet
                            .copyWith(color: Colors.white),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Center(
                        child: Text(
                          "Vacant",
                          style: CustomTextStyles.regular18TextStyleTablet
                              .copyWith(color: Colors.black),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 15.ss),
            Expanded(
              child: Container(
                height: ScreenConstant.defaultHeightSixty,
                padding: EdgeInsets.symmetric(vertical: 5.v),
                decoration: AppDecoration.outlineBlack9005.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    SizedBox(
                      width: ScreenConstant.defaultWidthForty,
                      height: ScreenConstant.defaultHeightForty,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: getTabletSize(40),
                              width: getTabletSize(50),
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
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgThumbsup,
                            height: 20.ss,
                            width: 20.ss,
                            alignment: Alignment.bottomCenter,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 15.ss),
            Expanded(
              child: Container(
                height: ScreenConstant.defaultHeightSixty,
                padding: EdgeInsets.symmetric(vertical: 5.v),
                decoration: AppDecoration.outlineBlack9005.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    SizedBox(
                      width: ScreenConstant.defaultWidthForty,
                      height: ScreenConstant.defaultHeightForty,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: getTabletSize(40),
                              width: getTabletSize(50),
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
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgThumbsup,
                            height: 20.ss,
                            width: 20.ss,
                            alignment: Alignment.bottomCenter,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 15.ss),
            Expanded(
              child: Container(
                height: ScreenConstant.defaultHeightSixty,
                padding: EdgeInsets.symmetric(vertical: 5.v),
                decoration: AppDecoration.outlineBlack9005.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    SizedBox(
                      width: ScreenConstant.defaultWidthForty,
                      height: ScreenConstant.defaultHeightForty,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: getTabletSize(40),
                              width: getTabletSize(50),
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
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgThumbsup,
                            height: 20.ss,
                            width: 20.ss,
                            alignment: Alignment.bottomCenter,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: getTabletSize(40)),
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Text(
            "Project name",
            style: CustomTextStyles.medium18000000TextStyleTablet,
          ),
        ),
        SizedBox(height: 12.v),
        Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: CustomTextFormField(
            controller: nameController,
            textStyle: CustomTextStyles.regular18TextStyleTablet.copyWith(
            fontSize: getTabletFontSize(18), fontWeight: FontWeight.w500 ,color : Colors.black),
            hintText: "A beautiful house rent",
            hintStyle: CustomTextStyles.regular18TextStyleTablet.copyWith(
                fontSize: getTabletFontSize(18), fontWeight: FontWeight.w500),
            suffix: CustomImageView(
                imagePath: ImageConstant.imgLinkedin,
                height: 20.ss,
                width: 20.ss).marginOnly(right: 10),
            suffixConstraints: BoxConstraints(
              maxHeight: 15.ss,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineBlack,
            fillColor: theme.colorScheme.onErrorContainer,
          ),
        ),
        SizedBox(height: getTabletSize(40)),
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
                  controller: eElevenController,
                  hintText: "1542e11",
                  textStyle: CustomTextStyles.regular18TextStyleTablet.copyWith(
                      fontSize: getTabletFontSize(18), fontWeight: FontWeight.w500 ,color : Colors.black),
                  hintStyle: CustomTextStyles.regular18TextStyleTablet.copyWith(
                      fontSize: getTabletFontSize(18),
                      fontWeight: FontWeight.w500),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 15.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                  fillColor: theme.colorScheme.onErrorContainer,
                ),
              ),
            ),
            SizedBox(width: getTabletSize(20)),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: CustomTextFormField(
                  controller: priceController,
                  hintText: "54,300,000 AED",
                  textStyle: CustomTextStyles.regular18TextStyleTablet.copyWith(
                      fontSize: getTabletFontSize(18), fontWeight: FontWeight.w500 ,color : Colors.black),
                  hintStyle: CustomTextStyles.regular18TextStyleTablet.copyWith(
                      fontSize: getTabletFontSize(18),
                      fontWeight: FontWeight.w500),
                  textInputAction: TextInputAction.done,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 15.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                  fillColor: theme.colorScheme.onErrorContainer,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: getTabletSize(40)),
        Container(
          decoration: AppDecoration.outlineBlack.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Row(
            children: [
              Expanded(
                child: CustomElevatedButton(
                  height: ScreenConstant.defaultHeightSeventySix,
                  text: "Single Payment",
                  buttonTextStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: getTabletFontSize(20),
                    color: AppColors.whiteColor,
                  )),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Installments",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: getTabletFontSize(20),
                      color: AppColors.blackColor,
                    )),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: getTabletSize(40)),
      ],
    );
  }

  Widget _propertyTypeList(int index){
    return  Container(
      height: ScreenConstant.defaultHeightTwoHundred,
      margin: EdgeInsets.zero,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          color: selectedIndex == index
              ? AppColors.primaryColor
              : AppColors.whiteColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          onTap: () {
            setState(() {});
            selectedIndex = index;
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: getTabletSize(5)),
              CustomImageView(
                imagePath: _homeController.propertyType[index].image,
                height: ScreenConstant.defaultHeightSeventySix,
                fit: BoxFit.contain,
                width: getTabletSize(80),
                color: selectedIndex == index
                    ? AppColors.whiteColor
                    : AppColors.primaryColor,
              ),
              SizedBox(height: getTabletSize(10)),
              Flexible(
                child: Text(
                  _homeController.propertyType[index].title!,
                  style: CustomTextStyles.medium16Tablet.copyWith(
                      color: selectedIndex == index
                          ? AppColors.whiteColor
                          : AppColors.blackColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



