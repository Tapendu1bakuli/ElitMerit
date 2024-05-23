import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/tablet_size_utils.dart';
import 'package:main/utils/theme/custom_button_style.dart';
import 'package:main/utils/widgets_utils/widgets/custom_elevated_button.dart';
import 'package:main/utils/widows_size_utilis.dart';
import 'package:sizing/sizing.dart';
import '../../../../device_manger/screen_constants.dart';
import '../../../../utils/theme/custom_text_style.dart';

class MyPropertyCardWidgetWeb extends StatelessWidget {
  const MyPropertyCardWidgetWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final mediaQuery = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
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
                          EdgeInsets.only(left: 0, right: 10.h, top: 5.v,bottom: 15.v),
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
                    left: 0,
                    bottom: 0,
                    child: CustomElevatedContainer(
                      height: 30.v,
                        border: Border.all(color: Colors.white),
                        //  width: (MediaQuery.of(context).size.width / 4) ,

                        text: "",
                        richText: RichText(
                          text: TextSpan(
                            text: 'Purchase price :',
                            style: CustomTextStyles.light14WithoutFssFFFFFFTextStyleTablet,
                            children: [
                              TextSpan(
                                text: ' 54,300,000 AED    ',
                                style:
                                    CustomTextStyles.semiBold14WithOutFssTextStyleTablet
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
                            width: getWebHorizontalSize(10),
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
                        Container(height: 8.ss),
                          Expanded(
                            flex: 6,
                            child: Row(
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: getWebPadding(right: 10),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          'asset/icons/tablet/pin.svg',
                                          height: ScreenConstant.defaultHeightTwenty,
                                        ),
                                        Container(
                                          width: getWebHorizontalSize(5),
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
                                  margin: getWebPadding(
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
                                        height: ScreenConstant.defaultHeightFifteen,
                                      ),
                                      Container(
                                        width: getWebHorizontalSize(5),
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
                          ),

                          //Third Row

                          Expanded(
                            flex: 2,
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
                                        height: getWebSize(17),
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
                                        height: getWebSize(17),
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
                                        height: getWebSize(17),
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


                            ],
                          )),
                        ],
                      ),
                    ),
                    SizedBox(width: 10), // Adjust spacing between columns

                  ],
                ),
              ),
            ),
            Container(height: ScreenConstant.defaultHeightTwenty,),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: ScreenConstant.sizeDefault),
                child: SizedBox(
                  height: ScreenConstant.defaultHeightForty,
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
                          style: CustomTextStyles.elevatedButtonView.copyWith(
                            fontSize : 10.fss,
                            fontWeight : FontWeight.w500
                          ),
                        )),
                  ),
                ),
              ),
            ),
            Container(height: ScreenConstant.defaultHeightFifteen,)
          ],
        ),
      ),
    );
  }
}


