import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/views/dashboard/widget/time_line/style.dart';
import 'package:main/views/dashboard/widget/time_line/tile.dart';

import 'package:sizing/sizing.dart';


class TimeLineMobileWidget extends StatelessWidget {
  const TimeLineMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List <String> imageList1 = [ '','asset/icons/tablet/ic_deal_update3.png' ,'', 'asset/icons/tablet/ic_deal_update4.png','',''];
    List <String> imageList2 = [ 'asset/icons/tablet/ic_deal_update1.png' ,'', 'asset/icons/tablet/ic_deal_update2.png','','asset/icons/tablet/ic_deal_update5.png'];
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return TimelineTile(
          axis: TimelineAxis.vertical,
          alignment: TimelineAlign.manual,
          lineXY: 0.3,
        indicatorStyle: IndicatorStyle(
        drawGap: true,
        width: 20.ss,
        height: 30.ss,
        indicator: Image.asset('asset/icons/tablet/radio_button.png',
        )),
          beforeLineStyle: const LineStyle(
              color: Color(0xff0A2342),
            thickness: 0.3
          ),
          afterLineStyle: const LineStyle(
              color: Color(0xff0A2342),
              thickness: 0.3
          ),
          endChild: (index == 1 || index == 3) ? _rightImageView(imageList1[index]) : _progressBarTextView(mainAxisAlignment: MainAxisAlignment.end) ,
          startChild: (index == 1 || index == 3) ? _progressBarTextView(mainAxisAlignment: MainAxisAlignment.start) : _leftImageView(imageList2[index]),
        );
      },
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

Widget _rightImageView(String image){
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      SizedBox(width: 30.ss,),
     Transform.rotate(
     angle: 1.55,
      child: Image.asset('asset/icons/tablet/line_up.png',height: 50.ss)),
      Expanded(
        child: CircleAvatar(
          radius: 18.ss,
          backgroundColor: AppColors.primaryColor.withOpacity(0.5),
          child: Image.asset(image,scale: 5.5.ss,),
        ),
      ),

    ],
  );
}

Widget _leftImageView(String image){
  return Row(
    children: <Widget>[
      Expanded(
        child: CircleAvatar(
          radius: 18.ss,
          backgroundColor: AppColors.primaryColor.withOpacity(0.5),
          child: Image.asset(image,scale: 5.5.ss,),
        ),
      ),

      Transform.rotate(
          angle: 1.55,
          child: Image.asset('asset/icons/tablet/line_down.png',height: 50.ss,)),
      SizedBox(width: 30.ss,),
    ],
  );
}










