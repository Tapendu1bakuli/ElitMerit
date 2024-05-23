import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:sizing/sizing.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../../device_manger/screen_constants.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/tablet_size_utils.dart';
import '../../../authentication/controller/authentication_controller.dart';
import '../../widget/mobile/toggle_button_widget_mobile.dart';
import '../../widget/tablet/toggel_button_widget.dart';

class AccountSettingsMobileScreen extends StatelessWidget {
  AccountSettingsMobileScreen({Key? key}) : super(key: key);
  final AuthenticationController _authenticationController =
      Get.put(AuthenticationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _authenticationController.accountSettingsFormKey,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("asset/images/mobile/background.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0.h),
            child: ListView(
              children: [
                Container(
                  height: 80.v,
                ),
                Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Color(0xFF222222),
                          size: 12,
                        )),
                    Container(
                      width: 5.h,
                    ),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Text(
                        "Back",
                        style: CustomTextStyles.backTextMobile,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 10.v,
                ),
                Text(
                  "Account Settings",
                  style: CustomTextStyles.accountSettingsTextMobile,
                ),
                Container(
                  height: 15.v,
                ),
                Divider(
                  color: Colors.black.withOpacity(0.09),
                  thickness: 1,
                ),
                Container(
                  height: 15.v,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5.adaptSize),
                      height: 48.v,
                      width: 48.h,
                      decoration: BoxDecoration(
                          color: Color(0xFFECECEC),
                          borderRadius: BorderRadius.circular(70)),
                      child: Image.asset(
                        "asset/icons/tablet/download_5.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      width: 20.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "John Doe",
                              style: CustomTextStyles
                                  .johndoeaccountSettingsTextMobile,
                            ),
                            Container(
                              width: 30.h,
                            ),
                            Image.asset(
                              "asset/icons/tablet/download_6.png",
                              height: 18.v,
                              width: 18.h,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet",
                          style:
                              CustomTextStyles.loremipsumAccountSettingsMobile,
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  height: 25.v,
                ),
                Row(
                  children: [
                    Text("Change Password",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          color: Color(0xFF111A24),
                          fontSize: 14.fss,
                          fontWeight: FontWeight.w500,
                        ))),
                  ],
                ),
                // Container(
                //   height: 0.v,
                // ),
                Obx(
                  () => TextFormField(
                    controller: _authenticationController
                        .accountSettingsPasswordController,
                    keyboardType: TextInputType.text,
                    autofocus: false,
                    maxLines: 1,
                    cursorColor: AppColors.primaryColor,
                    validator:
                        _authenticationController.validatePasswordForSignIn,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    style: TextStyle(
                      color: const Color(0xFF111A24),
                      fontSize: 14.fSize,
                    ),
                    obscureText:
                        _authenticationController.signUpPasswordIndicator.value,
                    decoration: InputDecoration(
                      errorMaxLines: 3,
                      hintText: "xxxxxxxxxxxx",
                      hintStyle: CustomTextStyles.hintStyleAcoountSettings,
                      errorStyle: TextStyle(
                        color: const Color(0xFFE8503A),
                        fontSize: 12.fSize,
                      ),
                      suffixIcon: Obx(
                        () => Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0.h),
                          child: IconButton(
                            focusColor: Colors.white,
                            splashColor: Colors.white,
                            icon: _authenticationController
                                    .signUpPasswordIndicator.value
                                ? Image.asset(
                                    "asset/icons/tablet/View_hide_light@2x.png",
                                    height: 24.v,
                                    width: 24.h,
                                  )
                                : Icon(
                                    Icons.visibility_outlined,
                                    color: _authenticationController
                                            .isPasswordError.value
                                        ? const Color(0xFFE8503A)
                                        : const Color(0xFF0A2342),
                                    size: 18.ss,
                                  ),
                            onPressed: () {
                              _authenticationController
                                      .signUpPasswordIndicator.value =
                                  !_authenticationController
                                      .signUpPasswordIndicator.value;
                            },
                          ),
                        ),
                      ),
                      // contentPadding: EdgeInsets.all(ScreenConstant.sizeMedium),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFD9D9D9)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFD9D9D9)),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 10.v,
                ),
                InkWell(
                  onTap: () {},
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Password reset",
                      style: CustomTextStyles.passwordResetTextAccountSettings,
                    ),
                  ),
                ),
                Container(
                  height: 10.v,
                ),
                Text(
                  "Email and Phone Number",
                  style: CustomTextStyles.changePasswordAccountSettingsMobile,
                ),
                SizedBox(
                  height: ScreenConstant.screenHeightFourteen,
                  child: TextFormField(
                    controller: TextEditingController(),
                    enabled: true,
                    keyboardType: TextInputType.emailAddress,
                    maxLines: 1,
                    decoration: InputDecoration(
                      prefixIconConstraints: BoxConstraints(
                          minWidth: 39.adaptSize, maxHeight: 57.adaptSize),
                      prefixIcon: Container(
                        width: 0,
                        alignment: Alignment(-0.99, 0.0),
                        padding: EdgeInsets.only(right: 10.adaptSize),
                        child: Image.asset(
                          "asset/icons/tablet/download_3.png",
                          color: Colors.black,
                        ),
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(17.0.adaptSize),
                        child: Image.asset(
                          "asset/icons/tablet/download_6.png",
                          height: 10.ss,
                          width: 10.ss,
                          color: Colors.black,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      hintText: "johndoe@gmail.com",
                      hintStyle: CustomTextStyles.hintStyleAcoountSettings2,
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFD9D9D9)),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFD9D9D9)),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 10.v,
                ),
                SizedBox(
                  height: ScreenConstant.screenHeightFourteen,
                  child: TextFormField(
                    controller: TextEditingController(),
                    enabled: true,
                    keyboardType: TextInputType.number,
                    maxLines: 1,
                    decoration: InputDecoration(
                      prefixIconConstraints: BoxConstraints(
                          minWidth: 23.adaptSize, maxHeight: 20.adaptSize),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(right: 10.adaptSize),
                        child: Image.asset(
                          "asset/icons/tablet/download_11.png",
                          color: Colors.black,
                        ),
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(17.0.adaptSize),
                        child: Image.asset(
                          "asset/icons/tablet/download_6.png",
                          height: 10.v,
                          width: 10.h,
                          color: Colors.black,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      hintText: "+971-28-1234567",
                      hintStyle: CustomTextStyles.hintStyleAcoountSettings2,
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFD9D9D9)),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFD9D9D9)),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 20.v,
                ),
                Row(
                  children: [
                    Text("Language",
                        style: CustomTextStyles
                            .changePasswordAccountSettingsMobile),
                  ],
                ),
                DropdownButtonFormField(
                  decoration: InputDecoration(
                    prefixIconConstraints: BoxConstraints(
                        minWidth: 23.adaptSize, maxHeight: 25.adaptSize),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(right: 5.adaptSize,top: 3.adaptSize),
                      child: Image.asset(
                        "asset/icons/tablet/download_12.png",
                        color: Colors.black,
                      ),
                    ),
                    contentPadding: EdgeInsets.zero,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFD9D9D9)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFD9D9D9)),
                    ),
                    label: Padding(
                      padding: EdgeInsets.only(top: 5.0.adaptSize),
                      child: Row(
                        children: [
                          Text(
                            'ENGLISH',
                            style: CustomTextStyles.hintStyleAcoountSettings2,
                          ),
                          Container(
                            width: 10.h,
                          ),
                          Image.asset(
                            "asset/icons/tablet/download_13.png",
                            height: 18.v,
                            width: 19.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                  icon: Padding(
                    padding: EdgeInsets.only(right: 15.0.adaptSize,bottom: 5.adaptSize),
                    child: Image.asset(
                        "asset/icons/tablet/Expand_down_light@2x.png"),
                  ),
                  isExpanded: true,
                  iconSize: 20.0,
                  style: TextStyle(color: Colors.blue),
                  items: [].map(
                    (val) {
                      return DropdownMenuItem<String>(
                        value: val,
                        child: Text(val),
                      );
                    },
                  ).toList(),
                  onChanged: (val) {
                    _authenticationController.selectedLocation = val;
                  },
                ),
                Container(
                  height: 50.v,
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.h, vertical: 22.v),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getTabletPadding(left: 30),
                        child: Container(
                          padding: getTabletPadding(left: 20,right: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Measurement Unit",
                                style: CustomTextStyles
                                    .measurementAccountSettingsTablet,
                              ),
                              Container(
                                height: 12.v,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child:  Obx(
                                          () => GestureDetector(
                                        onTap: () {
                                          _authenticationController.favotitesSelected.value = true;
                                          _authenticationController.savedSelected.value = false;
                                        },
                                        child: ToggleButtonWidgetMobile(
                                          isSelected: _authenticationController.favotitesSelected.value,
                                          text: 'Metric',
                                        ),
                                      ),
                                    ),),
                                  Expanded(flex:5,child:   Obx(
                                        () => GestureDetector(
                                      onTap: () {
                                        _authenticationController.favotitesSelected.value = false;
                                        _authenticationController.savedSelected.value = true;
                                      },
                                      child: ToggleButtonWidgetMobile(
                                        isSelected: _authenticationController.savedSelected.value,
                                        text: 'Imperial',
                                      ),
                                    ),
                                  ),)


                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 30.ss,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


