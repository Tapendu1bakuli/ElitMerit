import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/views/dashboard/widget/mobile/common_card_mobile.dart';
import 'package:main/views/dashboard/widget/mobile/property_detail_widget.dart';
import 'package:sizing/sizing_extension.dart';
import 'package:toggle_switch/toggle_switch.dart';

class PropertyDetailMobile extends StatelessWidget {
  const PropertyDetailMobile({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'asset/images/mobile/Rectangle 4231-1.png',
      'asset/images/mobile/Rectangle 4231-1.png',
      'asset/images/mobile/Rectangle 4231-1.png'
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: Get.height / 2,
                  child: Swiper(
                    itemBuilder: (context, index) {
                      return Image.asset(
                        images[index],
                        fit: BoxFit.fill,
                      );
                    },
                    autoplay: true,
                    itemCount: images.length,
                    scrollDirection: Axis.horizontal,
                    pagination: SwiperPagination(
                        margin: EdgeInsets.only(bottom: 50.ss),
                        alignment: Alignment.bottomCenter),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: CircleAvatar(
                          radius: 15.ss,
                          backgroundColor: Colors.black54,
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: AppColors.whiteColor,
                            size: 15.ss,
                          )),
                    ),
                    const Spacer(),
                    CircleAvatar(
                        radius: 15.ss,
                        backgroundColor: Colors.black54,
                        child: Image.asset(
                          'asset/images/mobile/ic_favorite.png',
                          scale: 2,
                          color: AppColors.whiteColor,
                        )),
                    SizedBox(
                      width: 5.ss,
                    ),
                    CircleAvatar(
                        radius: 15.ss,
                        backgroundColor: Colors.black54,
                        child: Image.asset(
                          'asset/images/mobile/ic_share.png',
                          scale: 2,
                          color: AppColors.whiteColor,
                        )),
                    SizedBox(
                      width: 5.ss,
                    ),
                    CircleAvatar(
                        radius: 15.ss,
                        backgroundColor: Colors.black54,
                        child: Image.asset(
                          'asset/images/mobile/ic_call.png',
                          scale: 2,
                          color: AppColors.whiteColor,
                        )),
                  ],
                ).marginOnly(top: 30.ss, right: 20.ss, left: 10.ss),
        
              ],
            ),
            Transform.translate(
                offset: Offset(0,-30.ss),
                child:  PropertyDetailWidget()),

          ],
        ).marginOnly(bottom: 20.ss),
      ),
    );
  }


}
