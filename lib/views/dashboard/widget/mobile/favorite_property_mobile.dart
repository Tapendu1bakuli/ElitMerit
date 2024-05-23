import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/phone_size_utils.dart';
import 'package:main/utils/widgets_utils/mobile/common_button.dart';
import 'package:sizing/sizing.dart';

import '../../../../device_manger/screen_constants.dart';
import '../../../../utils/core/utils/image_constant.dart';
import '../../../../utils/core/utils/updated_size_utils.dart';
import '../../../../utils/theme/app_decoration.dart';
import '../../../../utils/theme/custom_button_style.dart';
import '../../../../utils/theme/custom_text_style.dart';
import '../../../../utils/widgets_utils/widgets/custom_elevated_button.dart';
import '../../../../utils/widgets_utils/widgets/custom_image_view.dart';

class FavoritePropertyMobile extends StatelessWidget {
  const FavoritePropertyMobile({Key? key}) : super(key: key);

  @override
  // Widget build(BuildContext context) {
  //   final mediaQuery = MediaQuery.of(context).size;
  //   return Center(
  //     child: Container(
  //       padding: EdgeInsets.symmetric(
  //           horizontal: getHorizontalSize(12), vertical: getVerticalSize(12)),
  //       decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(30), color: Colors.white),
  //       child: Stack(children: [
  //         Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Container(
  //                 width: ScreenConstant.screenHeightOneSeventh,
  //                 //width: getSize(364),
  //                 child: ClipRRect(
  //                   borderRadius: BorderRadius.circular(20),
  //                   child: Image.asset(
  //                       "asset/images/tablet/modern-house-with-sky.jpg"),
  //                 )),
  //             Container(
  //               height: getSize(20),
  //             ),
  //             Text('Excepteur sint occaecat cupidatat',
  //                 style: GoogleFonts.poppins(
  //                   color: Colors.black,
  //                   fontSize: 16.fss,
  //                   fontWeight: FontWeight.w500,
  //                 )),
  //             Container(
  //               height: getSize(20),
  //             ),
  //             Row(
  //               children: [
  //                 // Icon(Icons.location_on_outlined),
  //                 SvgPicture.asset('asset/icons/tablet/pin.svg'),
  //                 SizedBox(
  //                   width: getSize(5),
  //                 ),
  //                 Text(
  //                   "12 no Excepteur sint occaeca",
  //                   style: GoogleFonts.poppins(
  //                       fontSize: 12.fss, fontWeight: FontWeight.w300),
  //                 ),
  //                 SizedBox(
  //                   width: getSize(10),
  //                 ),
  //                 Container(
  //                   width: getSize(2),
  //                   height: getSize(17),
  //                   color: Color(0xffD9D9D9),
  //                 ),
  //                 SizedBox(
  //                   width: getSize(10),
  //                 ),
  //                 SvgPicture.asset('asset/icons/tablet/cal_add.svg'),
  //                 SizedBox(
  //                   width: getSize(5),
  //                 ),
  //                 Text(
  //                   "4 months ago ...",
  //                   style: GoogleFonts.poppins(
  //                     fontSize: 9.fss,
  //                     fontWeight: FontWeight.w300,
  //                   ),
  //                 ),
  //               ],
  //             ),
  //             SizedBox(
  //               height: getSize(15),
  //             ),
  //             Text(
  //               'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi ',
  //               style: GoogleFonts.poppins(
  //                 fontSize: 10.fss,
  //                 fontWeight: FontWeight.w300,
  //               ),
  //             ),
  //             SizedBox(
  //               height: getSize(15),
  //             ),
  //             Row(
  //               children: [
  //                 Padding(
  //                   padding: EdgeInsets.zero,
  //                   child: SvgPicture.asset(
  //                     "asset/icons/tablet/bed.svg",
  //                   ),
  //                 ),
  //                 SizedBox(
  //                   width: getSize(5),
  //                 ),
  //                 Padding(
  //                   padding: EdgeInsets.only(top: getVerticalSize(8)),
  //                   child: Text(
  //                     "3",
  //                     style: GoogleFonts.poppins(
  //                       fontSize: 10.fss,
  //                       color: AppColors.primaryColor,
  //                     ),
  //                   ),
  //                 ),
  //                 SizedBox(
  //                   width: getSize(10),
  //                 ),
  //                 Container(
  //                   margin: EdgeInsets.only(top: getVerticalSize(8)),
  //                   width: getSize(2),
  //                   height: getSize(17),
  //                   color: Color(0xffD9D9D9),
  //                 ),
  //                 SizedBox(
  //                   width: getSize(10),
  //                 ),
  //                 Padding(
  //                   padding: EdgeInsets.only(top: getVerticalSize(8)),
  //                   child: SvgPicture.asset(
  //                     "asset/icons/tablet/shower.svg",
  //                   ),
  //                 ),
  //                 SizedBox(
  //                   width: getSize(5),
  //                 ),
  //                 Padding(
  //                   padding: EdgeInsets.only(top: getVerticalSize(8)),
  //                   child: Text(
  //                     "3",
  //                     style: GoogleFonts.poppins(
  //                       fontSize: 10.fss,
  //                       color: AppColors.primaryColor,
  //                     ),
  //                   ),
  //                 ),
  //                 SizedBox(
  //                   width: getSize(10),
  //                 ),
  //                 Container(
  //                   margin: EdgeInsets.only(top: getVerticalSize(8)),
  //                   width: getSize(2),
  //                   height: getSize(17),
  //                   color: Color(0xffD9D9D9),
  //                 ),
  //                 SizedBox(
  //                   width: getSize(10),
  //                 ),
  //                 Padding(
  //                   padding: EdgeInsets.only(top: getVerticalSize(8)),
  //                   child: SvgPicture.asset(
  //                     "asset/icons/tablet/alt.svg",
  //                   ),
  //                 ),
  //                 SizedBox(
  //                   width: getSize(5),
  //                 ),
  //                 Padding(
  //                   padding: EdgeInsets.only(top: getVerticalSize(8)),
  //                   child: Text(
  //                     "12,254 ",
  //                     style: GoogleFonts.poppins(
  //                       fontSize: 10.fss,
  //                       color: AppColors.primaryColor,
  //                     ),
  //                   ),
  //                 ),
  //                 Padding(
  //                   padding: EdgeInsets.only(top: getVerticalSize(8)),
  //                   child: Text(
  //                     "sqft",
  //                     style: GoogleFonts.poppins(
  //                       fontSize: 10.fss,
  //                     ),
  //                   ),
  //                 ),
  //                 SizedBox(
  //                   width: getSize(10),
  //                 ),
  //                 Container(
  //                   margin: EdgeInsets.only(top: getVerticalSize(8)),
  //                   width: getSize(2),
  //                   height: getSize(17),
  //                   color: Color(0xffD9D9D9),
  //                 ),
  //                 SizedBox(
  //                   width: getSize(10),
  //                 ),
  //                 Padding(
  //                   padding: EdgeInsets.only(top: getVerticalSize(8)),
  //                   child: SvgPicture.asset(
  //                     'asset/icons/tablet/parking.svg',
  //                     width: getSize(14),
  //                     height: getSize(14),
  //                   ),
  //                 ),
  //                 SizedBox(
  //                   width: getSize(5),
  //                 ),
  //                 Padding(
  //                   padding: EdgeInsets.only(top: getVerticalSize(8)),
  //                   child: Text(
  //                     "2",
  //                     style: GoogleFonts.poppins(
  //                       fontSize: 10.fss,
  //                       color: AppColors.primaryColor,
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //             SizedBox(height: getSize(20)),
  //           ],
  //         ),
  //         Positioned(
  //             //top: 195.ss,
  //             top: mediaQuery.height * 0.24,
  //             left: 0.ss,
  //             right: 110.ss,
  //             child: Container(
  //               padding: EdgeInsets.all(
  //                 1.ss,
  //               ),
  //               decoration: BoxDecoration(
  //                   color: Colors.white,
  //                   borderRadius: BorderRadius.only(
  //                     bottomRight: Radius.circular(5.ss),
  //                     bottomLeft: Radius.circular(10.ss),
  //                     topRight: Radius.circular(5.ss),
  //                   )),
  //               child: Container(
  //                 padding: EdgeInsets.symmetric(horizontal: 15),
  //                 decoration: BoxDecoration(
  //                     color: AppColors.primaryColor,
  //                     borderRadius: BorderRadius.only(
  //                       bottomRight: Radius.circular(5.ss),
  //                       bottomLeft: Radius.circular(10.ss),
  //                       topRight: Radius.circular(5.ss),
  //                     )),
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.center,
  //                   children: [
  //                     Container(
  //                       height: 5.ss,
  //                     ),
  //                     Row(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: [
  //                         Text(
  //                           "54,300,000 AED",
  //                           style: GoogleFonts.poppins(
  //                               textStyle: TextStyle(
  //                                   fontSize: 10.ss,
  //                                   color: Colors.white,
  //                                   fontWeight: FontWeight.w700)),
  //                         ),
  //                         SizedBox(width: getSize(10)),
  //                         Text(
  //                           "54,300,000 AED",
  //                           style: GoogleFonts.poppins(
  //                               textStyle: TextStyle(
  //                                   decoration: TextDecoration.lineThrough,
  //                                   decorationColor: Colors.white,
  //                                   fontSize: 10.ss,
  //                                   color: Colors.white)),
  //                         ),
  //                       ],
  //                     ),
  //                     Container(
  //                       height: 5.ss,
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             )),
  //         Positioned(
  //             top: 20,
  //             right: 20,
  //             child: Row(
  //               children: [
  //                 Container(
  //                   height: 20.ss,
  //                   width: 20.ss,
  //                   decoration: BoxDecoration(
  //                       color: Colors.red.withOpacity(0.8),
  //                       borderRadius: BorderRadius.circular(20)),
  //                   child: Icon(
  //                     Icons.favorite_border_rounded,
  //                     size: 14,
  //                     color: Colors.white,
  //                   ),
  //                 ),
  //                 Container(
  //                   width: 10.ss,
  //                 ),
  //                 Container(
  //                   height: 20.ss,
  //                   width: 20.ss,
  //                   decoration: BoxDecoration(
  //                       color: Colors.white,
  //                       borderRadius: BorderRadius.circular(20)),
  //                   child: SvgPicture.asset(
  //                     "asset/icons/tablet/more-one.svg",
  //                     color: Colors.black,
  //                   ),
  //                 )
  //               ],
  //             )),
  //       ]),
  //     ),
  //   );
  // }
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
                            Padding(
                              padding: EdgeInsets.only(bottom: ScreenConstant.defaultHeightFifteen),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgRectangle4232,
                                height: 212.v,
                                width: 364.h,
                                radius: BorderRadius.circular(
                                  16.h,
                                ),
                                alignment: Alignment.center,
                              ),
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
                                        margin: EdgeInsets.only(
                                          left: 10.h,
                                          bottom: 3.v,
                                        ),
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      decoration: AppDecoration.fillGray.copyWith(
                                        borderRadius:BorderRadius.circular(20),
                                      ),
                                      child:  CustomImageView(
                                        imagePath: ImageConstant.imgNotification,
                                        height: 18.adaptSize,
                                        width: 18.adaptSize,
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                    // Container(
                                    //   height: 24.adaptSize,
                                    //   width: 24.adaptSize,
                                    //   margin: EdgeInsets.only(
                                    //     left: 10.h,
                                    //     bottom: 3.v,
                                    //   ),
                                    //   decoration: AppDecoration.fillGray.copyWith(
                                    //     borderRadius:
                                    //     BorderRadiusStyle.roundedBorder10,
                                    //   ),
                                    //   child: CustomImageView(
                                    //     imagePath: ImageConstant.imgNotification,
                                    //     height: 18.adaptSize,
                                    //     width: 18.adaptSize,
                                    //     alignment: Alignment.bottomRight,
                                    //   ),
                                    // ),
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
                Positioned(left: 2,bottom: 0,child:  CustomElevatedContainer(
                  color: Color(0xFF50C878),
                    border: Border.all(color: Colors.white),
                    width: 252.h,
                    height: 35.v,
                    text: "Purchase price : 54,300,000 AED",
                    richText: RichText(
                      text:  TextSpan(
                        text: '54,300,000 AED',
                        style: CustomTextStyles.semiBold14Mobile,
                        children: [
                          TextSpan(
                            text: ' 54,300,000 AED',
                            style: CustomTextStyles.light14FFFFFFMobile,
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
            Padding(padding: EdgeInsets.only(left: 14.h),child:
                          Text('Excepteur sint occaecat cupidatat',
                              style: CustomTextStyles.medium16BlackMobile),
              ),
            Container(
              height: 5.v,
            ),
            Padding(
              padding: EdgeInsets.only(left: 14.h),
              child:
                          Row(
                            children: [
                              // Icon(Icons.location_on_outlined),
                              SvgPicture.asset('asset/icons/tablet/pin.svg'),
                              SizedBox(
                                width: getSize(5),
                              ),
                              Text(
                                "12 no Excepteur sint occaeca",
                                style: CustomTextStyles.light12Mobile),
                              SizedBox(
                                width: getSize(10),
                              ),
                              Container(
                                width: getSize(2),
                                height: getSize(17),
                                color: Color(0xffD9D9D9),
                              ),
                              SizedBox(
                                width: getSize(10),
                              ),
                              SvgPicture.asset('asset/icons/tablet/cal_add.svg'),
                              SizedBox(
                                width: getSize(5),
                              ),
                              Text(
                                "4 months ago ...",
                                style: CustomTextStyles.light9Mobile,
                              ),
                            ],
                          ),
            ),

                        SizedBox(
                          height: getSize(15),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 14.0.h),
                          child: Text(
                            'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi ',
                            style: CustomTextStyles.light10Mobile,
                          ),
                        ),
                        SizedBox(
                          height: getSize(10),
                        ),
            Padding(
              padding: EdgeInsets.only(left: 14.h),
              child:
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.zero,
                    child: SvgPicture.asset(
                      "asset/icons/tablet/bed.svg",
                    ),
                  ),
                  Container(
                    width: 5.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      "3",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: AppColors.primaryColor,
                      ),
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
                    ),
                  ),
                  Container(
                    width: 5.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      "2",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: AppColors.primaryColor,
                      ),
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
                    ),
                  ),
                  Container(
                    width: 5.ss,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "12,254 ",
                      style: GoogleFonts.poppins(
                        fontSize: 10.fss,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "sqft",
                      style: GoogleFonts.poppins(
                        fontSize: 10.fss,
                      ),
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
                      width: 12.ss,
                      height: 12.ss,
                    ),
                  ),
                  Container(
                    width: 5.ss,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      "2",
                      style: GoogleFonts.poppins(
                        fontSize: 10.fss,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),),
            SizedBox(height: 15.v),
          ],
        ),

      ),
    );
  }
}
