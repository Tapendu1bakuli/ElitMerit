import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:main/utils/phone_size_utils.dart';
import 'package:main/utils/tablet_size_utils.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:sizing/sizing.dart';
import '../../../../device_manger/screen_constants.dart';
import '../../../../utils/asset_utilis/asset_tablet_utilis.dart';
import '../../../../utils/widgets_utils/app_button.dart';
import '../../../../utils/widgets_utils/widgets/custom_text_form_field.dart';
import '../../controller/authentication_controller.dart';

class NewAccountScreenTablet extends StatelessWidget {
   NewAccountScreenTablet({Key? key}) : super(key: key);
  final AuthenticationController _authenticationController =
      Get.put(AuthenticationController());

  @override
  Widget build(BuildContext context) {
    print("tablet");
    bool? isLandscape =
        MediaQuery.of(context).orientation == Orientation.portrait;
    print("Landscape:$isLandscape");
    return isLandscape?Scaffold(
      body: Form(
        key:_authenticationController.createAccountFormKey,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageUtilsForTablet.universalBackgroundImageTabletPortrait),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: ListView(
              children: [
                Container(
                  height: 80.ss,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: AppBar(
                    scrolledUnderElevation: 0.0,
                    title: Text(
                      "New Account",
                      style: CustomTextStyles.bold32Tablet,
                    ),
                    centerTitle: true,
                    backgroundColor: Colors.transparent,
                    leadingWidth: 100,
                    leading: Row(children: [
                      InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Color(0xFF222222),
                            size: 20,
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
                          style: CustomTextStyles.regular18000000TextStyleTablet,
                        ),
                      ),
                    ],),
                  ),
                ),
                Container(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
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
                              style: CustomTextStyles.light14WithoutFsizeFD1600Tablet),
                        )
                            : const Offstage(),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Obx(
                        () => CustomTextFormField(
                          textStyle: TextStyle(
                              color: const Color(0xFF111A24),
                              fontSize: 14.fss,
                              fontFamily: 'Gordita'),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'John',
                          hintStyle: CustomTextStyles.regular18232323Tablet,
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
                              height: getTabletSize(26),
                              width: getTabletSize(26),
                            ),
                          ),
                        ),
                  ),
                ),
                Container(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.ss,
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
                              style: CustomTextStyles.light14WithoutFsizeFD1600Tablet),
                        )
                            : const Offstage(),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Obx(
                        () => CustomTextFormField(
                          textStyle: TextStyle(
                              color: const Color(0xFF111A24),
                              fontSize: 14.fss,
                              fontFamily: 'Gordita'),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Doe',
                          hintStyle: CustomTextStyles.regular18232323Tablet,
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
                              height: getTabletSize(26),
                              width: getTabletSize(26),
                            ),
                          ),
                        ),
                  ),
                ),
                Container(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
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
                              style: CustomTextStyles.light14WithoutFsizeFD1600Tablet),
                        )
                            : const Offstage(),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Obx(
                        () => CustomTextFormField(
                          textStyle: TextStyle(
                              color: const Color(0xFF111A24),
                              fontSize: 14.fss,
                              fontFamily: 'Gordita'),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'johndoe@gmail.com',
                          hintStyle: CustomTextStyles.regular18232323Tablet,
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
                              height: getTabletSize(26),
                              width: getTabletSize(26),
                            ),
                          ),
                        ),
                  ),
                ),
                Container(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
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
                              style: CustomTextStyles.light14WithoutFsizeFD1600Tablet),
                        )
                            : const Offstage(),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Obx(
                        () => CustomTextFormField(
                          textStyle: TextStyle(
                              color: const Color(0xFF111A24),
                              fontSize: 14.fss,
                              fontFamily: 'Gordita'),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: '+1 142xxxxxxx',
                          textInputType: TextInputType.number,
                          hintStyle: CustomTextStyles.regular18232323Tablet,
                          controller: _authenticationController
                              .createNewAccountPhoneController,
                          autofocus: false,
                          maxLines: 1,
                          validator: _authenticationController.validatePhone,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          errorValue: _authenticationController.isUserPhoneError.value,
                          suffix: Padding(
                            padding: getTabletPadding(all: 14),
                            child: Image.asset(
                              "asset/icons/tablet/download_11.png",
                              height: 24,
                            ),
                          ),
                        ),
                  ),
                ),
                Container(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
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
                    height: ScreenConstant.screenHeightEleven,
                    textStyle: CustomTextStyles.customButtonTextStyleTablet,
                  ),
                ),
                Container(
                  height: getTabletSize(50 ),
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
                  height: getTabletSize(20),
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
                Container(height: getTabletHorizontalSize(30),)
              ],
            ),
          ),
        ),
      ),
    ):Scaffold(
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
            child: Padding(
              padding: getTabletPadding(left: 90 ,right: 90),
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
                    leadingWidth: getTabletSize(150),
                    leading: Row(children: [
                      InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Color(0xFF222222),
                            size: getSize(24),
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
                    height: getTabletSize(40),
                  ),
                  Padding(
                    padding: getTabletPadding(left: 25,right: 25),
                    child: Container(
                      decoration: BoxDecoration(color: Color(0xFF000000).withOpacity(0.12)),
                      height: getTabletSize(2),
                    ),
                  ),
                  Container(
                    height: getTabletSize(40),
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
                                                style: CustomTextStyles.light14FD1600Tablet),
                                          )
                                        : const Offstage(),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: getTabletSize(30),
                            ),
                            Obx(
                              () => Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.ss,
                                ),
                                child: CustomTextFormField(
                                  textStyle: TextStyle(
                                      color: const Color(0xFF111A24),
                                      fontSize: 14.fss,
                                      fontFamily: 'Gordita'),
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'John',
                                  hintStyle: CustomTextStyles.regular18232323Tablet,
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
                                          height: getTabletSize(26),
                                          width: getTabletSize(26),
                                        ),
                                      ),
                                ),
                                // child: TextFormField(
                                //   controller: _authenticationController
                                //       .createNewAccountFirstNameController,
                                //   keyboardType: TextInputType.name,
                                //   autofocus: false,
                                //   maxLines: 1,
                                //   cursorColor: AppColors.primaryColor,
                                //   textInputAction: TextInputAction.next,
                                //   validator:
                                //       _authenticationController.validateName,
                                //   autovalidateMode:
                                //       AutovalidateMode.onUserInteraction,
                                //   style: TextStyle(
                                //       color: const Color(0xFF111A24),
                                //       fontSize: 14.fss,
                                //       fontFamily: 'Gordita'),
                                //   decoration: InputDecoration(
                                //     filled: true,
                                //     fillColor: Colors.white,
                                //     hintText: "John",
                                //     hintStyle: TextStyle(
                                //       color: const Color(0xFF232323)
                                //           .withOpacity(0.2),
                                //       fontSize: 12.fss,
                                //     ),
                                //     errorStyle: TextStyle(
                                //         color: const Color(0xFFE8503A),
                                //         fontSize: 12.fss,
                                //         fontFamily: 'Gordita'),
                                //     suffixIcon: Padding(
                                //       padding: EdgeInsets.only(right: 10.0.ss),
                                //       child: Image.asset(
                                //         "asset/icons/tablet/User_light.png",
                                //         color: _authenticationController
                                //                 .isEmailError.value
                                //             ? Colors.red
                                //             : Colors.black,
                                //       ),
                                //     ),
                                //     contentPadding: EdgeInsets.all(
                                //         ScreenConstant.sizeMedium),
                                //     focusedBorder: OutlineInputBorder(
                                //       borderRadius:
                                //           BorderRadius.all(Radius.circular(10)),
                                //       borderSide: BorderSide(
                                //           color: _authenticationController
                                //                   .isEmailError.value
                                //               ? Colors.red
                                //               : AppColors.primaryColor,
                                //           width: 1,
                                //           style: BorderStyle.solid),
                                //     ),
                                //     disabledBorder: OutlineInputBorder(
                                //       borderRadius:
                                //           BorderRadius.all(Radius.circular(10)),
                                //       borderSide: BorderSide(
                                //           color: _authenticationController
                                //                   .isEmailError.value
                                //               ? Colors.red
                                //               : Color(0xFFC4C4C4),
                                //           width: 1,
                                //           style: BorderStyle.solid),
                                //     ),
                                //     enabledBorder: OutlineInputBorder(
                                //       borderRadius:
                                //           BorderRadius.all(Radius.circular(10)),
                                //       borderSide: BorderSide(
                                //           color: _authenticationController
                                //                   .isEmailError.value
                                //               ? Colors.red
                                //               : Color(0xFFC4C4C4),
                                //           width: 1,
                                //           style: BorderStyle.solid),
                                //     ),
                                //     errorBorder: const OutlineInputBorder(
                                //       borderRadius:
                                //           BorderRadius.all(Radius.circular(10)),
                                //       borderSide: BorderSide(
                                //           color: Color(0xFFE8503A),
                                //           width: 1,
                                //           style: BorderStyle.solid),
                                //     ),
                                //     focusedErrorBorder:
                                //         const OutlineInputBorder(
                                //       borderRadius:
                                //           BorderRadius.all(Radius.circular(10)),
                                //       borderSide: BorderSide(
                                //           color: Color(0xFFE8503A),
                                //           width: 1,
                                //           style: BorderStyle.solid),
                                //     ),
                                //   ),
                                // ),
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
                                          style: CustomTextStyles.light14FD1600Tablet),
                                    )
                                        : const Offstage(),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: getTabletSize(30),
                            ),
                            Obx(
                                  () => Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.ss,
                                ),
                                child: CustomTextFormField(
                                  textStyle: TextStyle(
                                      color: const Color(0xFF111A24),
                                      fontSize: 14.fss,
                                      fontFamily: 'Gordita'),
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'johndoe@gmail.com',
                                  hintStyle: CustomTextStyles.regular18232323Tablet,
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
                                      height: getTabletSize(26),
                                      width: getTabletSize(26),
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
                    height: getTabletSize(60),
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
                                          style: CustomTextStyles.light14FD1600Tablet),
                                    )
                                        : const Offstage(),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: getTabletSize(30),
                            ),
                            Obx(
                                  () => Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.ss,
                                ),
                                child: CustomTextFormField(
                                  textStyle: TextStyle(
                                      color: const Color(0xFF111A24),
                                      fontSize: 14.fss,
                                      fontFamily: 'Gordita'),
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'Doe',
                                  hintStyle: CustomTextStyles.regular18232323Tablet,
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
                                      height: getTabletSize(26),
                                      width: getTabletSize(26),
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
                                          style: CustomTextStyles.light14FD1600Tablet),
                                    )
                                        : const Offstage(),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: getTabletSize(30),
                            ),
                            Obx(
                                  () => Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.ss,
                                ),
                                child: CustomTextFormField(
                                  textStyle: TextStyle(
                                      color: const Color(0xFF111A24),
                                      fontSize: 14.fss,
                                      fontFamily: 'Gordita'),
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: '+1 142xxxxxxx',
                                  textInputType: TextInputType.number,
                                  hintStyle: CustomTextStyles.regular18232323Tablet,
                                  controller: _authenticationController
                                      .createNewAccountPhoneController,
                                  autofocus: false,
                                  maxLines: 1,
                                  validator: _authenticationController.validatePhone,
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  errorValue: _authenticationController.isUserPhoneError.value,
                                  suffix: Padding(
                                    padding: getTabletPadding(all: 14),
                                    child: Image.asset(
                                      "asset/icons/tablet/download_11.png",
                                      height: 24,
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
                    padding: getTabletPadding(left: 30,right: 30),
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
                      height: ScreenConstant.screenHeightEleven,
                      textStyle: CustomTextStyles.customButtonTextStyleTablet,
                    ),
                  ),
                  Container(
                    height: getTabletSize(50 ),
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
                    height: getTabletSize(20),
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
                  Container(height: getTabletHorizontalSize(30),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
