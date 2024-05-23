import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:main/device_manger/screen_constants.dart';
import 'package:sizing/sizing.dart';

import '../../../../utils/asset_utilis/asset_tablet_utilis.dart';
import '../../../../utils/theme/custom_text_style.dart';
import '../../../../utils/widgets_utils/app_button.dart';
import '../../../../utils/widows_size_utilis.dart';
import '../../controller/authentication_controller.dart';

class PasswordRecoveryScreenWeb extends StatelessWidget {
  PasswordRecoveryScreenWeb({Key? key}) : super(key: key);
  final AuthenticationController _authenticationController =
      Get.put(AuthenticationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                ImageUtilsForTablet.webForgotPasswordBackgroundImage),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getWebHorizontalSize(24)),
          child: ListView(
            children: [
              Container(
                height: ScreenConstant.screenHeightFourth,
              ),

              Center(
                child: SizedBox(
                  width: 700.ss,
                  child: Column(
                    children: [
                      AppBar(
                        scrolledUnderElevation: 0.0,
                        title: Text(
                          "Forgot Password",
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
                            width: getWebSize(10),
                          ),
                          InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Text(
                              "Back",
                              style: CustomTextStyles.regular18TextStyleTablet.copyWith(color : Colors.black),
                            ),
                          ),
                        ],),
                      ),
                      Container(
                        height: 10.ss,
                      ),
                      Text(
                        "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta",
                        style: CustomTextStyles.regular18333333Web,
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 5,
                            child: SizedBox(
                                height: getWebVerticalSize(546),
                                child: Image.asset(
                                  'asset/icons/tablet/download_4.png',
                                  fit: BoxFit.contain,
                                )),
                          ),
                          Expanded(
                            flex: 5,
                            child: Padding(
                              padding: getWebPadding(right: 30, bottom: 80),
                              child: Column(
                                children: [
                                  Container(height: getWebSize(100)),
                                  Padding(
                                    padding: getWebPadding(left: 30, right: 30),
                                    child: Row(
                                      children: [
                                        Text("Enter Email Address",
                                            style: CustomTextStyles.medium15Tablet),
                                        Spacer(),
                                        Obx(
                                              () => _authenticationController
                                              .isEmailError.value
                                              ? FittedBox(
                                            child: Padding(
                                              padding: getWebPadding(right: 20),
                                              child: Text(
                                                  "Please enter a valid email address",
                                                  style: CustomTextStyles.light14WithOutFssFD1600Tablet),
                                            ),
                                          )
                                              : const Offstage(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: getWebSize(40),
                                  ),
                                  Obx(
                                        () => Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: getWebHorizontalSize(20),
                                      ),
                                      child: TextFormField(
                                        controller: _authenticationController
                                            .loginEmailController,
                                        keyboardType: TextInputType.emailAddress,
                                        autofocus: false,
                                        maxLines: 1,
                                        cursorColor: const Color(0xFFC4C4C4),
                                        textInputAction: TextInputAction.next,
                                        validator:
                                        _authenticationController.validateEmail,
                                        autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                        style: TextStyle(
                                            color: const Color(0xFF111A24),
                                            fontSize: 18,
                                            fontFamily: 'Gordita'),
                                        decoration: InputDecoration(
                                          hoverColor: Colors.transparent,
                                          filled: true,
                                          fillColor: Colors.white,
                                          hintText: "johndoe@gmail.com",
                                          hintStyle: CustomTextStyles.regular18Web,
                                          errorStyle: TextStyle(
                                              color: const Color(0xFFE8503A),
                                              fontSize: 12.fss,
                                              fontFamily: 'Gordita'),
                                          suffixIcon: Padding(
                                            padding: getWebPadding(right: 10,top: 15,bottom: 15),
                                            child:  Image.asset("asset/icons/tablet/download_3.png",height: ScreenConstant.defaultHeightTwentyThree,),
                                          ),

                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                            const BorderRadius.all(Radius.circular(10)),
                                            borderSide: BorderSide(
                                                color: _authenticationController
                                                    .isEmailError.value
                                                    ? Colors.red
                                                    : const Color(0xFFC4C4C4),
                                                width: 1,
                                                style: BorderStyle.solid),
                                          ),
                                          disabledBorder: OutlineInputBorder(
                                            borderRadius:
                                            const BorderRadius.all(Radius.circular(10)),
                                            borderSide: BorderSide(
                                                color: _authenticationController
                                                    .isEmailError.value
                                                    ? Colors.red
                                                    : const Color(0xFFC4C4C4),
                                                width: 1,
                                                style: BorderStyle.solid),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                            const BorderRadius.all(Radius.circular(10)),
                                            borderSide: BorderSide(
                                                color: _authenticationController
                                                    .isEmailError.value
                                                    ? Colors.red
                                                    : const Color(0xFFC4C4C4),
                                                width: 1,
                                                style: BorderStyle.solid),
                                          ),
                                          errorBorder: const OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(10)),
                                            borderSide: BorderSide(
                                                color: Color(0xFFE8503A),
                                                width: 1,
                                                style: BorderStyle.solid),
                                          ),
                                          focusedErrorBorder:
                                          const OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(10)),
                                            borderSide: BorderSide(
                                                color: Color(0xFFE8503A),
                                                width: 1,
                                                style: BorderStyle.solid),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: getWebSize(30),
                                  ),
                                  Center(
                                      child: InkWell(
                                        onTap: () {
                                          Get.back();
                                        },
                                        child: Text(
                                          "Back to sign in",
                                          style:
                                          CustomTextStyles.regular14WithUnderLineTablet,
                                        ),
                                      )),
                                  Container(
                                    height: getWebSize(30),
                                  ),
                                  Padding(
                                    padding: getWebPadding(left: 30, right: 30),
                                    child: AppButton(
                                      onPressed: () {},
                                      buttonText: "Send",
                                      color: Color(0xFF50C878),
                                      borderColor: Color(0xFF50C878),
                                      borderRadious: 10,
                                      borderWidth: 1,
                                      elevation: 0,
                                      height:  ScreenConstant.screenHeightThirteen,
                                      textStyle:
                                      CustomTextStyles.customButtonTextStyleTablet,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
