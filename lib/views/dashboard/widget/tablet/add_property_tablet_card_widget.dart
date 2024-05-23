import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/device_manger/screen_constants.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:sizing/sizing.dart';
class AddPropertyTabletCardWidget extends StatelessWidget {
  String? image;
  String? title;
  Function()? onTap;
  bool? isColoured;
  double? padding;
   AddPropertyTabletCardWidget({Key? key,this.isColoured,this.onTap,this.image,this.title,this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: padding ??32.ss,vertical: 32.ss),
        decoration: BoxDecoration(color: isColoured??false?Color(0xFF50C878):Colors.white,borderRadius: BorderRadius.circular(15.ss),),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image??"",height: ScreenConstant.screenWidthSixth,color: isColoured??false?Colors.white:Color(0xFF50C878),),
            Container(height: 15.ss,),
            FittedBox(child: Text(title??"",style:TextStyle(
                fontFamily: "Poppins",
                fontSize: 16,
                color: isColoured??false?Color(0xffFFFFFF):Color(0xFF6A6A6A),
                fontWeight: FontWeight.w500)))
          ],
        ),
      ),
    );
  }
}
