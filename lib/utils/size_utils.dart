


import 'package:main/utils/phone_size_utils.dart';
import 'package:main/utils/tablet_size_utils.dart';

class SizeUtils{

  static double getDeviceSize(double size,{bool isTablet=false}){

    if(isTablet)
    {
      return getTabletSize(size);
    }
    else{
      return getSize(size);
    }

  }

  static double getDeviceFontSize(double size,{bool isTablet=false}){

    if(isTablet)
    {
      return getTabletFontSize(size);
    }
    else{
      return getFontSize(size);
    }

  }


}