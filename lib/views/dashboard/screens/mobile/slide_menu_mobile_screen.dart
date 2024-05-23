import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/phone_size_utils.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:sizing/sizing.dart';

import '../../../../device_manger/screen_constants.dart';
import '../../../../utils/colors/app_colors.dart';

class SlideMenuMobileScreen extends StatelessWidget {
  const SlideMenuMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/icons/tablet/splash_mob.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          height: Get.height,
          width: Get.width,
          decoration: BoxDecoration(
              color: AppColors.splashContainerColor.withOpacity(0.7)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: getSize(170),
                  padding: getPadding(all: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(500),
                      color: AppColors.splashContainerColor),
                  child: Image.asset("asset/icons/tablet/profileImage.png")),
              Container(height:getSize(20)),
              Text(
                "John Doe",
                style: CustomTextStyles.semiBold22Mobile,
              ),
              Text(
                "info@johndow.com",
                style: CustomTextStyles.semiBold22Mobile,
              ),
              Container(
                height: getSize(50),
              ),
              Padding(
                padding: getPadding(left: 38,right: 80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: getPadding(all: 5),
                          height: getSize(25),
                          width: getSize(25),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xFF50C878)),
                          child: Image.asset(
                            "asset/icons/tablet/searchSlide.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          width: 10.ss,
                        ),
                        Text(
                          "Search for Properties",
                          style: CustomTextStyles.semiBold22Mobile,
                        ),
                      ],
                    ),
                    Container(
                      height: 10.ss,
                    ),
                    Container(
                      color: Colors.white24,
                      height: 1.ss,
                      width: getSize(220),
                    ),
                    Container(
                      height: 10.ss,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: getPadding(all: 2),
                          height: getSize(25),
                          width: getSize(25),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xFF50C878)),
                          child: Image.asset(
                            "asset/icons/tablet/propertySlide.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          width: 10.ss,
                        ),
                        Text(
                          "My Properties",
                          style: CustomTextStyles.semiBold22Mobile,
                        ),
                      ],
                    ),
                    Container(
                      height: 10.ss,
                    ),
                    Container(
                      color: Colors.white24,
                      height: 1.ss,
                      width: getSize(220),
                    ),
                    Container(
                      height: 10.ss,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5.ss),
                          height: getSize(25),
                          width: getSize(25),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xFF50C878)),
                          child: Image.asset(
                            "asset/icons/tablet/addSlide.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          width: 10.ss,
                        ),
                        Text(
                          "Add Property",
                          style: CustomTextStyles.semiBold22Mobile,
                        ),
                      ],
                    ),
                    Container(
                      height: 10.ss,
                    ),
                    Container(
                      color: Colors.white24,
                      height: 1.ss,
                      width: getSize(220),
                    ),
                    Container(
                      height: 10.ss,
                    ),
                    Row(
                      children: [
                        Container(
                          padding:getPadding(all: 5),
                          height: getSize(25),
                          width: getSize(25),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xFF50C878)),
                          child: Image.asset(
                            "asset/icons/tablet/financial.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          width: 10.ss,
                        ),
                        Text(
                          "Financial Overview",
                          style: CustomTextStyles.semiBold22Mobile,
                        ),
                      ],
                    ),
                    Container(
                      height: 10.ss,
                    ),
                    Container(
                      color: Colors.white24,
                      height: 1.ss,
                      width: getSize(220),
                    ),
                    Container(
                      height: 10.ss,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: getPadding(all: 3),
                          height: getSize(25),
                          width: getSize(25),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFF50C878)),
                          child: Image.asset(
                            "asset/images/mobile/upcomiing_installments.png",
                            fit: BoxFit.fill,
                            height: getSize(14),
                          ),
                        ),
                        Container(
                          width: 10.ss,
                        ),
                        Text(
                          "Upcoming Installments",
                          style: CustomTextStyles.semiBold22Mobile,
                        ),
                      ],
                    ),
                    Container(height: 10.ss,),
                    Container(
                      color: Colors.white24,
                      height: 1.ss,
                      width: getSize(220),
                    ),
                    Container(height: 10.ss,),
                    Row(
                      children: [
                        Container(
                          padding: getPadding(all: 3),
                          height: getSize(25),
                          width: getSize(25),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFF50C878)),
                          child: Image.asset(
                            "asset/images/mobile/ongoing_deals.png",fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: 10.ss,
                        ),
                        Text(
                          "Ongoing Deals",
                          style: CustomTextStyles.semiBold22Mobile,
                        ),
                      ],
                    ),
                    Container(height: 10.ss,),
                    Container(
                      color: Colors.white24,
                      height: 1.ss,
                      width: getSize(220),
                    ),
                    Container(height: 10.ss,),
                    Row(
                      children: [
                        Container(
                          padding: getPadding(all: 3),
                          height: getSize(25),
                          width: getSize(25),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFF50C878)),
                          child: Center(
                            child: Image.asset(
                              "asset/images/mobile/transaction_history.png",
                              fit: BoxFit.fill,
                              //height: getSize(14),
                            ),
                          ),
                        ),
                        Container(
                          width: 10.ss,
                        ),
                        Text(
                          "Transaction History",
                          style: CustomTextStyles.semiBold22Mobile,
                        ),
                      ],
                    ),
                    Container(height: 10.ss,),
                    Container(
                      color: Colors.white24,
                      height: 1.ss,
                      width: getSize(220),
                    ),
                    Container(height: 10.ss,),
                    Row(
                      children: [
                        Container(
                          height: getSize(25),
                          width: getSize(25),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xFF50C878)),
                          child: Center(
                            child: Image.asset(
                              "asset/images/mobile/profile.png",
                              fit: BoxFit.cover,
                              height: getSize(14),
                            ),
                          ),
                        ),
                        Container(
                          width: 10.ss,
                        ),
                        Text(
                          "Profile",
                          style: CustomTextStyles.semiBold22Mobile,
                        ),
                      ],
                    ),
                    Container(height: 10.ss,),
                    Container(
                      color: Colors.white24,
                      height: 1.ss,
                      width: getSize(220),
                    ),
                    Container(height: 10.ss,),
                    Text(
                      "Logout",
                      style: CustomTextStyles.medium16FFFFFFMobile,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
