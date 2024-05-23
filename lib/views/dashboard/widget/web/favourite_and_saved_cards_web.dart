import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/widows_size_utilis.dart';
import '../../../../device_manger/screen_constants.dart';
import 'package:main/utils/tablet_size_utils.dart';
import 'package:sizing/sizing.dart';
import '../../../../utils/theme/custom_button_style.dart';
import '../../../../utils/theme/custom_text_style.dart';
import '../../../../utils/widgets_utils/widgets/custom_elevated_button.dart';
class FavouriteCardsWeb extends StatelessWidget {
  const FavouriteCardsWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
        data:MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Card(


        child:
        Container(padding: EdgeInsets.all(10),child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 6, // 60% of the available height
              child: Stack(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                    },
                    child: Container(
                      width: double.maxFinite,
                      padding:EdgeInsets.only(left: 0,right: 10.h,top: 10.v,bottom: 12.v),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), // Adjust as needed
                      ),

                      child: Image.asset(
                        "asset/icons/tablet/first_property_image.png", // Image asset path
                        fit: BoxFit.fill, // Adjust as needed
                      ),
                    ),
                  ),
                  Positioned(left: -1.h,bottom: 0,
                    child:
                    CustomElevatedContainer(
                      height:30.v,

                        color: Color(0xFF50C878),
                        border: Border.all(color: Colors.white),
                        text: "",
                        richText: RichText(
                          text:  TextSpan(
                            text: ' 54,300,000 AED  ',
                            style: CustomTextStyles.elevatedButton2.copyWith(
                              fontSize : 18.0
                            ),
                            children: [
                              TextSpan(
                                text: ' 54,300,000 AED   ',
                                style: CustomTextStyles.elevatedButton4.copyWith(
                                  fontSize : 18.0),
                              ),
                            ],
                          ),
                        ),
                        buttonStyle:
                        CustomButtonStyles.fillGreen),
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
                                color: Colors.red.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(40)),
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
                                borderRadius: BorderRadius.circular(40)),
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
              flex: 4, // 40% of the available height
              child: Container(
                //padding: EdgeInsets.all(10.adaptSize),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), // Adjust as needed

                ),
                child: Row(
                  children: [
                    Expanded(
                      // 70% of the width
                      child:

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FittedBox(child:Text(
                            'Excepteur sint occaecat cupidatat',
                            style:   CustomTextStyles.lightbodyBlackTablet16,
                          )),

                          Row(
                            children: [
                              Flexible(
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'asset/icons/tablet/pin.svg',
                                      height: ScreenConstant.defaultHeightTwentyThree,
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
                                      'asset/icons/tablet/cal_add.svg',
                                      height: ScreenConstant.defaultHeightTwentyThree,
                                    ),
                                    Container(
                                      width: 10.h,
                                    ),
                                    Flexible(
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Row(
                                          children: [
                                            RichText(
                                              overflow: TextOverflow.ellipsis,
                                              text: TextSpan(
                                                text: '4 months ago...',
                                                style: CustomTextStyles.lightbodyBlackTablet,

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
                          Flexible(child: Text(
                            'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi ',
                              maxLines: 3,
                            overflow: TextOverflow.visible,
                            style: CustomTextStyles.lightbodyBlackTablet.copyWith(
                              fontSize : 9.fss
                            ),
                          ),),
                          Container(height: 20.ss),
                          Expanded(child:  Row(
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
                          ),),

                          //4th Row

                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),


          ],
        ),)
        ,
      ),
    );
  }

}
