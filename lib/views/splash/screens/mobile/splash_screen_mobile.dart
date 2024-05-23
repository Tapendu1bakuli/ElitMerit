import 'package:flutter/material.dart';
import 'package:main/utils/asset_utilis/asset_tablet_utilis.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/phone_size_utils.dart';

class SplashScreenMobile extends StatelessWidget {
  const SplashScreenMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/icons/tablet/splash_mob.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: OrientationBuilder(
            builder: (context, orientation) {
              // Determine whether it's landscape or portrait
              final isLandscape = orientation == Orientation.landscape;

              // Calculate sizes based on orientation
              final double logoSize = isLandscape ? screenSize.height * 0.1 : getSize(81);
              final double imageSize = isLandscape ? screenSize.height * 0.7 : getSize(238);

              return Container(
                height: isLandscape ? screenSize.width * 0.4 : getSize(300),
                width: isLandscape ? screenSize.width * 0.4 : getSize(300),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(500),
                  color: AppColors.splashContainerColor.withOpacity(0.7),
                ),
                child: Center(
                  child: Container(
                    height: isLandscape ? screenSize.width * 0.3 : getSize(238),
                    width: isLandscape ? screenSize.width * 0.3 : getSize(238),
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
                          height: logoSize,
                        ),
                        SizedBox(height: getSize(10)),
                        Container(
                          width: isLandscape ? screenSize.width * 0.25 : getSize(200),
                          child: Image.asset(
                            ImageUtilsForTablet.splashImage,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

