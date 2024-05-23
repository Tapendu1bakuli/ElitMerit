import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/device_manger/screen_constants.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/views/dashboard/widget/time_line/style.dart';
import 'package:main/views/dashboard/widget/time_line/tile.dart';

import 'package:sizing/sizing.dart';


class TimeLineTabletWidget extends StatelessWidget {
  const TimeLineTabletWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List <String> imageList1 = [ '','asset/icons/tablet/ic_deal_update3.png' ,'', 'asset/icons/tablet/ic_deal_update2.png','',''];
    List <String> imageList2 = [ 'asset/icons/tablet/ic_deal_update1.png' ,'', 'asset/icons/tablet/ic_deal_update4.png','','asset/icons/tablet/ic_deal_update5.png'];
    return Container(
      height: 340.ss,
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: 5,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          double width = MediaQuery.of(context).size.width;
          double height = MediaQuery.of(context).size.height;
          return Stack(
            clipBehavior: Clip.none,
            children: [
              TimelineTile(

                alignment: TimelineAlign.manual,
                axis: TimelineAxis.horizontal,
                lineXY: 0.3.ss,
                indicatorStyle: IndicatorStyle(
                  color: Colors.green,
                  indicator: Image.asset('asset/icons/tablet/radio_button.png',
                  ),

                ),

                beforeLineStyle: const LineStyle(
                  color: AppColors.darkBlueColor,
                  thickness: 1.4,
                ),
                afterLineStyle: const LineStyle(
                  color: AppColors.darkBlueColor,
                  thickness: 1.4,
                ),
                startChild: (index == 1 || index == 3) ? _upperImageView(imageList1[index]) : _progressBarTextView(mainAxisAlignment: MainAxisAlignment.end) ,
                endChild: (index == 1 || index == 3) ? _progressBarTextView(mainAxisAlignment: MainAxisAlignment.start) : _downImageView(imageList2[index]),
              ),
              // index == 0?Positioned(
              //     // top: -ScreenConstant.defaultHeightThirtyFive,
              //     // left: -ScreenConstant.defaultHeightTen,
              //     top: -22.v,
              //     bottom: 0.0,
              //     left: -5.h,
              //     child:  Icon(Icons.arrow_back_ios_new_outlined,size: 12.ss,color: AppColors.darkBlueColor,)) : Container(),
              // index == 4 ?Positioned(
              //     bottom: 0,
              //     top:  -22.v,
              //     left: 330.h,
              //     // top: -ScreenConstant.defaultHeightThirtyFive,
              //     // left:ScreenConstant.defaultHeightTwoTwenty,
              //     child:  Icon(Icons.arrow_forward_ios,size: 12.ss,color: AppColors.darkBlueColor,)) : Container(),

            ],
          );
        },
      ),
    );
  }
}

Widget _progressBarTextView({required MainAxisAlignment mainAxisAlignment}) {
  return Container(
    margin: EdgeInsets.only(top: 20.ss,bottom: 20.ss,left: 20.ss),
    child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Text(
          "12/03/2021",
          style: GoogleFonts.poppins(
              fontSize: 10.fss,
              fontWeight: FontWeight.w600,
              color: AppColors.darkBlueColor),
        ),
        Text(
          "Lorem ipsum dolor sit\namet, consectetur\nadipiscing elit, sed do\neiusmod tempo",
          style: GoogleFonts.poppins(
            fontSize: 8.fss,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}

Widget _upperImageView(String image){
  return Column(
   mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      CircleAvatar(
        radius: 18.ss,
        backgroundColor: AppColors.primaryColor.withOpacity(0.5),
        child: Image.asset(image,scale: 3.2.ss,),
      ),
      SizedBox(height: 20.ss,),
      Image.asset('asset/icons/tablet/line_up.png',height: 50.ss),
      SizedBox(height: 20.ss,),
    ],
  );
}

Widget _downImageView(String image){
  return Column(
    children: <Widget>[
      SizedBox(height: 20.ss,),
      Image.asset('asset/icons/tablet/line_down.png',height: 50.ss,),
      SizedBox(height: 20.ss,),
      CircleAvatar(
        radius: 18.ss,
        backgroundColor: AppColors.primaryColor.withOpacity(0.5),
        child: Image.asset(image,scale: 3.2.ss,),
      ),

    ],
  );
}








