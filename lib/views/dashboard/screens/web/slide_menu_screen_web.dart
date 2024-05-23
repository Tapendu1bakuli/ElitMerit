import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizing/sizing.dart';

import '../../../../device_manger/screen_constants.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/theme/custom_text_style.dart';
import '../../../../utils/widows_size_utilis.dart';
class SlideMenuScreenWeb extends StatelessWidget {
  const SlideMenuScreenWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                padding: getWebPadding(left: 30,right: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(500),
                          child: Container(
                              height: getWebSize(438),
                              width: getWebSize(438),
                              padding: EdgeInsets.all(30.ss),
                              decoration: BoxDecoration(
                                  color: AppColors.splashContainerColor),
                              child: Image.asset(
                                "asset/images/mobile/Mask_group.png",
                                height: getWebSize(346),
                                width: getWebSize(346),
                              )),
                        ),
                      ),
                    ),
                    Container(width: getWebHorizontalSize(50),),
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
                            Container(height: getWebSize(40),),
                            Row(
                              children: [
                                Container(
                                  padding: getWebPadding(all: 6),
                                  height: getWebSize(35),
                                  width: getWebSize(35),
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
                                  style: CustomTextStyles.semiBold22TextStyleTablet,
                                ),
                              ],
                            ),
                            Container(
                              height: 10.ss,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex:6,
                                  child: Container(
                                    color: Color(0xFFECECEC).withOpacity(0.21),
                                    height: 1.ss,
                                    width: ScreenConstant.screenHeightOneSeventh,
                                  ),
                                ),
                                Expanded(flex:1,child: Container())
                              ],
                            ),
                            Container(
                              height: 10.ss,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: getWebPadding(all: 2),
                                  height: getWebSize(35),
                                  width: getWebSize(35),
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
                                  style: CustomTextStyles.semiBold22TextStyleTablet,
                                ),
                              ],
                            ),
                            Container(
                              height: 10.ss,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex:6,
                                  child: Container(
                                    color: Color(0xFFECECEC).withOpacity(0.21),
                                    height: 1.ss,
                                    width: ScreenConstant.screenHeightOneSeventh,
                                  ),
                                ),
                                Expanded(flex:1,child: Container())
                              ],
                            ),
                            Container(
                              height: 10.ss,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: getWebPadding(all: 6),
                                  height: getWebSize(35),
                                  width: getWebSize(35),
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
                                  style: CustomTextStyles.semiBold22TextStyleTablet,
                                ),
                              ],
                            ),
                            Container(
                              height: 10.ss,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex:6,
                                  child: Container(
                                    color: Color(0xFFECECEC).withOpacity(0.21),
                                    height: 1.ss,
                                    width: ScreenConstant.screenHeightOneSeventh,
                                  ),
                                ),
                                Expanded(flex:1,child: Container())
                              ],
                            ),
                            Container(
                              height: 10.ss,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: getWebPadding(all: 7),
                                  height: getWebSize(35),
                                  width: getWebSize(35),
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
                                  style: CustomTextStyles.semiBold22TextStyleTablet,
                                ),
                              ],
                            ),
                            Container(
                              height: 10.ss,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex:6,
                                  child: Container(
                                    color: Color(0xFFECECEC).withOpacity(0.21),
                                    height: 1.ss,
                                    width: ScreenConstant.screenHeightOneSeventh,
                                  ),
                                ),
                                Expanded(flex:1,child: Container())
                              ],
                            ),
                          ],
                        )),
                    Expanded(
                        flex: 3,
                        child: Padding(
                          padding: getWebPadding(top: 115),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: getWebPadding(all: 3),
                                    height: getWebSize(35),
                                    width: getWebSize(35),
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
                                    style: CustomTextStyles.semiBold22TextStyleTablet,
                                  ),
                                ],
                              ),
                              Container(
                                height: 10.ss,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex:6,
                                    child: Container(
                                      color: Color(0xFFECECEC).withOpacity(0.21),
                                      height: 1.ss,
                                      width: ScreenConstant.screenHeightOneSeventh,
                                    ),
                                  ),
                                  Expanded(flex:1,child: Container())
                                ],
                              ),
                              Container(
                                height: 10.ss,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: getWebPadding(all: 3),
                                    height: getWebSize(35),
                                    width: getWebSize(35),
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
                                    style: CustomTextStyles.semiBold22TextStyleTablet,
                                  ),
                                ],
                              ),
                              Container(
                                height: 10.ss,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex:6,
                                    child: Container(
                                      color: Color(0xFFECECEC).withOpacity(0.21),
                                      height: 1.ss,
                                      width: ScreenConstant.screenHeightOneSeventh,
                                    ),
                                  ),
                                  Expanded(flex:1,child: Container())
                                ],
                              ),
                              Container(
                                height: 10.ss,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: getWebPadding(all: 4),
                                    height: getWebSize(35),
                                    width: getWebSize(35),
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
                                    style: CustomTextStyles.semiBold22TextStyleTablet,
                                  ),
                                ],
                              ),
                              Container(
                                height: 10.ss,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex:6,
                                    child: Container(
                                      color: Color(0xFFECECEC).withOpacity(0.21),
                                      height: 1.ss,
                                      width: ScreenConstant.screenHeightOneSeventh,
                                    ),
                                  ),
                                  Expanded(flex:1,child: Container())
                                ],
                              ),
                              Container(
                                height: 10.ss,
                              ),
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      height: getWebSize(35),
                                      width: getWebSize(35),
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
                                    style: CustomTextStyles.semiBold22TextStyleTablet,
                                  ),
                                ],
                              ),
                              Container(
                                height: 10.ss,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex:6,
                                    child: Container(
                                      color: Color(0xFFECECEC).withOpacity(0.21),
                                      height: 1.ss,
                                      width: ScreenConstant.screenHeightOneSeventh,
                                    ),
                                  ),
                                  Expanded(flex:1,child: Container())
                                ],
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
              child: InkWell(
                onTap: (){
                  Get.back();
                },
                child: Text(
                  "Logout",
                  style: CustomTextStyles.semiBold14TextStyleTablet,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: AppBar(
                scrolledUnderElevation: 0.0,
                backgroundColor: Colors.transparent,
                leadingWidth: getWebSize(150),
                leading: Row(children: [
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Color(0xFFffffff),
                        size: getWebSize(24),
                      )),
                  Container(
                    width: getWebSize(10),
                  ),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Text(
                      "Back",
                      style: CustomTextStyles.regular18TextStyleTablet,
                    ),
                  ),
                ],),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
