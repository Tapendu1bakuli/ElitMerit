import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/core/utils/image_constant.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/phone_size_utils.dart';
import 'package:main/utils/theme/app_decoration.dart';
import 'package:main/utils/theme/custom_button_style.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:main/utils/theme/theme_helper.dart';
import 'package:main/utils/widgets_utils/mobile/common_button.dart';
import 'package:main/utils/widgets_utils/widgets/custom_elevated_button.dart';
import 'package:main/utils/widgets_utils/widgets/custom_image_view.dart';
import 'package:main/utils/widgets_utils/widgets/custom_outlined_button.dart';
import 'package:sizing/sizing.dart';

import '../../../../device_manger/screen_constants.dart';

class MyPropertyCardWidgetMobile extends StatelessWidget {
  const MyPropertyCardWidgetMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   print("width :" + SizeUtils.figmaDesignWidth.toString());
   print("height :" + SizeUtils.figmaDesignHeight.toString());
    final mediaQuery = MediaQuery.of(context).size;
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 11.h,
          vertical: 13.v,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.white),
        child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(
                height: 235.v,
                width: 364.h,
                child:

                Stack(children: [

                  Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: 212.v,
                          width: 364.h,
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle4232,
                                height: 212.v,
                                width: 364.h,
                                radius: BorderRadius.circular(
                                  16.h,
                                ),
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 17.v,
                                    right: 12.h,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        decoration: BoxDecoration(
                                            color: Colors.red.withOpacity(0.8),
                                            borderRadius: BorderRadius.circular(20)),
                                        child:  Icon(
                                          Icons.favorite_border_rounded,
                                          size: 14.adaptSize,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Container(
                                        height: 19.adaptSize,
                                        width: 19.adaptSize,
                                        padding: getPadding(all: 3),
                                        margin: EdgeInsets.only(
                                          left: 4.h,
                                          bottom: 3.v,
                                        ),
                                        decoration: AppDecoration.fillGray.copyWith(
                                          borderRadius:
                                          BorderRadiusStyle.roundedBorder10,
                                        ),
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgNotification,
                                          height: 18.adaptSize,
                                          width: 18.adaptSize,
                                          alignment: Alignment.bottomRight,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                  Positioned(left: 2,bottom: 5,child:  CustomElevatedContainer(
                      border: Border.all(color: Colors.white),
                      width: 252.h,
                      height: 35.v,
                      text: "Purchase price : 54,300,000 AED",
                      richText: RichText(
                        text:  TextSpan(
                          text: 'Purchase price :',
                          style: CustomTextStyles.light14TextStyleMobile,
                          children: [
                            TextSpan(
                              text: ' 54,300,000 AED',
                              style: CustomTextStyles.semiBold14TextStyleMobile,
                            ),
                          ],
                        ),
                      ),
                      //margin: EdgeInsets.only(right: 15.h),
                      buttonStyle:
                      CustomButtonStyles.fillPrimary),)

                ],),
              ),


              Container(
                height: 10.v,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Property Status:",
                        style: CustomTextStyles.light10TextStyleMobile,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "Vacant",
                        style: CustomTextStyles.semiBold10TextStyleMobile,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                height: 9.v,
              ),
        Padding(
          padding: EdgeInsets.only(left: 14.h),
          child:
              Row(
                children: [

                  SvgPicture.asset('asset/icons/tablet/pin.svg',height: getSize(16),width: getSize(16),),
                  Container(
                    width: 2.h,
                  ),
                  Text(
                    "12 no Excepteur sint occaeca",
                    style: CustomTextStyles.light9TextStyleMobile
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  Container(
                    width: 1.h,
                    height: 13.v,
                    color: Color(0xffD9D9D9),
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  SvgPicture.asset('asset/icons/tablet/home_icon.svg',height: getSize(14),width: getSize(14)),
                  SizedBox(
                    width: 5.h,
                  ),
                  Text(
                    "Property no:",
                    style: CustomTextStyles.light9TextStyleMobile,
                  ),
                  Text(
                    " 1245e25",
                    style: CustomTextStyles.medium9TextStyleMobile,
                  ),
                ],
              ),
        ),

              Container(
                height: 8.v,
              ),
        Padding(
          padding: EdgeInsets.only(left: 14.h),
          child:
              Row(
                children: [
                  Padding(
                    padding: getPadding(top: 2),
                    child: SvgPicture.asset(
                      "asset/icons/tablet/bed.svg",
                     height: getSize(16),width: getSize(16),
                    ),
                  ),
                  Container(
                    width: 5.h,
                  ),
                  Padding(
                    padding: getPadding(top: 8),
                    child: Text(
                      "3",
                      style: CustomTextStyles.light12TextStyleMobile,
                    ),
                  ),
                  Container(
                    width: 10.h,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    width: 1.h,
                    height: 13.v,
                    color: Color(0xffD9D9D9),
                  ),
                  Container(
                    width: 10.ss,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SvgPicture.asset(
                      "asset/icons/tablet/shower.svg",
                      height: getSize(16),width: getSize(16),
                    ),
                  ),
                  Container(
                    width: 5.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      "2",
                      style: CustomTextStyles.light12TextStyleMobile,
                    ),
                  ),
                  Container(
                    width: 10.ss,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    width: 1.h,
                    height: 13.v,
                    color: Color(0xffD9D9D9),
                  ),
                  Container(
                    width: 10.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SvgPicture.asset(
                      "asset/icons/tablet/alt.svg",
                      height: getSize(16),width: getSize(16),
                    ),
                  ),
                  Container(
                    width: 5.ss,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "12,254 ",
                      style: CustomTextStyles.light12TextStyleMobile,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "sqft",
                      style: CustomTextStyles.light12000000TextStyleMobile
                    ),
                  ),
                  Container(
                    width: 10.ss,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    width: 1.ss,
                    height: 13.ss,
                    color: Color(0xffD9D9D9),
                  ),
                  Container(
                    width: 10.ss,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SvgPicture.asset(
                      'asset/icons/tablet/parking.svg',
                      height: getSize(14),width: getSize(14),
                    ),
                  ),
                  Container(
                    width: 5.ss,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      "2",
                      style: CustomTextStyles.light12TextStyleMobile,
                    ),
                  ),
                ],
              ),),
              SizedBox(height: 15.v),
              Padding(padding:const EdgeInsets.only(left: 16.0),
              child: InkWell(
                onTap: () {},
                child: Container(

                  width: getSize(134),
                  height: getSize(35),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'View Details',
                      style: CustomTextStyles.medium14TextStyleMobile,
                    ),
                  ),
                ),
              ),)
              ,
              SizedBox(height: 8.v),
            ],
          ),

      ),
    );
  }
}



