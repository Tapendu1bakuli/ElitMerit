import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:main/device_manger/screen_constants.dart';
import 'package:main/main.dart';
import 'package:main/routers/route_constants.dart';
import 'package:main/views/splash/screens/mobile/splash_screen_mobile.dart';
import 'package:main/views/splash/screens/tablet/splash_screen_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../utils/core/utils/updated_size_utils.dart';
import '../../../dashboard/screens/tablet/my_properties_tablet.dart';
import '../web/splash_screen_web.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isTablet (BuildContext context) {
// Use MediaQuery to get the logical size of the device
    Size size = MediaQuery.sizeOf (context);


    print(" context shortestSide:${size.shortestSide}");
    MediaQueryData data = MediaQueryData.fromView(WidgetsBinding.instance.platformDispatcher.views.single);
    print("shortestSide:${data.size.shortestSide}");

// Determine if we should use tablet layout or not, 600 here is
// a common breakpoint for a typical 7-inch tablet.
    return size.shortestSide >= 600;
  }
  @override
  void initState() {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    Timer(const Duration(seconds: 3), () async {
      Get.offAllNamed(elevatedButton);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    isTablet(context);
    // ScreenConstant.setScreenAwareConstant(context);
    // // Check if the device is a tablet
    // tablet = isTablet(context);
    //
    // // Set preferred orientation based on the device type
    // if (tablet) {
    //   SizeUtils.initialize(figmaWidth: 1184, figmaHeight: 832);
    //   SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight]);
    // }
    // return tablet ?   SplashScreenTablet() :SplashScreenMobile();
    bool isMobile = true;
    if (ResponsiveUtils.isMobile(context)) {
      isMobile = true;
    } else if (ResponsiveUtils.isDesktop(context)) {
      isMobile = false;
    }
    else if (ResponsiveUtils.isTablet(context)) {
      isMobile = false;
    }
    if (!isMobile) {
      SizeUtils.initialize(figmaWidth: 1184, figmaHeight: 832);
      //SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight]);
    }
    return macOS || windows?SplashScreenWeb():isMobile?
    SplashScreenMobile():SplashScreenTablet();
  }
}
