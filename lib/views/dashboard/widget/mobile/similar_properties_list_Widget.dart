import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:sizing/sizing.dart';


class SimilarPropertiesListWidget extends StatelessWidget {
  const SimilarPropertiesListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: Get.width*0.8,
        padding: EdgeInsets.only(left: 12.ss,right: 12.ss,top: 15.ss ),
        margin: EdgeInsets.only(right: 15.ss,),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade200),
            borderRadius: BorderRadius.circular(30), color:AppColors.whiteColor),
        child: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 12.ss),
                      width: Get.width*0.8,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                            "asset/images/tablet/modern-house-with-sky.jpg"),
                      )),
                  Positioned(
                      bottom: 0.ss,
                      left: 30.ss,
                      right: 30.ss,
                      child: Container(
                        padding: EdgeInsets.all(
                          1.ss,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(5.ss),
                              bottomLeft: Radius.circular(10.ss),
                              topRight: Radius.circular(5.ss),
                              topLeft: Radius.circular(5.ss),
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xff0A2342),
                              borderRadius: BorderRadius.circular(5.ss)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 5.ss,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "For Sale: ",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 12.ss, color: Colors.white)),
                                  ),
                                  Text(
                                    "54,300,000 AED",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 12.ss,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700)),
                                  ),
                                ],
                              ),
                              Container(
                                height: 5.ss,
                              ),
                            ],
                          ),
                        ),
                      )),
                ],
              ),
              Container(
                height: 10.ss,
              ),

              Text(
                "Excepteur sint occaecat cupidatat",
                maxLines: 2,
                style: GoogleFonts.poppins(
                  fontSize: 14.fss,
                  fontWeight : FontWeight.w600
                ),
              ),
              Container(
                height: 10.ss,
              ),
              Row(
                children: [
                  SvgPicture.asset('asset/icons/tablet/pin.svg'),
                  Container(
                    width: 2.ss,
                  ),
                  Text(
                    "12 no Excepteur",
                    style: GoogleFonts.poppins(
                      fontSize: 12.fss,
                    ),
                  ),

                ],
              ),
              Container(
                height: 2.ss,
              ),
              Row(
                children: [
                  Flexible(
                    child: SvgPicture.asset(
                      "asset/icons/tablet/ic_bed_mobile.svg",
                    ),
                  ),
                  Container(
                    width: 5.ss,
                  ),
                  Flexible(
                    child: Text(
                      "3",
                      maxLines: 1,
                      style: GoogleFonts.poppins(
                        fontSize: 10.fss,
                        color: AppColors.darkBlueColor,
                      ),
                    ),
                  ),
                  Container(
                    width: 2.ss,
                  ),
                  Container(

                    width: 1.ss,
                    height: 13.ss,
                    color: const Color(0xffD9D9D9),
                  ),
                  Container(
                    width: 5.ss,
                  ),
                  Flexible(
                    child: SvgPicture.asset(
                      "asset/icons/tablet/ic_shower_mobile.svg",
                    ),
                  ),
                  Container(
                    width: 5.ss,
                  ),
                  Flexible(
                    child: Text(
                      "3",
                      maxLines: 1,
                      style: GoogleFonts.poppins(
                        fontSize: 10.fss,
                        color: AppColors.darkBlueColor,
                      ),
                    ),
                  ),
                  Container(
                    width: 5.ss,
                  ),
                  Container(

                    width: 1.ss,
                    height: 13.ss,
                    color: const Color(0xffD9D9D9),
                  ),
                  Container(
                    width: 5.ss,
                  ),
                  Flexible(
                    child: SvgPicture.asset(
                      "asset/icons/tablet/alt.svg",
                    ),
                  ),
                  Container(
                    width: 5.ss,
                  ),
                  Text(
                    "12,254 ",
                    style: GoogleFonts.poppins(
                      fontSize: 10.fss,
                      color: AppColors.darkBlueColor,
                    ),
                  ),
                  Text(
                    "sqft",
                    style: GoogleFonts.poppins(
                      fontSize: 10.fss,
                    ),
                  ),
                  Container(
                    width: 5.ss,
                  ),
                  Container(
                    width: 1.ss,
                    height: 13.ss,
                    color: const Color(0xffD9D9D9),
                  ),
                  Container(
                    width: 5.ss,
                  ),
                  Flexible(
                    child: SvgPicture.asset(
                      'asset/icons/tablet/parking.svg',
                      width: 12.ss,
                      height: 12.ss,
                    ),
                  ),
                  Container(
                    width: 5.ss,
                  ),
                  Flexible(
                    child: Text(
                      maxLines: 1,
                      "2",
                      style: GoogleFonts.poppins(
                        fontSize: 10.fss,
                        color: AppColors.darkBlueColor,
                      ),
                    ),
                  ),
                  Container(
                    width: 5.ss,
                  ),
                  Container(
                    width: 1.ss,
                    height: 13.ss,
                    color: const Color(0xffD9D9D9),
                  ),
                  Container(
                    width: 5.ss,
                  ),
                  Flexible(
                    child: SvgPicture.asset(
                      'asset/icons/tablet/Cloud_light.svg',
                      width: 12.ss,
                      height: 12.ss,
                    ),
                  ),
                  Text(
                    "29 C",
                    style: GoogleFonts.poppins(
                      fontSize: 10.fss,
                      color: AppColors.darkBlueColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.ss),

            ],
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
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Icon(
                      Icons.favorite_border_rounded,
                      size: 14,
                      color: Colors.white,
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
        ]),
      ),
    );
  }
}
