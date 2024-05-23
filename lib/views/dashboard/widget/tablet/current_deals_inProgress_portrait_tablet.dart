import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:sizing/sizing.dart';

import '../../../../device_manger/screen_constants.dart';
import '../../../../utils/percent_indicator/linear_percent_indicator.dart';
import '../../../../utils/tablet_size_utils.dart';
import '../../../../utils/theme/custom_text_style.dart';
import '../../../../utils/theme/theme_helper.dart';
import '../../screens/tablet/current_deals_in_progress_tablet_screen.dart';
class CurrentDetailsInProgressCardPortraitTablet extends StatelessWidget {
  const CurrentDetailsInProgressCardPortraitTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15.ss,vertical: 15.ss),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.ss),
        child: Container(
          padding:
          EdgeInsets.symmetric(horizontal: 20.ss, vertical: 15.ss),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Stack(
                        children:[Image.asset(
                          "asset/icons/tablet/first_property_image.png",
                        ),
                          Positioned(
                              top: 10,
                              left: 10,
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap:(){
                                    },
                                    child: Container(
                                      height: 15.ss,
                                      width: 15.ss,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.circular(20)),
                                      child: Icon(Icons.favorite_border_rounded,color: Colors.white,size: 12.ss,),
                                    ),
                                  ),
                                  Container(width: 5.ss,),
                                  InkWell(
                                    onTap: (){
                                    },
                                    child: Container(
                                      height: 15.ss,
                                      width: 15.ss,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(20)),
                                      child: Image.asset("asset/icons/tablet/more-one.png",color: Colors.black,height: 12,),
                                    ),
                                  )
                                ],
                              )),
                        ]
                    ),
                  ),
                  Container(
                    width: 10.ss,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 5.ss, vertical: 5.ss),
                          decoration: BoxDecoration(
                              color: Color(0xFF0A2342),
                              borderRadius: BorderRadius.circular(5.ss)),
                          child: Text(
                            "For Sale: 54,300,000 AED",
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 9.fss),
                          ),
                        ),
                        Container(
                          height: 10.ss,
                        ),
                        Text(
                          "Excepteur sint occaecat cupidatat",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 12.fss),
                        ),
                        Container(
                          height: 5.ss,
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined,size: 16,),
                            Container(
                              width: 2.ss,
                            ),
                            Expanded(
                              child: Text(
                                "12 no Excepteur sint occaecat cupidatat",
                                style: GoogleFonts.poppins(
                                  fontSize: 10.fss,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(height: 5.ss,),
                        Row(
                          children: [
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
                            // Image.asset(
                            //   "asset/icons/tablet/Bed_light.png",
                            //   fit: BoxFit.fill,
                            //   height: 10.ss,
                            // ),
                            // Container(
                            //   width: 5.ss,
                            // ),
                            // Text(
                            //   "3",
                            //   style: GoogleFonts.poppins(
                            //     fontSize: 10.fss,
                            //   ),
                            // ),
                            // Container(
                            //   width: 5.ss,
                            // ),
                            // Container(
                            //   width: 2.ss,
                            //   height: 10.ss,
                            //   color: Color(0xffD9D9D9),
                            // ),
                            // Container(
                            //   width: 5.ss,
                            // ),
                            // SvgPicture.asset(
                            //   "asset/icons/tablet/shower.svg",
                            //   height: 20,
                            // ),
                            // Container(
                            //   width: 5.ss,
                            // ),
                            // Text(
                            //   "3",
                            //   style: GoogleFonts.poppins(
                            //     fontSize: 10.fss,
                            //   ),
                            // ),
                            // Container(
                            //   width: 5.ss,
                            // ),
                            // Container(
                            //   width: 2.ss,
                            //   height: 10.ss,
                            //   color: Color(0xffD9D9D9),
                            // ),
                            // Container(
                            //   width: 5.ss,
                            // ),
                            //  SvgPicture.asset(
                            //   "asset/icons/tablet/alt.svg",
                            //    height: 20
                            //   ),
                            // Container(
                            //   width: 5.ss,
                            // ),
                            // Text(
                            //   "12,254 AED",
                            //   style: GoogleFonts.poppins(
                            //     fontSize: 10,
                            //   ),
                            // ),
                          ],
                        ),
                        Container(
                          height: 5.ss,
                        ),
                        Text(
                          "12 Jan 12:32:43",
                            style: CustomTextStyles.light12222222TextStyleTablet
                        )

                      ],
                    ),
                  )
                ],
              ),
              Container(height: 10.ss,),
              Row(children: [
                Container(
                  padding: EdgeInsets.all(5),
                  height: 20.ss,
                  width: 20.ss,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.greenAccent),
                  child: Image.asset(
                    "asset/icons/tablet/File_dock_light.png",
                    height: 10.ss,
                  ),
                ),
                Container(width: 5.ss,),
                Text(
                  "Current Status:",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 9.fss),
                ),
                Container(width: 5.ss,),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 5.ss, vertical: 5.ss),
                  decoration: BoxDecoration(
                      color: Color(0xFF0A2342),
                      borderRadius: BorderRadius.circular(15.ss)),
                  child: Text(
                    "Under Negotiation",
                    style: GoogleFonts.poppins(
                        color: Colors.white, fontSize: 10.fss),
                  ),
                ),
                Spacer(),
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 20.ss,
                      width: 20.ss,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.greenAccent),
                      child: Image.asset(
                        "asset/icons/tablet/chat-bubble-text-square--messages-message-bubble-text-square-chat.png",
                        height: 10.ss,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),


                Container(width:10.ss),
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 20.ss,
                      width: 20.ss,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xFF0A2342)),
                      child: Image.asset(
                        "asset/icons/tablet/upload-file.png",
                        height: 5.ss,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),

              ],),
              Container(height: 10.ss,),
              Divider(color: Color(0xFFECECEC),),
              Row(children: [
                Container(
                  padding: EdgeInsets.all(5),
                  height: 20.ss,
                  width: 20.ss,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.greenAccent),
                  child: Image.asset(
                    "asset/icons/tablet/calendar-edit--calendar-date-day-compose-edit-note.png",
                    height: 10.ss,
                  ),
                ),
                Container(width: 10.ss,),
                Text(
                  "Last Update :",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 9.fss),
                ),



                Container(width: 10.ss,),
                Expanded(
                  child: Text(
                    "The seller has reduced the price to 12 million.",
                    style: GoogleFonts.poppins(
                        color: Colors.black, fontSize: 10.fss),
                  ),
                ),
              ],),


              Divider(color: Color(0xFFECECEC),),
              Row(children: [
                Container(
                  padding: EdgeInsets.all(5),
                  height: 20.ss,
                  width: 20.ss,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.greenAccent),
                  child: Image.asset(
                    "asset/icons/tablet/tag--codes-tags-tag-product-label.png",
                    fit: BoxFit.fill,
                    height: 10.ss,
                  ),
                ),
                Container(width: 10.ss,),
                Text(
                  "Current Price :",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 9.fss),
                ),
                Container(width: 10.ss,),
                Text(
                  "12,000,000 AED",
                  style: GoogleFonts.poppins(
                      color: Colors.black, fontSize: 10.fss),
                ),
              ],),
              Container(height: 10.ss,),
              Divider(color: Color(0xFFECECEC),),
              Row(children: [
                Container(
                  padding: EdgeInsets.all(5),
                  height: 20.ss,
                  width: 20.ss,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.greenAccent),
                  child: Image.asset(
                    "asset/icons/tablet/signal-full--phone-mobile-device-signal-wireless-smartphone-iphone-bar-bars-full-android.png",
                    fit: BoxFit.fill,
                    height: 10.ss,
                  ),
                ),
                Container(width: 10.ss,),
                Text(
                  "Progress :",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 9.fss),
                ),
                Container(width: 10.ss,),
                Expanded(
                  child:  Row (
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Expanded(
                        child:
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            trackHeight: 8.0,
                            thumbColor: Colors.greenAccent, // Inner color of the thumb
                            overlayColor: appTheme.green40001,
                            activeTrackColor: Colors.green,
                            inactiveTrackColor: Color(0xFF0A2342),
                            thumbShape: const CustomThumbShape(
                              thumbRadius: 12.0, // Radius of the thumb
                              borderThickness: 2.0, // Thickness of the border
                            ),
                            overlayShape: RoundSliderOverlayShape(overlayRadius: 16.0),
                            trackShape: RoundedRectSliderTrackShape(),
                          ),
                          child: Slider(
                            value: 0.75,
                            onChanged: (value) {},
                          ),
                        ),),

                      SizedBox(height: 8.0),
                      const Text(
                        '75%',
                        style: TextStyle(fontSize: 16.0,fontWeight:FontWeight.bold),
                      ),
                    ],
                  ),


                ),
              ],),
            ],
          ),
        ),
      ),
    );
  }
}
