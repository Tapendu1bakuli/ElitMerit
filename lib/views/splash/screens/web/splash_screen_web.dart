import 'package:flutter/material.dart';
import 'package:main/utils/widows_size_utilis.dart';

import '../../../../utils/asset_utilis/asset_tablet_utilis.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/tablet_size_utils.dart';
class SplashScreenWeb extends StatefulWidget {
  @override
  _SplashScreenWebState createState() => _SplashScreenWebState();
}

class _SplashScreenWebState extends State<SplashScreenWeb> {
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
                  height: getWebSize(338),
                  width: getWebSize(338),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(500),
                    color: AppColors.splashContainerColor.withOpacity(0.7),
                  ),
                  child: Center(
                    child: AnimatedOpacity(
                      opacity: _isVisible ? 1.0 : 0.0, // Set opacity based on visibility
                      duration: Duration(milliseconds: 500), // Animation duration
                      child: Container(
                        height: getWebSize(268),
                        width: getWebSize(268),
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
                              height: getWebSize(81),
                              width: getWebSize(108),
                            ),
                            SizedBox(height: getWebSize(10)),
                            SizedBox(
                              width: getWebSize(218),
                              height: getWebSize(42),
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
