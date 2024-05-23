import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/widows_size_utilis.dart';

import '../../../../../device_manger/screen_constants.dart';
import '../../../../../utils/phone_size_utils.dart';

class WebSocialSignInButton extends StatelessWidget{

  final String title , imagePath;
  final bool isTablet,isLandscape;
  final double? imageHeight,imagewidth;

  const WebSocialSignInButton({super.key, this.imageHeight,this.imagewidth,required this.title,required this.imagePath,this.isTablet=false,this.isLandscape=false});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: (){
        // Get.toNamed(accountSettings);
      },
      child: Container(
       height:  ScreenConstant.screenHeightThirteen,
        width: getDeviceHorizontalSize(312),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color(0xFFE6E8E7))),
        padding: EdgeInsets.symmetric(
            horizontal: isLandscape ? getWebHorizontalSize(12) : getWebHorizontalSize(24),
            vertical: isLandscape ? getWebHorizontalSize(8) : getWebHorizontalSize(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                title,
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18)),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: getWebVerticalSize(5),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Image.asset(
                imagePath,
                height: imageHeight??getWebSize(35),
                width:  imagewidth??getWebSize(35),),
            )
          ],
        ),
      ),
    );
  }

  double getDeviceSize(double size){

    if(isTablet)
    {
      return getWebSize(size);
    }
    else{
      return getSize(size);
    }

  }

  double getDeviceHorizontalSize(double size){

    if(isTablet)
    {
      return getWebHorizontalSize(size);
    }
    else{
      return getHorizontalSize(size);
    }

  }


  double getDeviceVerticalSize(double size){

    if(isTablet)
    {
      return getWebVerticalSize(size);
    }
    else{
      return getVerticalSize(size);
    }

  }

  getDeviceFont(double size)
  {
    if(isTablet)
    {
      return getWebFontSize(size);
    }
    else{
      return getFontSize(size);
    }
  }


}