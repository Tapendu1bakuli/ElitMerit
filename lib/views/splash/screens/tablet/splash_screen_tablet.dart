import 'package:flutter/material.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/tablet_size_utils.dart';

import '../../../../utils/asset_utilis/asset_tablet_utilis.dart';

class SplashScreenTablet extends StatefulWidget {
  @override
  _SplashScreenTabletState createState() => _SplashScreenTabletState();
}

class _SplashScreenTabletState extends State<SplashScreenTablet> {
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    // Trigger the visibility after a certain delay
    Future.delayed(Duration(milliseconds: 1000), () {
      setState(() {
        _isVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageUtilsForTablet.splash),
                fit: BoxFit.cover,
              ),
            ),
            child:Center(
              child: AnimatedOpacity(
                opacity: _isVisible ? 1.0 : 0.0, // Set opacity based on visibility
                duration: Duration(milliseconds: 1000), // Animation duration
                child: Container(
                  height: getTabletSize(338),
                  width: getTabletSize(338),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(500),
                    color: AppColors.splashContainerColor.withOpacity(0.7),
                  ),
                  child: Center(
                    child: AnimatedOpacity(
                      opacity: _isVisible ? 1.0 : 0.0, // Set opacity based on visibility
                      duration: Duration(milliseconds: 500), // Animation duration
                      child: Container(
                        height: getTabletSize(268),
                        width: getTabletSize(268),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(500),
                          color: AppColors.splashContainerColor,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              ImageUtilsForTablet.splashLogo,
                              height: getTabletSize(81),
                              width: getTabletSize(108),
                            ),
                            SizedBox(height: getTabletSize(10)),
                            SizedBox(
                              width: getTabletSize(218),
                              height: getTabletSize(42),
                              child: Image.asset(
                                ImageUtilsForTablet.splashImage,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),))
    );
  }
}

