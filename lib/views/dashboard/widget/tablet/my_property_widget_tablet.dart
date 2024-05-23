import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/tablet_size_utils.dart';
import 'package:main/utils/theme/custom_button_style.dart';
import 'package:main/utils/widgets_utils/widgets/custom_elevated_button.dart';
import 'package:sizing/sizing.dart';

import '../../../../device_manger/screen_constants.dart';
import '../../../../utils/theme/custom_text_style.dart';

class MyPropertyCardWidgetTablet extends StatelessWidget {
  const MyPropertyCardWidgetTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('tablet');
    final mediaQuery = MediaQuery.of(context).size;
    return Card(
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
                          EdgeInsets.only(left: 10.h, right: 10.h, top: 5.v,bottom: 15.v),
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
                    left: -1.h,
                    bottom: 0,
                    child: CustomElevatedContainer(
                      height: 30.v,
                        border: Border.all(color: Colors.white),
                        //  width: (MediaQuery.of(context).size.width / 4) ,

                        text: "",
                        richText: RichText(
                          text: TextSpan(
                            text: 'Purchase price :',
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
                      top: 20,
                      right: 30,
                      child: Row(
                        children: [

                          Container(
                            height: ScreenConstant.defaultHeightForty-5,
                            width: ScreenConstant.defaultHeightForty-5,
                            decoration: BoxDecoration(
                                color: Colors.red.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Icon(
                                Icons.favorite_border_rounded,
                                size: 12.ss,
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // First Row
                          Row(
                            children: [
                              Text(
                                "Property Status: ",
                                style: CustomTextStyles.lightbodyBlackTablet,
                              ),
                              Text(
                                "Vacant",
                                style: CustomTextStyles.semiBoldbodyGreenTablet,
                              ),
                            ],
                          ),
                          // Second Row
Container(height: ScreenConstant.defaultHeightTen,),
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
                                          "12 no Excepteur sint occaeca",
                                          style: CustomTextStyles
                                              .light9bodyBlackTablet,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: getTabletPadding(
                                    top: 5, left: 10, right: 10),
                                width: 1.h,
                                height: ScreenConstant.defaultHeightTwentyThree,
                                color: Colors.grey,
                              ),
                              Container(
                                width: 10.h,
                              ),
                              Flexible(
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'asset/icons/tablet/home_icon.svg',
                                      height: ScreenConstant.defaultHeightTwentyThree,
                                    ),
                                    Container(
                                      width: getTabletHorizontalSize(5),
                                    ),
                                    Flexible(
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Row(
                                          children: [
                                            RichText(
                                              overflow: TextOverflow.ellipsis,
                                              text: TextSpan(
                                                text: 'Property no: ',
                                                style: CustomTextStyles
                                                    .medium9bodyBlackTablet,
                                                children: [
                                                  TextSpan(
                                                    text: '1245e25',
                                                    style: CustomTextStyles
                                                        .mediumbodyBlackTablet,
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
                                              .light12TextStyleTablet,
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
                                              .light12TextStyleTablet,
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
                                                .light12TextStyleTablet,
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
                                              .light12TextStyleTablet,
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
                    SizedBox(width: 10), // Adjust spacing between columns
                    Expanded(
                      flex: 3, // 30% of the width
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: ScreenConstant.sizeDefault),
                          child: SizedBox(
                            height: ScreenConstant.defaultHeightFifty,
                            child: ElevatedButton(
                              onPressed: () {
                                // Add onPressed action for the button
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: FittedBox(
                                  child: Text(
                                "View Details",
                                style: CustomTextStyles.elevatedButtonView,
                              )),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(flex: 0,child: Container(height: ScreenConstant.defaultHeightFifteen,),)
          ],
        ),
      ),
    );
  }
}

class MyPropertyCardWidgetTabletTest extends StatelessWidget {
  const MyPropertyCardWidgetTabletTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('tablet');
    final mediaQuery = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: (MediaQuery.of(context).size.width / 2) - 20, // Half of the screen width with padding
        height: 370.v, // Height as per your requirement
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 12.v),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child:
            Column(
              children: [
                Expanded(
                  flex: 6, // 60% of the available height
                  child: Stack(
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {
                          // Add onTap action if needed
                        },
                        child: Container(
                          padding:EdgeInsets.only(left: 10.h,right: 10.h),
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(20), // Adjust as needed
                           // Example color for the first container
                          ),
                          child: Image.asset(
                            "asset/icons/tablet/first_property_image.png", // Image asset path
                            fit: BoxFit.cover, // Adjust as needed
                          ),
                        ),
                      ),
                      Positioned(left: -1,bottom: 0,
                        child:
                         CustomElevatedContainer(
                            border: Border.all(color: Colors.white),
                            //  width: (MediaQuery.of(context).size.width / 4) ,
                            height: 35.v,
                            text: "Purchase price : 54,300,000 AED",
                            richText: RichText(
                              text:  TextSpan(
                                text: 'Purchase price :',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 16, color: Colors.white)),
                                children: [
                                  TextSpan(
                                    text: ' 54,300,000 AED    ',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700)),
                                  ),
                                ],
                              ),
                            ),
                            //margin: EdgeInsets.only(right: 15.h),
                            buttonStyle:
                            CustomButtonStyles.fillPrimary)
                        ,
                      ),
                      Positioned(
                          top: 20,
                          right: 20,
                          child: Row(
                            children: [
                              Container(
                                height: 20.ss,
                                width: 20.ss,
                                decoration: BoxDecoration(
                                    color: Colors.red.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Center(
                                  child: Icon(
                                    Icons.favorite_border_rounded,
                                    size: 19,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                width: 10.ss,
                              ),
                              Container(
                                height: 20.ss,
                                width: 20.ss,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: SvgPicture.asset(
                                  "asset/icons/tablet/more-one.svg",
                                  color: Colors.black,
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
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
                  flex: 7, // 70% of the width
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // First Row
                      Row(
                        children: [
                          Text(
                            "Property Status: ",
                            style:   GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                          ),
                          Text(
                            "Vacant",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ],
                      ),
                      // Second Row

                          Row(
                            children: [
                              Flexible(
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'asset/icons/tablet/pin.svg',
                                      width: 16,
                                      height: 16,
                                    ),
                                    Flexible(
                                      child: Text(
                                        "12 no Excepteur sint",
                                        style: GoogleFonts.poppins(),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 8),
                                width: 1.h,
                                height: 17.v,
                                color: Colors.grey,
                              ),
                              Container(
                                width: 10.h,
                              ),
                              Flexible(
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'asset/icons/tablet/home_icon.svg',
                                      width: 16,
                                      height: 16,
                                    ),
                                    Container(
                                      width: 10.h,
                                    ),
                                    Flexible(
                                      child: Row(
                                        children: [
                                          Text(
                                            "Property no:",
                                            style: GoogleFonts.poppins(),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Flexible(
                                            child: Text(
                                              "1245e25",
                                              overflow: TextOverflow.ellipsis,
                                              style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
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

                          // Third Row

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
                                          width: 16.ss,
                                          height: 16.ss,
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
                                          style: GoogleFonts.poppins(
                                            fontSize: 10.fss,
                                            color: AppColors.primaryColor,
                                          ),
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
                                        height: 13.ss,
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
                                          width: 14.ss,
                                          height: 14.ss,
                                        ),
                                      ),
                                      Container(
                                        width: 5.h,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Text(
                                          "3",
                                          style: GoogleFonts.poppins(
                                            fontSize: 10.fss,
                                            color: AppColors.primaryColor,
                                          ),
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
                                        margin: EdgeInsets.only(top: 8),
                                        width: 1.ss,
                                        height: 13.ss,
                                        color: Color(0xffD9D9D9),
                                      ),
                                      Container(
                                        width: 5.ss,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 8.0),
                                        child: SvgPicture.asset(
                                          "asset/icons/tablet/alt.svg",
                                          width: 14.ss,
                                          height: 14.ss,
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
                                        width: 5.ss,
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
                                        margin: EdgeInsets.only(top: 8),
                                        width: 1.ss,
                                        height: 13.ss,
                                        color: Color(0xffD9D9D9),
                                      ),
                                      Container(
                                        width: 5.h,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: SvgPicture.asset(
                                          'asset/icons/tablet/parking.svg',
                                          width: 11.ss,
                                          height: 11.ss,
                                        ),
                                      ),
                                      Container(
                                        width: 2.ss,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Text(
                                          "2",
                                          style: GoogleFonts.poppins(
                                            fontSize: 10.fss,
                                            color: AppColors.primaryColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )),
                        ],
                      ),
                    ),
                    SizedBox(width: 10), // Adjust spacing between columns
                    Expanded(
                      flex: 3, // 30% of the width
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {
                            // Add onPressed action for the button
                          },
                          child: Text(
                            "View Details",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
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
    );
  }
}

class MyPropertyCardWidgetTabletTest2 extends StatelessWidget {
  String? image;
  String? name;
  Function()? onTap;

  MyPropertyCardWidgetTabletTest2(
      {Key? key, required this.onTap, required this.image, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0.ss),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFF50C878),
        ),
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.ss, vertical: 8.0),
            child: Expanded(
                child: Column(
              children: [
                Stack(
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        // Add onTap action if needed
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 10.h, right: 10.h),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(20), // Adjust as needed
                          // Example color for the first container
                        ),
                        child: Image.asset(
                          "asset/icons/tablet/first_property_image.png",
                          // Image asset path
                          fit: BoxFit.cover, // Adjust as needed
                        ),
                      ),
                    ),
                    Positioned(
                      left: -1,
                      bottom: 0,
                      child: CustomElevatedContainer(
                          border: Border.all(color: Colors.white),
                          //  width: (MediaQuery.of(context).size.width / 4) ,
                          text: "Purchase price : 54,300,000 AED",
                          richText: RichText(
                            text: TextSpan(
                              text: 'Purchase price :',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(color: Colors.white)),
                              children: [
                                TextSpan(
                                  text: ' 54,300,000 AED    ',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700)),
                                ),
                              ],
                            ),
                          ),
                          //margin: EdgeInsets.only(right: 15.h),
                          buttonStyle: CustomButtonStyles.fillPrimary),
                    ),
                    Positioned(
                        top: 20,
                        right: 20,
                        child: Row(
                          children: [
                            Container(
                              height: 20.ss,
                              width: 20.ss,
                              decoration: BoxDecoration(
                                  color: Colors.red.withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Icon(
                                  Icons.favorite_border_rounded,
                                  size: 19,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              width: 10.ss,
                            ),
                            Container(
                              height: 20.ss,
                              width: 20.ss,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: SvgPicture.asset(
                                "asset/icons/tablet/more-one.svg",
                                color: Colors.black,
                              ),
                            )
                          ],
                        )),
                  ],
                ),
                Stack(
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        // Add onTap action if needed
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 10.h, right: 10.h),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(20), // Adjust as needed
                          // Example color for the first container
                        ),
                        child: Image.asset(
                          "asset/icons/tablet/first_property_image.png",
                          // Image asset path
                          fit: BoxFit.cover, // Adjust as needed
                        ),
                      ),
                    ),
                    Positioned(
                      left: -1,
                      bottom: 0,
                      child: CustomElevatedContainer(
                          border: Border.all(color: Colors.white),
                          //  width: (MediaQuery.of(context).size.width / 4) ,
                          text: "Purchase price : 54,300,000 AED",
                          richText: RichText(
                            text: TextSpan(
                              text: 'Purchase price :',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(color: Colors.white)),
                              children: [
                                TextSpan(
                                  text: ' 54,300,000 AED    ',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700)),
                                ),
                              ],
                            ),
                          ),
                          //margin: EdgeInsets.only(right: 15.h),
                          buttonStyle: CustomButtonStyles.fillPrimary),
                    ),
                    Positioned(
                        top: 20,
                        right: 20,
                        child: Row(
                          children: [
                            Container(
                              height: 20.ss,
                              width: 20.ss,
                              decoration: BoxDecoration(
                                  color: Colors.red.withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Icon(
                                  Icons.favorite_border_rounded,
                                  size: 19,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              width: 10.ss,
                            ),
                            Container(
                              height: 20.ss,
                              width: 20.ss,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: SvgPicture.asset(
                                "asset/icons/tablet/more-one.svg",
                                color: Colors.black,
                              ),
                            )
                          ],
                        )),
                  ],
                ),
                Container(height: ScreenConstant.defaultHeightTwenty),
              ],
            ))),
      ),
    );
  }
}
