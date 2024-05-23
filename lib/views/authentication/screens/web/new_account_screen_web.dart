import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizing/sizing.dart';

import '../../../../device_manger/screen_constants.dart';
import '../../../../utils/asset_utilis/asset_tablet_utilis.dart';
import '../../../../utils/phone_size_utils.dart';
import '../../../../utils/theme/custom_text_style.dart';
import '../../../../utils/widgets_utils/app_button.dart';
import '../../../../utils/widgets_utils/widgets/custom_text_form_field.dart';
import '../../../../utils/widows_size_utilis.dart';
import '../../controller/authentication_controller.dart';
class NewAccountScreenWeb extends StatelessWidget {
   NewAccountScreenWeb({Key? key}) : super(key: key);
  final AuthenticationController _authenticationController =
  Get.put(AuthenticationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _authenticationController.createAccountFormKey,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageUtilsForTablet.universalBackgroundImage),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Container(
              width: 700.ss,
              child: ListView(
                children: [
                  Container(
                    height: 80.ss,
                  ),
                  AppBar(
                    scrolledUnderElevation: 0.0,
                    title: Text(
                      "New Account",
                      style: CustomTextStyles.bold32Tablet,
                    ),
                    centerTitle: true,
                    backgroundColor: Colors.transparent,
                    leadingWidth: getWebSize(150),
                    leading: Row(children: [
                      InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Color(0xFF222222),
                            size: getWebSize(24),
                          )),
                      Container(
                        width: getSize(10),
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
                  Container(
                    height: getWebSize(40),
                  ),
                  Padding(
                    padding: getWebPadding(left: 25,right: 25),
                    child: Container(
                      decoration: BoxDecoration(color: Color(0xFF000000).withOpacity(0.12)),
                      height: getWebSize(2),
                    ),
                  ),
                  Container(
                    height: getWebSize(40),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20.ss,
                              ),
                              child: Row(
                                children: [
                                  Text("First Name",
                                      style: CustomTextStyles.medium15Tablet),
                                  const Spacer(),
                                  Obx(
                                        () => _authenticationController
                                        .isUserNameError.value
                                        ? FittedBox(
                                      child: Text(
                                          "Please enter your first name",
                                          style: CustomTextStyles.light14WithOutFssFD1600Tablet),
                                    )
                                        : const Offstage(),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: getWebSize(30),
                            ),
                            Obx(
                                  () => Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.ss,
                                ),
                                child: CustomTextFormField(
                                  textStyle: TextStyle(
                                      color: const Color(0xFF111A24),
                                      fontSize: 18,
                                      fontFamily: 'Gordita'),

                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'John',
                                  hintStyle: CustomTextStyles.regular18Web,
                                  contentPadding: EdgeInsets.symmetric(horizontal: 12.ss,vertical: 10.ss),
                                  controller: _authenticationController
                                      .createNewAccountFirstNameController,
                                  autofocus: false,
                                  maxLines: 1,
                                  validator: _authenticationController.validateName,
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  errorValue: _authenticationController.isUserNameError.value,
                                  suffix: Padding(
                                    padding: EdgeInsets.only(right: 10.0.ss),
                                    child: Image.asset(
                                      "asset/icons/tablet/User_light_3x.png",
                                        height: ScreenConstant.defaultHeightTwentyThree
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20.ss,
                              ),
                              child: Row(
                                children: [
                                  Text("Email Address",
                                      style: CustomTextStyles.medium15Tablet),
                                  const Spacer(),
                                  Obx(
                                        () => _authenticationController
                                        .isEmailError.value
                                        ? FittedBox(
                                      child: Text(
                                          "Please enter a valid email address",
                                          style: CustomTextStyles.light14WithOutFssFD1600Tablet),
                                    )
                                        : const Offstage(),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: getWebSize(30),
                            ),
                            Obx(
                                  () => Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.ss,
                                ),
                                child: CustomTextFormField(
                                  textStyle: TextStyle(
                                      color: const Color(0xFF111A24),
                                      fontSize: 18,
                                      fontFamily: 'Gordita'),
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'johndoe@gmail.com',
                                  hintStyle: CustomTextStyles.regular18Web,
                                  contentPadding: EdgeInsets.symmetric(horizontal: 12.ss,vertical: 10.ss),
                                  controller: _authenticationController
                                      .createNewAccountEmailController,
                                  autofocus: false,
                                  maxLines: 1,
                                  validator: _authenticationController.validateEmail,
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  errorValue: _authenticationController.isEmailError.value,
                                  suffix: Padding(
                                    padding: EdgeInsets.only(right: 10.0.ss),
                                    child: Image.asset(
                                      "asset/icons/tablet/download_3.png",
                                        height: ScreenConstant.defaultHeightTwentyThree
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: getWebSize(60),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20.ss,
                              ),
                              child: Row(
                                children: [
                                  Text("Last Name",
                                      style: CustomTextStyles.medium15Tablet),
                                  const Spacer(),
                                  Obx(
                                        () => _authenticationController
                                        .isUserSurNameError.value
                                        ? FittedBox(
                                      child: Text(
                                          "Please enter your last name",
                                          style: CustomTextStyles.light14WithOutFssFD1600Tablet),
                                    )
                                        : const Offstage(),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: getWebSize(30),
                            ),
                            Obx(
                                  () => Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.ss,
                                ),
                                child: CustomTextFormField(
                                  textStyle: TextStyle(
                                      color: const Color(0xFF111A24),
                                      fontSize: 18,
                                      fontFamily: 'Gordita'),
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'Doe',
                                  hintStyle: CustomTextStyles.regular18Web,
                                  contentPadding: EdgeInsets.symmetric(horizontal: 12.ss,vertical: 10.ss),
                                  controller: _authenticationController
                                      .createNewAccountLastNameController,
                                  autofocus: false,
                                  maxLines: 1,
                                  validator: _authenticationController.validateSurName,
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  errorValue: _authenticationController.isUserSurNameError.value,
                                  suffix: Padding(
                                    padding: EdgeInsets.only(right: 10.0.ss),
                                    child: Image.asset(
                                      "asset/icons/tablet/User_light_3x.png",
                                        height: ScreenConstant.defaultHeightTwentyThree
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20.ss,
                              ),
                              child: Row(
                                children: [
                                  Text("Phone Number",
                                      style: CustomTextStyles.medium15Tablet),
                                  const Spacer(),
                                  Obx(
                                        () => _authenticationController
                                        .isUserPhoneError.value
                                        ? FittedBox(
                                      child: Text(
                                          "Please enter your phone number",
                                          style: CustomTextStyles.light14WithOutFssFD1600Tablet),
                                    )
                                        : const Offstage(),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: getWebSize(30),
                            ),
                            Obx(
                                  () => Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.ss,
                                ),
                                child: CustomTextFormField(
                                  textStyle: TextStyle(
                                      color: const Color(0xFF111A24),
                                      fontSize: 18,
                                      fontFamily: 'Gordita'),
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: '+1 142xxxxxxx',
                                  textInputType: TextInputType.number,
                                  hintStyle: CustomTextStyles.regular18Web,
                                  contentPadding: EdgeInsets.symmetric(horizontal: 12.ss,vertical: 10.ss),
                                  controller: _authenticationController
                                      .createNewAccountPhoneController,
                                  autofocus: false,
                                  maxLines: 1,
                                  validator: _authenticationController.validatePhone,
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  errorValue: _authenticationController.isUserPhoneError.value,
                                  suffix: Padding(
                                    padding: getWebPadding(all: 14),
                                    child: Image.asset(
                                      "asset/icons/tablet/download_11.png",
                                        height: ScreenConstant.defaultHeightTwentyThree
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 30.ss,
                  ),
                  Padding(
                    padding: getWebPadding(left: 30,right: 30),
                    child:  AppButton(
                      onPressed: () {
                        //  Get.toNamed(homeBottomSheet);
                      },
                      buttonText: "Sign up",
                      color: const Color(0xFF50C878),
                      borderColor: const Color(0xFF50C878),
                      borderRadious: 10,
                      borderWidth: 1,
                      elevation: 0,
                      height:  ScreenConstant.screenHeightThirteen,
                      textStyle: CustomTextStyles.customButtonTextStyleTablet,
                    ),
                  ),
                  Container(
                    height: getWebSize(50 ),
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                      },
                      child: Text(
                          "Privacy Policy",
                          style:   CustomTextStyles.regular14WithUnderLineTablet
                      ),
                    ),),
                  Container(
                    height: getWebSize(20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account ? ",
                        style: CustomTextStyles.regular16TextStyleTablet,
                      ),
                      InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Text(
                            "SignIn",
                            style: CustomTextStyles.semiBold1650C878TextStyleTablet,
                          )),
                    ],
                  ),
                  Container(height: getWebHorizontalSize(30),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
