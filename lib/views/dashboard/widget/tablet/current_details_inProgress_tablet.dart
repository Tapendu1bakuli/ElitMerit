import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizing/sizing.dart';

import '../../../../utils/percent_indicator/linear_percent_indicator.dart';
class CurrentDetailsInProgressCardTablet extends StatelessWidget {
  const CurrentDetailsInProgressCardTablet({Key? key}) : super(key: key);

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
                            left: 20,
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
                                    child: Icon(Icons.favorite_border_rounded,color: Colors.white,),
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
                                    child: Image.asset("asset/icons/tablet/more-one.png",color: Colors.black,),
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
                              horizontal: 10.ss, vertical: 5.ss),
                          decoration: BoxDecoration(
                              color: Color(0xFF0A2342),
                              borderRadius: BorderRadius.circular(10.ss)),
                          child: Text(
                            "For Sale: 54,300,000 AED",
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 8.fss),
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
                            Icon(Icons.location_on_outlined),
                            Container(
                              width: 2.ss,
                            ),
                            Expanded(
                              child: Text(
                                "12 no Excepteur sint occaecat cupidatat",
                                style: GoogleFonts.poppins(
                                  fontSize: 8.fss,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "asset/icons/tablet/Bed_light.png",
                              fit: BoxFit.fill,
                              height: 10.ss,
                            ),
                            Container(
                              width: 5.ss,
                            ),
                            Text(
                              "3",
                              style: GoogleFonts.poppins(
                                fontSize: 10.fss,
                              ),
                            ),
                            Container(
                              width: 5.ss,
                            ),
                            Container(
                              width: 2.ss,
                              height: 10.ss,
                              color: Color(0xffD9D9D9),
                            ),
                            Container(
                              width: 5.ss,
                            ),
                            Image.asset(
                              "asset/icons/tablet/Shower.png",
                              fit: BoxFit.fill,
                              height: 10.ss,
                            ),
                            Container(
                              width: 5.ss,
                            ),
                            Text(
                              "3",
                              style: GoogleFonts.poppins(
                                fontSize: 10.fss,
                              ),
                            ),
                            Container(
                              width: 5.ss,
                            ),
                            Container(
                              width: 2.ss,
                              height: 10.ss,
                              color: Color(0xffD9D9D9),
                            ),
                            Container(
                              width: 5.ss,
                            ),
                            Image.asset(
                              "asset/icons/tablet/Move_alt.png",
                              fit: BoxFit.fill,
                              height: 10.ss,
                            ),
                            Container(
                              width: 5.ss,
                            ),
                            Text(
                              "12,000,000",
                              style: GoogleFonts.poppins(
                                fontSize: 10.fss,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 5.ss,
                        ),
                        Text(
                          "12 Jan 12:32:43",
                          style: GoogleFonts.poppins(
                            fontSize: 10.fss,
                          ),
                        ),
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
                      fontSize: 8.fss),
                ),
                Container(width: 5.ss,),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 10.ss, vertical: 5.ss),
                  decoration: BoxDecoration(
                      color: Color(0xFF0A2342),
                      borderRadius: BorderRadius.circular(15.ss)),
                  child: Text(
                    "Under Negotiation",
                    style: GoogleFonts.poppins(
                        color: Colors.white, fontSize: 8.fss),
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(10),
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
                Container(width:10.ss),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 20.ss,
                  width: 20.ss,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFF0A2342)),
                  child: Image.asset(
                    "asset/icons/tablet/upload-file.png",
                    fit: BoxFit.fill,
                    height: 5.ss,
                  ),
                ),
              ],),
              Container(height: 10.ss,),
              Divider(color: Color(0xFFECECEC),),
              Row(children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 20.ss,
                  width: 20.ss,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.greenAccent),
                  child: Image.asset(
                    "asset/icons/tablet/calendar-edit--calendar-date-day-compose-edit-note.png",
                    fit: BoxFit.fill,
                    height: 10.ss,
                  ),
                ),
                Container(width: 10.ss,),
                Text(
                  "Last Update :",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 8.fss),
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
              Container(height: 10.ss,),
              Divider(color: Color(0xFFECECEC),),
              Row(children: [
                Container(
                  padding: EdgeInsets.all(10),
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
                      fontSize: 8.fss),
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
                  padding: EdgeInsets.all(10),
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
                      fontSize: 8.fss),
                ),
                Container(width: 10.ss,),
                Expanded(
                  child: LinearPercentIndicator(
                    isForMobile: false,
                    animation: false,
                    lineHeight: 15.0,
                    percent: 50/100,
                    padding: EdgeInsets.zero,
                    backgroundColor: Color(0xFF0A2342),
                    linearGradient: LinearGradient(
                      colors: <Color>[Colors.greenAccent, Colors.greenAccent],
                    ),
                  ),
                ),
                Container(width: 10.ss,),
                Text(
                  "75%",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 10.fss),
                ),
              ],),
            ],
          ),
        ),
      ),
    );
  }
}
