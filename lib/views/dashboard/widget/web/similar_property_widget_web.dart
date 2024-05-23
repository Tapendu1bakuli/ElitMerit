import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:sizing/sizing.dart';

import '../../../../device_manger/screen_constants.dart';
import '../../../../utils/tablet_size_utils.dart';
import '../../../../utils/theme/custom_button_style.dart';
import '../../../../utils/theme/custom_text_style.dart';
import '../../../../utils/widgets_utils/widgets/search_and_filter_custom_container.dart';
class SimilarPropertyWidgetWeb extends StatelessWidget {
  const SimilarPropertyWidgetWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 7, // 60% of the available height
              child: Stack(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      // Add onTap action if needed
                    },
                    child: Container(
                      width: double.maxFinite,
                      padding:
                      EdgeInsets.only(left: 10.h, right: 10.h, top: 5.v,bottom: 13.v),
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(20), // Adjust as needed
                        // Example color for the first container
                      ),
                      child: Image.asset(
                        "asset/icons/tablet/first_property_image.png",
                        // Image asset path
                        fit: BoxFit.fill, // Adjust as needed
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10.v,
                    bottom: 10.v,
                    child: CustomElevatedContainerForFavourites(
                        height: 30.v,
                        border: Border.all(color: Colors.white),
                        //  width: (MediaQuery.of(context).size.width / 4) ,

                        text: "",
                        richText: RichText(
                          text: TextSpan(
                            text: 'For Sale :',
                            style:
                            CustomTextStyles.light14FFFFFFTextStyleTablet,
                            children: [
                              TextSpan(
                                text: ' 54,300,000 AED    ',
                                style:
                                CustomTextStyles.semiBold14TextStyleTablet,
                              ),
                            ],
                          ),
                        ),
                        //margin: EdgeInsets.only(right: 15.h),
                        buttonStyle: CustomButtonStyles.fillPrimary),
                  ),
                  Positioned(
                      top: 25.v,
                      right: 60.h,
                      child: Row(
                        children: [
                          Container(
                            height: ScreenConstant.defaultHeightForty-5,
                            width: ScreenConstant.defaultHeightForty-5,
                            decoration: BoxDecoration(
                                color: Color(0xFF50C878).withOpacity(0.8),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Icon(
                                Icons.favorite_border_rounded,
                                size: 24,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            width: getTabletHorizontalSize(10),
                          ),
                          Container(
                            height: ScreenConstant.defaultHeightForty-6,
                            width: ScreenConstant.defaultHeightForty-6,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: SvgPicture.asset(
                              "asset/icons/tablet/more-one.svg",
                              height: ScreenConstant.defaultHeightTwentyThree,
                              color: Colors.black,
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            const SizedBox(height: 10),
            // Adjust as needed for spacing between the two containers
            Expanded(
              flex: 3, // 40% of the available height
              child: Container(
                padding: EdgeInsets.all(10.adaptSize),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), // Adjust as needed
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 7, // 60% of the width
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // First Row
                          FittedBox(child:Text(
                            'Excepteur sint occaecat cupidatat',
                            style:   CustomTextStyles.lightbodyBlackTablet16,
                          ))
                          ,
                          // Second Row
                          Container(height: ScreenConstant.defaultHeightTen-5,),
                          Row(
                            children: [
                              Flexible(
                                child: Padding(
                                  padding: getTabletPadding(right: 10),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        'asset/icons/tablet/pin.svg',
                                        height: ScreenConstant.defaultHeightTwentyThree,
                                      ),
                                      Container(
                                        width: getTabletHorizontalSize(5),
                                      ),
                                      Flexible(
                                        child: Text(
                                          "12 no Excepteur sint occaecat cupidatat",
                                          style: CustomTextStyles
                                              .light9bodyBlackTablet,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //Third Row
                          Flexible(
                              child: Row(
                                children: [
                                  Wrap(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.zero,
                                            child: SvgPicture.asset(
                                              "asset/icons/tablet/bed.svg",
                                              height: ScreenConstant.defaultHeightTwentyThree,
                                            ),
                                          ),
                                          Container(
                                            width: 5.ss,
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(top: 8.0),
                                            child: Text(
                                              "3",
                                              style: CustomTextStyles
                                                  .light12BlackTextStyleTablet,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                  Wrap(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 5.ss,
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(top: 8),
                                            width: 1.ss,
                                            height: getTabletSize(17),
                                            color: const Color(0xffD9D9D9),
                                          ),
                                          Container(
                                            width: 5.ss,
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(top: 8.0),
                                            child: SvgPicture.asset(
                                              "asset/icons/tablet/shower.svg",
                                              height: ScreenConstant.defaultHeightTwentyThree,
                                            ),
                                          ),
                                          Container(
                                            width: 5.h,
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(top: 8.0),
                                            child: Text(
                                              "2",
                                              style: CustomTextStyles
                                                  .light12BlackTextStyleTablet,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                  Wrap(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 5.ss,
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(top: 8),
                                            width: 1.ss,
                                            height: getTabletSize(17),
                                            color: const Color(0xffD9D9D9),
                                          ),
                                          Container(
                                            width: 5.ss,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 8.0),
                                            child: SvgPicture.asset(
                                              "asset/icons/tablet/alt.svg",
                                              height: ScreenConstant.defaultHeightTwentyThree,
                                            ),
                                          ),
                                          Container(
                                            width: 5.ss,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 8.0),
                                            child: Text(
                                              "12,254 ",
                                              style: CustomTextStyles
                                                  .light12BlackTextStyleTablet,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 8.0),
                                            child: Text(
                                                "sqft",
                                                style: CustomTextStyles.light12222222TextStyleTablet
                                            ),
                                          ),
                                          // Container(
                                          //   width: 5.ss,
                                          // ),
                                        ],
                                      ),
                                    ],
                                  ),

                                  Wrap(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 5.ss,
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(top: 8),
                                            width: 1.ss,
                                            height: getTabletSize(17),
                                            color: const Color(0xffD9D9D9),
                                          ),
                                          Container(
                                            width: 5.ss,
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(top: 8.0),
                                            child: SvgPicture.asset(
                                              "asset/images/tablet/parking.svg",
                                              height: ScreenConstant.defaultHeightTwenty,
                                            ),
                                          ),
                                          Container(
                                            width: 5.h,
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(top: 8.0),
                                            child: Text(
                                              "2",
                                              style: CustomTextStyles
                                                  .light12BlackTextStyleTablet,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                  // Wrap(
                                  //
                                  //   children: [
                                  //     Row(
                                  //       children: [
                                  //         Container(
                                  //           margin: EdgeInsets.only(top: 8),
                                  //           width: 1.ss,
                                  //           height: 13.ss,
                                  //           color: Color(0xffD9D9D9),
                                  //         ),
                                  //         Container(
                                  //           width: 5.h,
                                  //         ),
                                  //         Padding(
                                  //           padding: const EdgeInsets.only(top: 8.0),
                                  //           child: SvgPicture.asset(
                                  //             'asset/icons/tablet/parking.svg',
                                  //             width: 11.ss,
                                  //             height: 11.ss,
                                  //           ),
                                  //         ),
                                  //         Container(
                                  //           width: 2.ss,
                                  //         ),
                                  //         Padding(
                                  //           padding: const EdgeInsets.only(top: 8.0),
                                  //           child: Text(
                                  //             "2",
                                  //             style: GoogleFonts.poppins(
                                  //               fontSize: 10.fss,
                                  //               color: AppColors.primaryColor,
                                  //             ),
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //
                                  //   ],
                                  // ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Expanded(flex: 0,child: Container(height: ScreenConstant.defaultHeightFifteen,),)
          ],
        ),
      ),
    );
  }
}
