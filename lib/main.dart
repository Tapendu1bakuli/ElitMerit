import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:main/routers/nav_router.dart';
import 'package:main/routers/route_constants.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:sizing/sizing_builder.dart';
import'dart:io' show Platform;

import 'package:window_size/window_size.dart';
bool tablet =false;
bool macOS =false;
bool windows =false;
double launchWidth =0.0;
double launchHeight =0.0;
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Check if the device is a tablet
  //
  // var platformName = '';
  // if (kIsWeb) {
  //   platformName = "Web";
  // } else {
  //   if (Platform.isAndroid) {
  //     platformName = "Android";
  //   } else if (Platform.isIOS) {
  //     platformName = "IOS";
  //   } else if (Platform.isFuchsia) {
  //     platformName = "Fuchsia";
  //   } else if (Platform.isLinux) {
  //     platformName = "Linux";
  //   } else if (Platform.isMacOS) {
  //     platformName = "MacOS";
  //   } else if (Platform.isWindows) {
  //     platformName = "Windows";
  //   }
  // }
  // print("platformName :- "+platformName.toString());
  if(kIsWeb){
    macOS = false;
    print("platformName :- Web");
    SizeUtils.initialize(figmaWidth: 1440, figmaHeight: 1024);
    setWindowTitle('My App');
    setWindowMinSize(const Size(1480, 980));
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky, overlays: []);
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight]);
  }else if(Platform.isMacOS){
    macOS = true;
    print("platformName :- macOS");
    SizeUtils.initialize(figmaWidth: 1440, figmaHeight: 1024);
    setWindowTitle('My App');
    setWindowMinSize(const Size(1280, 720));
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky, overlays: []);
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight]);
  }else if(Platform.isWindows){
    windows = true;
    print("platformName :- Windows");
    SizeUtils.initialize(figmaWidth: 1440, figmaHeight: 1024);
    setWindowTitle('My App');
    setWindowMinSize(const Size(1580, 980));
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky, overlays: []);
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight]);
  }
  else{
    tablet = isTablet();

    // Set preferred orientation based on the device type
    if (tablet) {
      print("platformName :- Tablet");
      SizeUtils.initialize(figmaWidth: 1184, figmaHeight: 832);
      //SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight,DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]);
    }
    else {
      print("platformName :- Mobile");
      SizeUtils.initialize(figmaWidth: 430, figmaHeight: 932);
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]);
    }
  }

  runApp(const MyApp());
}

bool isTablet() {
  // Access the current MediaQueryData using MediaQuery.of(context)
  MediaQueryData data = MediaQueryData.fromView(WidgetsBinding.instance.platformDispatcher.views.single);
  print("shortestSide:${data.size.shortestSide}");
  launchHeight = data.size.height;
  launchWidth = data.size.width;
  return data.size.shortestSide >= 600;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      Sizer(
          builder: (context, orientation, deviceType) {
            return
              SizingBuilder(
                  builder: () =>
                      GetMaterialApp(
                        theme: ThemeData(
                          hoverColor: Colors.transparent
                        ),
                        // scrollBehavior: const MaterialScrollBehavior()
                        //     .copyWith(scrollbars: false),
                        scrollBehavior: AppScrollBehavior().copyWith(scrollbars: false),
                        debugShowCheckedModeBanner: false,
                        initialRoute: splash,
                        defaultTransition: Transition.fade,
                        getPages: NavRouter.generateRoute,
                        useInheritedMediaQuery: true,
                        title: "Elite Merit Real Estate",
                      ));
          });
  }

}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    PointerDeviceKind.trackpad
  };
}