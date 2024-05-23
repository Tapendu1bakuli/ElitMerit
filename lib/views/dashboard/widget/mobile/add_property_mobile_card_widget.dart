import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizing/sizing.dart';
class AddPropertyMobileCardWidget extends StatelessWidget {
  String? image;
  String? title;
  Function()? onTap;
  bool? isColoured;
   AddPropertyMobileCardWidget({Key? key,this.isColoured,this.onTap,this.image,this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 10,
        padding: EdgeInsets.symmetric(horizontal: 32.ss,vertical: 32.ss),
        decoration: BoxDecoration(color: isColoured??false?Color(0xFF50C878):Colors.white,borderRadius: BorderRadius.circular(15.ss),),
        child: Column(
          children: [
            Image.asset(image??"",height: 52.ss,color: isColoured??false?Colors.white:Color(0xFF50C878),),
            Container(height: 15.ss,),
            Text(title??"",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14.ss,color: isColoured??false?Colors.white:Colors.black)),)
          ],
        ),
      ),
    );
  }
}
