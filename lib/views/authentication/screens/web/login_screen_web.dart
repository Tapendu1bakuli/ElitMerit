import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:main/device_manger/screen_constants.dart';
import 'package:main/utils/widows_size_utilis.dart';
import 'package:main/views/authentication/screens/web/widgets/socialSignInButtonWeb.dart';
import 'package:sizing/sizing.dart';

import '../../../../routers/route_constants.dart';
import '../../../../utils/asset_utilis/asset_tablet_utilis.dart';
import '../../../../utils/tablet_size_utils.dart';
import '../../../../utils/theme/custom_text_style.dart';
import '../../../../utils/widgets_utils/app_button.dart';
import '../../../customButton/or_divider.dart';
import '../../controller/authentication_controller.dart';
import '../mobile/widgets/socialSignInButton.dart';
class LoginScreenWeb extends StatelessWidget {
   LoginScreenWeb({Key? key}) : super(key: key);
  final AuthenticationController _authenticationController =
  Get.put(AuthenticationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              padding: EdgeInsets.symmetric(horizontal: getWebHorizontalSize(44)),
              child: ListView(
                children: [
                  Container(
                    height: getWebSize(150),
                  ),

                  Center(
                    child: SizedBox(
                      width: 700.ss,
                      child: Column(
                        children:[
                          AppBar(
                            scrolledUnderElevation: 0.0,
                            title: Text(
                              "Login",
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
                            height: getWebSize(20),
                          ),
                          Text(
                            "Please login to continue to your account.",
                            style: CustomTextStyles.regular18Tablet,
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            height: getWebSize(100),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: getWebHorizontalSize(20),
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
                                      height: getWebSize(35),
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
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: getWebSize(20),
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
                                              padding: getWebPadding(right: 20),
                                              child: Text(
                                                  "Please enter a valid password",
                                                  style: CustomTextStyles.light14WithOutFssFD1600Tablet),
                                            ),
                                          )
                                              : const Offstage(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: getWebSize(35),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: getWebSize(20),
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
                                            fontSize: 18,
                                            fontFamily: 'Gordita'),
                                        obscureText: _authenticationController
                                            .signUpPasswordIndicator.value,
                                        decoration: InputDecoration(
                                          hoverColor: Colors.transparent,
                                          filled: true,
                                          fillColor: Colors.white,
                                          errorMaxLines: 3,
                                          hintText: "XXXXXX",
                                          hintStyle: CustomTextStyles.regular18Web,
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
                                                  ? Image.asset("asset/icons/tablet/eye-off.png",height: ScreenConstant.defaultHeightTwentyThree,)
                                                  : Icon(
                                                Icons.visibility_outlined,
                                                color:
                                                _authenticationController
                                                    .isPasswordError
                                                    .value
                                                    ? const Color(
                                                    0xFFE8503A)
                                                    :  const Color(0xFFC4C4C4),
                                                size: ScreenConstant.defaultHeightTwentyThree,
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
                          height: getWebSize(45),
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
                                  // Get.toNamed(passwordRecovery);
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
                          height: getWebSize(45),
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
                            height: ScreenConstant.screenHeightThirteen,
                            textStyle: CustomTextStyles.customButtonTextStyleTablet,
                          ),
                        ),
                        Container(
                          height: getWebSize(50),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: getTabletHorizontalSize(24)),
                          child:
                          const OrDivider(),),

                        Container(
                          height: getWebSize(35),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: getTabletHorizontalSize(24)),
                          child: Row(
                            children: [
                              const Expanded(
                                flex: 1,
                                child: WebSocialSignInButton(title: "Sign in with Google", imagePath:  "asset/icons/tablet/plus.png",),
                              ),

                              Container(
                                width: getTabletHorizontalSize(10),
                              ),
                              const Expanded(
                                flex: 1,
                                child: WebSocialSignInButton(title: "Sign in with Microsoft  ", imagePath:  "asset/icons/tablet/download_1.png",),
                              ),

                              Container(
                                width:  getTabletHorizontalSize(10) ,
                              ),

                              Expanded(
                                flex: 1,
                                child: WebSocialSignInButton(title: "Sign in with Apple", imagePath:  "asset/icons/tablet/download_2.png",imageHeight: getWebSize(30),imagewidth: getWebSize(30),),
                              ),

                            ],
                          ),
                        ),
                      ]

                      ),
                    ),
                  ),

                  Container(
                    height: getWebSize(100),
                  ),
                  Text(
                    "Legal disclaimers  | privacy information",
                    style: CustomTextStyles.regular186C6C6CTextStyleTablet,
                    textAlign: TextAlign.center,
                  ),
                  Container(height: getWebSize(50),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
