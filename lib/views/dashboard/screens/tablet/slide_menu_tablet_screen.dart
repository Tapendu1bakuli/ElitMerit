import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/device_manger/screen_constants.dart';
import 'package:main/utils/tablet_size_utils.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:sizing/sizing.dart';

import '../../../../utils/asset_utilis/asset_tablet_utilis.dart';
import '../../../../utils/colors/app_colors.dart';

class SlideMenuTabletScreen extends StatelessWidget {
  const SlideMenuTabletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool? isLandscape =
        MediaQuery.of(context).orientation == Orientation.portrait;
    print("Landscape:$isLandscape");
    return isLandscape?Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("asset/icons/tablet/slideMenuBack.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
        Container(
        decoration: BoxDecoration(
        color: AppColors.splashContainerColor.withOpacity(0.7)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50.ss,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(500),
                  child: Container(
                      height: getTabletSize(438),
                      width: getTabletSize(438),
                      padding: EdgeInsets.all(30.ss),
                      decoration: BoxDecoration(
                          color: AppColors.splashContainerColor),
                      child: Image.asset(
                        "asset/images/mobile/Mask_group.png",
                        height: getTabletSize(346),
                        width: getTabletSize(346),
                      )),
                ),
              ),
              Container(
                height: 10.ss,
              ),
              Center(
                child: Text(
                  "John Doe",
                  style: CustomTextStyles.medium20TextStyleTablet,
                ),
              ),
              Center(
                child: Text(
                  "info@johndow.com",
                  style: CustomTextStyles.medium20TextStyleTablet,textAlign: TextAlign.center,
                ),
              ),
              Container(
                height: 50.ss,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  children: [
                    _roundWidget("asset/images/mobile/search3.png"),
                    Container(
                      width: 10.ss,
                    ),
                    Text(
                      "Search for Properties",
                      style: CustomTextStyles.semiBold14TextStyleTablet,
                    ),
                  ],
                ),
              ),
              Container(
                height: 10.ss,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  color: Color(0xFFECECEC).withOpacity(0.21),
                  height: 1.ss,
                  width: MediaQuery.of(context).size.width/2,
                ),
              ),
              Container(
                height: 10.ss,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  children: [
                    _roundWidget("asset/images/mobile/myproperty3.png"),
                    Container(
                      width: 10.ss,
                    ),
                    Text(
                      "My Properties",
                      style: CustomTextStyles.semiBold14TextStyleTablet,
                    ),
                  ],
                ),
              ),
              Container(
                height: 10.ss,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  color: Color(0xFFECECEC).withOpacity(0.21),
                  height: 1.ss,
                  width: MediaQuery.of(context).size.width/2,
                ),
              ),
              Container(
                height: 10.ss,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  children: [
                    _roundWidget("asset/images/mobile/addproperty3.png"),
                    Container(
                      width: 10.ss,
                    ),
                    Text(
                      "Add Property",
                      style: CustomTextStyles.semiBold14TextStyleTablet,
                    ),
                  ],
                ),
              ),
              Container(
                height: 10.ss,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  color: Color(0xFFECECEC).withOpacity(0.21),
                  height: 1.ss,
                  width: MediaQuery.of(context).size.width/2,
                ),
              ),
              Container(
                height: 10.ss,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  children: [
                    _roundWidget("asset/images/mobile/financial3.png"),
                    Container(
                      width: 10.ss,
                    ),
                    Text(
                      "Financial Overview",
                      style: CustomTextStyles.semiBold14TextStyleTablet,
                    ),
                  ],
                ),
              ),
              Container(
                height: 10.ss,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  color: Color(0xFFECECEC).withOpacity(0.21),
                  height: 1.ss,
                  width: MediaQuery.of(context).size.width/2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  children: [
                    _roundWidget("asset/images/mobile/upcomiing_installments.png"),
                    Container(
                      width: 10.ss,
                    ),
                    Text(
                      "Upcoming Installments",
                      style: CustomTextStyles.semiBold14TextStyleTablet,
                    ),
                  ],
                ),
              ),
              Container(
                height: 10.ss,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  color: Color(0xFFECECEC).withOpacity(0.21),
                  height: 1.ss,
                  width: MediaQuery.of(context).size.width/2,
                ),
              ),
              Container(
                height: 10.ss,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  children: [
                    _roundWidget("asset/images/mobile/ongoing_deals.png"),
                    Container(
                      width: 10.ss,
                    ),
                    Text(
                      "Ongoing Deals",
                      style: CustomTextStyles.semiBold14TextStyleTablet,
                    ),
                  ],
                ),
              ),
              Container(
                height: 10.ss,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  color: Color(0xFFECECEC).withOpacity(0.21),
                  height: 1.ss,
                  width: MediaQuery.of(context).size.width/2,
                ),
              ),
              Container(
                height: 10.ss,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  children: [
                    _roundWidget("asset/images/mobile/transaction_history.png"),
                    Container(
                      width: 10.ss,
                    ),
                    Text(
                      "Transaction History",
                      style: CustomTextStyles.semiBold14TextStyleTablet,
                    ),
                  ],
                ),
              ),
              Container(
                height: 10.ss,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  color: Color(0xFFECECEC).withOpacity(0.21),
                  height: 1.ss,
                  width: MediaQuery.of(context).size.width/2,
                ),
              ),
              Container(
                height: 10.ss,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  children: [
                    _roundWidget("asset/images/mobile/profile.png"),
                    Container(
                      width: 10.ss,
                    ),
                    Text(
                      "Profile",
                      style: CustomTextStyles.semiBold14TextStyleTablet,
                    ),
                  ],
                ),
              ),
              Container(
                height: 10.ss,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  color: Color(0xFFECECEC).withOpacity(0.21),
                  height: 1.ss,
                  width: MediaQuery.of(context).size.width/2,
                ),
              ),
            ],
          ),
        ),
            Positioned(
              bottom: 20.ss,
              right: 20.ss,
              child: Text(
                "Logout",
                style: CustomTextStyles.semiBold14TextStyleTablet,
              ),
            )
          ],
        ),
      ),
    ):Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("asset/icons/tablet/slideMenuBack.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: AppColors.splashContainerColor.withOpacity(0.7)),
              child: Padding(
                padding: getTabletPadding(left: 30,right: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(500),
                          child: Container(
                              height: getTabletSize(438),
                              width: getTabletSize(438),
                              padding: EdgeInsets.all(30.ss),
                              decoration: BoxDecoration(
                                  color: AppColors.splashContainerColor),
                              child: Image.asset(
                                "asset/images/mobile/Mask_group.png",
                                height: getTabletSize(346),
                                width: getTabletSize(346),
                              )),
                        ),
                      ),
                    ),
                    Container(width: getTabletHorizontalSize(50),),
                    Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "John Doe",
                              style: CustomTextStyles.medium20TextStyleTablet,
                            ),
                            Text(
                              "info@johndow.com",
                              style: CustomTextStyles.medium20TextStyleTablet,
                            ),
                            Container(height: getTabletSize(40),),
                            Row(
                              children: [
                                Container(
                                  padding: getTabletPadding(all: 6),
                                  height: getTabletSize(35),
                                  width: getTabletSize(35),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Color(0xFF50C878)),
                                  child: Image.asset(
                                    "asset/images/mobile/search3.png",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  width: 10.ss,
                                ),
                                Text(
                                  "Search for Properties",
                                  style: CustomTextStyles.semiBold14TextStyleTablet,
                                ),
                              ],
                            ),
                            Container(
                              height: 10.ss,
                            ),
                            Container(
                              color: Color(0xFFECECEC).withOpacity(0.21),
                              height: 1.ss,
                              width: ScreenConstant.screenWidthHalf+50,
                            ),
                            Container(
                              height: 10.ss,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: getTabletPadding(all: 2),
                                  height: getTabletSize(35),
                                  width: getTabletSize(35),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Color(0xFF50C878)),
                                  child: Image.asset(
                                    "asset/images/mobile/myproperty3.png",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  width: 10.ss,
                                ),
                                Text(
                                  "My Properties",
                                  style: CustomTextStyles.semiBold14TextStyleTablet,
                                ),
                              ],
                            ),
                            Container(
                              height: 10.ss,
                            ),
                            Container(
                              color: Color(0xFFECECEC).withOpacity(0.21),
                              height: 1.ss,
                              width: ScreenConstant.screenWidthHalf+50,
                            ),
                            Container(
                              height: 10.ss,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: getTabletPadding(all: 6),
                                  height: getTabletSize(35),
                                  width: getTabletSize(35),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Color(0xFF50C878)),
                                  child: Image.asset(
                                    "asset/images/mobile/addproperty3.png",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  width: 10.ss,
                                ),
                                Text(
                                  "Add Property",
                                  style: CustomTextStyles.semiBold14TextStyleTablet,
                                ),
                              ],
                            ),
                            Container(
                              height: 10.ss,
                            ),
                            Container(
                              color: Color(0xFFECECEC).withOpacity(0.21),
                              height: 1.ss,
                              width: ScreenConstant.screenWidthHalf+50,
                            ),
                            Container(
                              height: 10.ss,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: getTabletPadding(all: 7),
                                  height: getTabletSize(35),
                                  width: getTabletSize(35),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Color(0xFF50C878)),
                                  child: Image.asset(
                                    "asset/images/mobile/financial3.png",
                                    fit: BoxFit.fill,
                                  ),
                                ),

                                Container(
                                  width: 10.ss,
                                ),
                                Text(
                                  "Financial Overview",
                                  style: CustomTextStyles.semiBold14TextStyleTablet,
                                ),
                              ],
                            ),
                            Container(
                              height: 10.ss,
                            ),
                            Container(
                              color: Color(0xFFECECEC).withOpacity(0.21),
                              height: 1.ss,
                              width: ScreenConstant.screenWidthHalf+50,
                            ),
                          ],
                        )),
                    Expanded(
                        flex: 3,
                        child: Padding(
                          padding: getTabletPadding(top: 115),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: getTabletPadding(all: 3),
                                    height: getTabletSize(35),
                                    width: getTabletSize(35),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Color(0xFF50C878)),
                                    child: Image.asset(
                                      "asset/images/mobile/upcomiing_installments.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Container(
                                    width: 10.ss,
                                  ),
                                  Text(
                                    "Upcoming Installments",
                                    style: CustomTextStyles.semiBold14TextStyleTablet,
                                  ),
                                ],
                              ),
                              Container(
                                height: 10.ss,
                              ),
                              Container(
                                color: Color(0xFFECECEC).withOpacity(0.21),
                                height: 1.ss,
                                width: ScreenConstant.screenWidthHalf+50,
                              ),
                              Container(
                                height: 10.ss,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: getTabletPadding(all: 3),
                                    height: getTabletSize(35),
                                    width: getTabletSize(35),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Color(0xFF50C878)),
                                    child: Image.asset(
                                      "asset/images/mobile/ongoing_deals.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Container(
                                    width: 10.ss,
                                  ),
                                  Text(
                                    "Ongoing Deals",
                                    style: CustomTextStyles.semiBold14TextStyleTablet,
                                  ),
                                ],
                              ),
                              Container(
                                height: 10.ss,
                              ),
                              Container(
                                color: Color(0xFFECECEC).withOpacity(0.21),
                                height: 1.ss,
                                width: ScreenConstant.screenWidthHalf+50,
                              ),
                              Container(
                                height: 10.ss,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: getTabletPadding(all: 4),
                                    height: getTabletSize(35),
                                    width: getTabletSize(35),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Color(0xFF50C878)),
                                    child: Image.asset(
                                      "asset/images/mobile/transaction_history.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Container(
                                    width: 10.ss,
                                  ),
                                  Text(
                                    "Transaction History",
                                    style: CustomTextStyles.semiBold14TextStyleTablet,
                                  ),
                                ],
                              ),
                              Container(
                                height: 10.ss,
                              ),
                              Container(
                                color: Color(0xFFECECEC).withOpacity(0.21),
                                height: 1.ss,
                                width: ScreenConstant.screenWidthHalf+50,
                              ),
                              Container(
                                height: 10.ss,
                              ),
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      height: getTabletSize(35),
                                      width: getTabletSize(35),
                                      decoration: BoxDecoration(

                                          color: Color(0xFF50C878)),
                                      child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Image.asset("asset/images/mobile/profile.png"),
                                          )
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 10.ss,
                                  ),
                                  Text(
                                    "Profile",
                                    style: CustomTextStyles.semiBold14TextStyleTablet,
                                  ),
                                ],
                              ),
                              Container(
                                height: 10.ss,
                              ),
                              Container(
                                color: Color(0xFFECECEC).withOpacity(0.21),
                                height: 1.ss,
                                width: ScreenConstant.screenWidthHalf+50,
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20.ss,
              right: 20.ss,
              child: Text(
                "Logout",
                style: CustomTextStyles.semiBold14TextStyleTablet,
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget _roundWidget(String? imageName){
    return  ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(7),
        height: 35,
        width: 35,
        decoration: BoxDecoration(
            color: Color(0xFF50C878)),
        child: Image.asset(
          imageName??"",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
