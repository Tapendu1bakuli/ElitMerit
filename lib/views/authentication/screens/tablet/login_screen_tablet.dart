import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/device_manger/screen_constants.dart';
import 'package:main/routers/route_constants.dart';
import 'package:main/utils/asset_utilis/asset_tablet_utilis.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/tablet_size_utils.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:main/utils/widgets_utils/app_button.dart';
import 'package:main/views/authentication/controller/authentication_controller.dart';
import 'package:main/views/authentication/screens/tablet/widgets/socialSignInButtonTablet.dart';
import 'package:main/views/customButton/or_divider.dart';
import 'package:sizing/sizing.dart';

import '../../../../utils/core/utils/image_constant.dart';
import '../../../../utils/core/utils/updated_size_utils.dart';
import '../../../../utils/phone_size_utils.dart';
import '../../../../utils/theme/custom_button_style.dart';
import '../../../../utils/theme/theme_helper.dart';
import '../../../../utils/widgets_utils/widgets/custom_checkbox_button.dart';
import '../../../../utils/widgets_utils/widgets/custom_elevated_button.dart';
import '../../../../utils/widgets_utils/widgets/custom_image_view.dart';
import '../../../../utils/widgets_utils/widgets/custom_outlined_button.dart';
import '../../../../utils/widgets_utils/widgets/custom_text_form_field.dart';
class LoginScreenTablet extends StatelessWidget {
  LoginScreenTablet({Key? key}) : super(key: key);
  final AuthenticationController _authenticationController =
      Get.put(AuthenticationController());
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool keepMeLoggedIn = false;
  @override
  Widget build(BuildContext context) {
    bool? isLandscape =
        MediaQuery.of(context).orientation == Orientation.portrait;
    print("Landscape:$isLandscape");
    return isLandscape?Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          height: Get.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageUtilsForTablet.universalBackgroundImageTabletPortrait),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              right: 15.h,
              bottom: 15.v,
            ),
            child: ListView(
              children: [
                Container(
                  height: getTabletSize(200),
                ),
                Text(
                  "Login",
                  style: CustomTextStyles.bold32Tablet,
                  textAlign: TextAlign.center,
                ),
                Container(
                  height: getTabletSize(20),
                ),
                Text(
                  "Please login to continue to your account.",
                  style: CustomTextStyles.regular18Tablet.copyWith(color: Color(0xFF000000),),
                  textAlign: TextAlign.center,
                ),
                Container(
                  height: getTabletSize(40),
                ),
                _buildEmailAddressRow(context),
                SizedBox(height: 19.v),
                _buildEmailEditText(context),
                //  _buildInputRow(context),
                SizedBox(height: 19.v),
                _buildPasswordRow(context),
                SizedBox(height: 18.v),
                _buildPasswordEditText(context),
                SizedBox(height: 21.v),
                _buildKeepMeLoggedInRow(context),
                SizedBox(height: 21.v),
                _buildSignInButton(context),
                SizedBox(height: 21.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child:
                  const OrDivider(),),
                SizedBox(height: 17.v),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: _buildSignInWithGoogleButton(context),
                ),
                SizedBox(height: 9.v),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: _buildSignInWithMicrosoftButton(context),
                ),
                SizedBox(height: 9.v),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: _buildSignInWithAppleButton(context),
                ),
                SizedBox(height: 33.v),
                Text(
                  "Legal disclaimers  | privacy information",
                  style: CustomTextStyles.regular186C6C6CTextStyleTablet,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    ):Scaffold(
      body: Form(
        key: _authenticationController.loginFormKey,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageUtilsForTablet.universalBackgroundImage),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: getTabletHorizontalSize(44)),
              child: ListView(
                children: [
                  Container(
                    height: getTabletSize(50),
                  ),
                  Text(
                    "Login",
                    style: CustomTextStyles.bold32Tablet,
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    height: getTabletSize(20),
                  ),
                  Text(
                    "Please login to continue to your account.",
                    style: CustomTextStyles.regular18Tablet,
                    textAlign: TextAlign.center,
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
                                horizontal: getTabletHorizontalSize(20),
                              ),
                              child: Row(
                                children: [
                                  Text("Email Address",
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
                              height: getTabletSize(35),
                            ),
                            Obx(
                              () => Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: getTabletHorizontalSize(20),
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
                                        color: const Color(0xFFE8503A),
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
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: getTabletSize(20),
                              ),
                              child: Row(
                                children: [
                                  Text("Password",
                                      style: CustomTextStyles.medium15Tablet),
                                 Spacer(),
                                  Obx(
                                    () => _authenticationController
                                            .isPasswordError.value
                                        ? FittedBox(
                                            child: Padding(
                                              padding: getTabletPadding(right: 20),
                                              child: Text(
                                                  "Please enter a valid password",
                                                  style: CustomTextStyles.light14WithoutFsizeFD1600Tablet),
                                            ),
                                          )
                                        : const Offstage(),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: getTabletSize(35),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: getTabletSize(20),
                              ),
                              child: Obx(
                                () => TextFormField(
                                  controller: _authenticationController
                                      .loginPasswordController,
                                  keyboardType: TextInputType.text,
                                  autofocus: false,
                                  maxLines: 1,
                                  cursorColor: const Color(0xFFC4C4C4),
                                  validator: _authenticationController
                                      .validatePasswordForSignIn,
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  style: TextStyle(
                                      color: const Color(0xFF111A24),
                                      fontSize: 14.fss,
                                      fontFamily: 'Gordita'),
                                  obscureText: _authenticationController
                                      .signUpPasswordIndicator.value,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    errorMaxLines: 3,
                                    hintText: "XXXXXX",
                                    hintStyle: CustomTextStyles.regular18232323Tablet,
                                    errorStyle: TextStyle(
                                        color: const Color(0xFFE8503A),
                                        fontSize: 12.fss,
                                        fontFamily: 'Gordita'),
                                    suffixIcon: Obx(
                                      () => IconButton(
                                        focusColor: Colors.white,
                                        splashColor: Colors.white,
                                        icon: _authenticationController
                                                .signUpPasswordIndicator.value
                                            ? Image.asset("asset/icons/tablet/eye-off.png",width: 24,)
                                            : Icon(
                                                Icons.visibility_outlined,
                                                color:
                                                    _authenticationController
                                                            .isPasswordError
                                                            .value
                                                        ? const Color(
                                                            0xFFE8503A)
                                                        :  const Color(0xFFC4C4C4),
                                                size: 24,
                                              ),
                                        onPressed: () {
                                          _authenticationController
                                                  .signUpPasswordIndicator
                                                  .value =
                                              !_authenticationController
                                                  .signUpPasswordIndicator
                                                  .value;
                                        },
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                      const BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(
                                          color: _authenticationController
                                                  .isPasswordError.value
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
                                                  .isPasswordError.value
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
                                                  .isPasswordError.value
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
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: getTabletSize(15),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getTabletHorizontalSize(15),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Obx(
                          () => Transform.scale(
                            scale: 1,
                            child: Checkbox(
                              side: BorderSide(width: 1),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              value: _authenticationController
                                  .isAgreeTermsAndPrivacy.value,
                              onChanged: (e) {
                                _authenticationController
                                        .isAgreeTermsAndPrivacy.value =
                                    !_authenticationController
                                        .isAgreeTermsAndPrivacy.value;
                              },
                              activeColor: const Color(0xFF50C878),
                              checkColor: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          "Keep me logged in",
                          style: CustomTextStyles.medium16Tablet,
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            Get.toNamed(passwordRecovery);
                          },
                          child: Text(
                            "Password Recovery",
                           style:   CustomTextStyles.regular14WithUnderLineTablet
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getTabletSize(15),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getTabletHorizontalSize(20),
                    ),
                    child: AppButton(
                      onPressed: () {
                      //  Get.toNamed(homeBottomSheet);
                      },
                      buttonText: "Sign in",
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
                    height: getTabletSize(50),
                  ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getTabletHorizontalSize(24)),
              child:
                  const OrDivider(),),

                  Container(
                    height: getTabletSize(35),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: getTabletHorizontalSize(24)),
                    child: Row(
                      children: [
                        const Expanded(
                          flex: 1,
                          child: TabletSocialSignInButton(title: "Sign in with Google", imagePath:  "asset/icons/tablet/plus.png",),
                        ),

                        Container(
                          width: isLandscape ? getTabletHorizontalSize(10) : getTabletHorizontalSize(25),
                        ),
                        const Expanded(
                          flex: 1,
                          child: TabletSocialSignInButton(title: "Sign in with Microsoft  ", imagePath:  "asset/icons/tablet/download_1.png",),
                        ),

                        Container(
                          width: isLandscape ? getTabletHorizontalSize(10) : getTabletHorizontalSize(25),
                        ),

                        const Expanded(
                          flex: 1,
                          child: TabletSocialSignInButton(title: "Sign in with Apple", imagePath:  "asset/icons/tablet/download_2.png",),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    height: getTabletSize(100),
                  ),
                  Text(
                    "Legal disclaimers  | privacy information",
                    style: CustomTextStyles.regular186C6C6CTextStyleTablet,
                    textAlign: TextAlign.center,
                  ),
                  Container(height: getTabletSize(50),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  /// Section Widget
  Widget _buildEmailAddressRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Text("Email Address",
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
    );
  }

  /// Section Widget
  Widget _buildPasswordRow(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Text("Password",
              style: CustomTextStyles.medium15Tablet),
          Spacer(),
          Obx(
                () => _authenticationController
                .isPasswordError.value
                ? FittedBox(
              child: Padding(
                padding: getTabletPadding(right: 20),
                child: Text(
                    "Please enter a valid password",
                    style: CustomTextStyles.light14WithoutFsizeFD1600Tablet),
              ),
            )
                : const Offstage(),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return      Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
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
                    color: const Color(0xFFE8503A),
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
    );
  }

  Widget _buildPasswordEditText(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Obx(
            () => TextFormField(
          controller: _authenticationController
              .loginPasswordController,
          keyboardType: TextInputType.text,
          autofocus: false,
          maxLines: 1,
          cursorColor: const Color(0xFFC4C4C4),
          validator: _authenticationController
              .validatePasswordForSignIn,
          autovalidateMode:
          AutovalidateMode.onUserInteraction,
          style: TextStyle(
              color: const Color(0xFF111A24),
              fontSize: 14.fss,
              fontFamily: 'Gordita'),
          obscureText: _authenticationController
              .signUpPasswordIndicator.value,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            errorMaxLines: 3,
            hintText: "XXXXXX",
            hintStyle: CustomTextStyles.regular18232323Tablet,
            errorStyle: TextStyle(
                color: const Color(0xFFE8503A),
                fontSize: 12.fss,
                fontFamily: 'Gordita'),
            suffixIcon: Obx(
                  () => IconButton(
                focusColor: Colors.white,
                splashColor: Colors.white,
                icon: _authenticationController
                    .signUpPasswordIndicator.value
                    ? Image.asset("asset/icons/tablet/eye-off.png",width: 24,)
                    : Icon(
                  Icons.visibility_outlined,
                  color:
                  _authenticationController
                      .isPasswordError
                      .value
                      ? const Color(
                      0xFFE8503A)
                      :  const Color(0xFFC4C4C4),
                  size: 24,
                ),
                onPressed: () {
                  _authenticationController
                      .signUpPasswordIndicator
                      .value =
                  !_authenticationController
                      .signUpPasswordIndicator
                      .value;
                },
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius:
              const BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                  color: _authenticationController
                      .isPasswordError.value
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
                      .isPasswordError.value
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
                      .isPasswordError.value
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
    );
  }

  /// Section Widget
  Widget _buildKeepMeLoggedInRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Obx(
                () => Transform.scale(
              scale: 1,
              child: Checkbox(
                side: BorderSide(width: 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                value: _authenticationController
                    .isAgreeTermsAndPrivacy.value,
                onChanged: (e) {
                  _authenticationController
                      .isAgreeTermsAndPrivacy.value =
                  !_authenticationController
                      .isAgreeTermsAndPrivacy.value;
                },
                activeColor: const Color(0xFF50C878),
                checkColor: Colors.white,
              ),
            ),
          ),
          Text(
            "Keep me logged in",
            style: CustomTextStyles.medium16Tablet,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "Password Recovery",
              textAlign: TextAlign.center,
                style:   CustomTextStyles.regular14WithUnderLineTablet
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSignInButton(BuildContext context) {
    return    Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: AppButton(
        onPressed: () {
          //  Get.toNamed(homeBottomSheet);
        },
        buttonText: "Sign in",
        color: const Color(0xFF50C878),
        borderColor: const Color(0xFF50C878),
        borderRadious: 10,
        borderWidth: 1,
        elevation: 0,
        height: ScreenConstant.screenHeightEleven,
        textStyle: CustomTextStyles.customButtonTextStyleTablet,
      ),
    );
  }

  /// Section Widget
  Widget _buildOrRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 5.v,
            bottom: 12.v,
          ),
          child: SizedBox(
            width: 181.h,
            child: Divider(
              color: appTheme.blueGray100,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 5.v,
            bottom: 12.v,
          ),
          child: SizedBox(
            width: 181.h,
            child: Divider(
              color: appTheme.blueGray100,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSignInWithGoogleButton(BuildContext context) {
    return TabletSocialSignInButton(title: "Sign in with Google", imagePath:  "asset/icons/tablet/plus.png",);
  }

  /// Section Widget
  Widget _buildSignInWithMicrosoftButton(BuildContext context) {
    return  TabletSocialSignInButton(title: "Sign in with Microsoft  ", imagePath:  "asset/icons/tablet/download_1.png",);
  }

  /// Section Widget
  Widget _buildSignInWithAppleButton(BuildContext context) {
    return TabletSocialSignInButton(title: "Sign in with Apple", imagePath:  "asset/icons/tablet/download_2.png",);
  }
}
