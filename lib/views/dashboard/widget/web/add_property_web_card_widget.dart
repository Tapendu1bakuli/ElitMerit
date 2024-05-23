import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/device_manger/screen_constants.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:sizing/sizing.dart';
class AddPropertyWebCardWidget extends StatelessWidget {
  String? image;
  String? title;
  Function()? onTap;
  bool? isColoured;
  double? padding;
  double? margin;
  AddPropertyWebCardWidget({Key? key,this.isColoured,this.onTap,this.image,this.title,this.padding,this.margin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: padding ??32.ss,),
        margin: EdgeInsets.symmetric(vertical: 15.ss,horizontal: margin ??10.ss),
        decoration: BoxDecoration(color: isColoured??false?Color(0xFF50C878):Colors.white,borderRadius: BorderRadius.circular(10.ss),),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image??"",height: 40.ss,color: isColoured??false?Colors.white:Color(0xFF50C878),),
            Container(height: 15.ss,),
            FittedBox(child: Text(title??"",style:TextStyle(
                fontFamily: "Poppins",
                fontSize: 13.fss,
                color: isColoured??false?Color(0xffFFFFFF):Color(0xFF6A6A6A),
                fontWeight: FontWeight.w500)))
          ],
        ),
      ),
    );
  }
}
