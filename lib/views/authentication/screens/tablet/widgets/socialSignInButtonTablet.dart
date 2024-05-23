


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/phone_size_utils.dart';
import 'package:main/utils/tablet_size_utils.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:sizing/sizing.dart';

import '../../../../../device_manger/screen_constants.dart';

class TabletSocialSignInButton extends StatelessWidget{

  final String title , imagePath;
  final bool isTablet,isLandscape;

  const TabletSocialSignInButton({super.key, required this.title,required this.imagePath,this.isTablet=false,this.isLandscape=false});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: (){
        // Get.toNamed(accountSettings);
      },
      child: Container(
        height: ScreenConstant.screenHeightEleven,
        width: getDeviceHorizontalSize(312),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color(0xFFE6E8E7))),
        padding: EdgeInsets.symmetric(
            horizontal: isLandscape ? getTabletHorizontalSize(12) : getTabletHorizontalSize(24),
            vertical: isLandscape ? getTabletVerticalSize(8) : getTabletVerticalSize(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                title,
                style: CustomTextStyles.semiBold16TextStyleTablet,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: getTabletVerticalSize(10),
            ),
            Image.asset(
              imagePath,
              height: getTabletSize(35),
              width:  getTabletSize(35),)
          ],
        ),
      ),
    );
  }

 double getDeviceSize(double size){

    if(isTablet)
      {
        return getTabletSize(size);
      }
    else{
      return getSize(size);
    }

  }

  double getDeviceHorizontalSize(double size){

    if(isTablet)
    {
      return getTabletHorizontalSize(size);
    }
    else{
      return getHorizontalSize(size);
    }

  }


  double getDeviceVerticalSize(double size){

    if(isTablet)
    {
      return getTabletVerticalSize(size);
    }
    else{
      return getVerticalSize(size);
    }

  }

  getDeviceFont(double size)
  {
    if(isTablet)
    {
      return getTabletFontSize(size);
    }
    else{
      return getFontSize(size);
    }
  }


}