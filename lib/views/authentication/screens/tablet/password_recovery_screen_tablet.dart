import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/phone_size_utils.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:sizing/sizing.dart';

import '../../../../device_manger/screen_constants.dart';
import '../../../../utils/asset_utilis/asset_tablet_utilis.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/tablet_size_utils.dart';
import '../../../../utils/widgets_utils/app_button.dart';
import '../../controller/authentication_controller.dart';
class PasswordRecoveryScreenTablet extends StatelessWidget {
   PasswordRecoveryScreenTablet({Key? key}) : super(key: key);
  final AuthenticationController _authenticationController =
  Get.put(AuthenticationController());
  @override
  Widget build(BuildContext context) {
    print("tablet");
    bool? isLandscape =
        MediaQuery.of(context).orientation == Orientation.portrait;
    print("Landscape:$isLandscape");
    return isLandscape?Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageUtilsForTablet.universalBackgroundImageTabletPortrait),
            fit: BoxFit.fill,
          ),
        ),
        child: ListView(
          children: [
            Container(
              height: getTabletSize(100),
            ),
            Container(
                padding: getTabletPadding(left: 30,bottom: 5),
                height: ScreenConstant.screenHeightHalf+70,child: Image.asset('asset/icons/tablet/download_4.png',fit: BoxFit.fitHeight,)),
            Center(
              child: Text(
                "Forgot Password",
                style: CustomTextStyles.bold32Tablet,
              ),
            ),
            Container(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 70),
              child: Text(
                "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta",
                style: CustomTextStyles.light20TextStyleTablet,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
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
                        padding: getTabletPadding(right: 20),
                        child: Text(
                            "Please enter a valid email address",
                            style: CustomTextStyles.light14WithoutFsizeFD1600Tablet),
                      ),
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
                    () => TextFormField(
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
                          fontSize: 14.fss,
                          fontFamily: 'Gordita'),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "johndoe@gmail.com",
                        hintStyle: CustomTextStyles.regular18232323Tablet,
                        errorStyle: TextStyle(
                            color: const Color(0xFFFD1600),
                            fontSize: 12.fss,
                            fontFamily: 'Gordita'),
                        suffixIcon: Padding(
                          padding: getTabletPadding(right: 10,top: 15,bottom: 15),
                          child:  Image.asset("asset/icons/tablet/download_3.png",height: 24,),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                              color: _authenticationController
                                  .isEmailError.value
                                  ? Color(0xFFFD1600)
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
                                  ? Color(0xFFFD1600)
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
                                  ? Color(0xFFFD1600)
                                  : const Color(0xFFC4C4C4),
                              width: 1,
                              style: BorderStyle.solid),
                        ),
                        errorBorder: const OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                              color: Color(0xFFFD1600),
                              width: 1,
                              style: BorderStyle.solid),
                        ),
                        focusedErrorBorder:
                        const OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                              color: Color(0xFFFD1600),
                              width: 1,
                              style: BorderStyle.solid),
                        ),
                      ),
                    ),
              ),
            ),
            Container(
              height: 20,
            ),
            Center(
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Text(
                    "Back to sign in",
                    style: CustomTextStyles.regular14WithUnderLineTablet,
                  ),
                )),
            Container(
              height: 20,
            ),
            Padding(
              padding: getTabletPadding(left: 30,right: 30),
              child: AppButton(
                onPressed: () {},
                buttonText: "Send",
                color: Color(0xFF50C878),
                borderColor: Color(0xFF50C878),
                borderRadious: 10,
                borderWidth: 1,
                elevation: 0,
                height:  ScreenConstant.screenHeightEleven,
                textStyle: CustomTextStyles.customButtonTextStyleTablet,
              ),
            ),
          ],
        ),
      ),
    ):Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageUtilsForTablet.universalBackgroundImage),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getTabletHorizontalSize(24)),
          child: ListView(children: [
            Container(
              height: getTabletSize(150),
            ),
            Center(
              child: Text(
                "Forgot Password",
                style: CustomTextStyles.bold32Tablet,
              ),
            ),
            Container(height: 10.ss,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 70),
              child: Text(
                "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta",
                style: CustomTextStyles.light20TextStyleTablet,
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                      padding: getTabletPadding(left: 30,bottom: 20),
                      height: ScreenConstant.screenHeightHalf+70,child: Image.asset('asset/icons/tablet/download_4.png',fit: BoxFit.fitHeight,)),
                ),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: getTabletPadding(right: 30,bottom: 80),
                    child: Column(children: [
                      Container(height: getTabletSize(100)),
                      Padding(
                        padding: getTabletPadding(left: 30,right: 30),
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
                                  padding: getTabletPadding(right: 20),
                                  child: Text(
                                      "Please enter a valid email address",
                                      style: CustomTextStyles.light14FD1600Tablet),
                                ),
                              )
                                  : const Offstage(),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: getTabletSize(40),
                      ),
                      Obx(
                            () => Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: getTabletHorizontalSize(30),
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
                                fontSize: 14.fss,
                                fontFamily: 'Gordita'),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "johndoe@gmail.com",
                              hintStyle: CustomTextStyles.regular18232323Tablet,
                              errorStyle: TextStyle(
                                  color: const Color(0xFFFD1600),
                                  fontSize: 12.fss,
                                  fontFamily: 'Gordita'),
                              suffixIcon: Padding(
                                padding: getTabletPadding(right: 10,top: 15,bottom: 15),
                                child:  Image.asset("asset/icons/tablet/download_3.png",height: 24,),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: _authenticationController
                                        .isEmailError.value
                                        ? Color(0xFFFD1600)
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
                                        ? Color(0xFFFD1600)
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
                                        ? Color(0xFFFD1600)
                                        : const Color(0xFFC4C4C4),
                                    width: 1,
                                    style: BorderStyle.solid),
                              ),
                              errorBorder: const OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: Color(0xFFFD1600),
                                    width: 1,
                                    style: BorderStyle.solid),
                              ),
                              focusedErrorBorder:
                              const OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: Color(0xFFFD1600),
                                    width: 1,
                                    style: BorderStyle.solid),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: getTabletSize(30),
                      ),
                      Center(
                          child: InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Text(
                              "Back to sign in",
                              style: CustomTextStyles.regular14WithUnderLineTablet,
                            ),
                          )),
                      Container(
                        height: getTabletSize(30),
                      ),
                      Padding(
                        padding: getTabletPadding(left: 30,right: 30),
                        child: AppButton(
                          onPressed: () {},
                          buttonText: "Send",
                          color: Color(0xFF50C878),
                          borderColor: Color(0xFF50C878),
                          borderRadious: 10,
                          borderWidth: 1,
                          elevation: 0,
                          height:  ScreenConstant.screenHeightEleven,
                          textStyle: CustomTextStyles.customButtonTextStyleTablet,
                        ),
                      ),
                    ],),
                  ),
                )
              ],
            )
          ],),
        ),
      ),
    );
  }
}
