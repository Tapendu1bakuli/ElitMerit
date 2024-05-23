import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/device_manger/screen_constants.dart';
import 'package:main/routers/route_constants.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:main/utils/widgets_utils/mobile/socila_login_button.dart';
import 'package:main/utils/widgets_utils/mobile/text_input_field.dart';
import 'package:main/views/authentication/controller/authentication_controller.dart';
import 'package:sizing/sizing.dart';

import '../../../../utils/widgets_utils/mobile/common_button.dart';

class LoginScreenMobile extends StatelessWidget {
  LoginScreenMobile({Key? key}) : super(key: key);
  final AuthenticationController _authenticationController =
      Get.put(AuthenticationController());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print("mobile");
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: mediaQuery.height * 1,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'asset/images/mobile/login2.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50.ss),
                  Text(
                    'Login',
                    style: CustomTextStyles.bold24Mobile,
                  ),
                  SizedBox(height: 15.ss),
                  FittedBox(
                    child: Text(
                      'Please login to continue to your account.',
                      style: CustomTextStyles.regular18Mobile,
                    ),
                  ),
                  SizedBox(height: 35.ss),
                  Row(
                    children: [
                      Text(
                        'Email Address',
                        style: CustomTextStyles.medium15Mobile,
                      ),
                      Spacer(),
                      Obx(
                        () => _authenticationController.isEmailError.value
                            ? FittedBox(
                                child:
                                    Text("Please enter a valid email address",
                                        style: CustomTextStyles.light14FD1600Mobile),
                              )
                            : const Offstage(),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.ss),
                  Obx(
                    () => Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 0.ss,
                      ),
                      child: TextFormField(
                        controller:
                            _authenticationController.loginEmailController,
                        keyboardType: TextInputType.emailAddress,
                        autofocus: false,
                        maxLines: 1,
                        cursorColor: AppColors.primaryColor,
                        textInputAction: TextInputAction.next,
                        validator: _authenticationController.validateEmail,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        style: TextStyle(
                            color: const Color(0xFF111A24),
                            fontSize: 14.fss,
                            fontFamily: 'Gordita'),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "johndoe@gmail.com",
                          hintStyle: CustomTextStyles.regular18232323Mobile,
                          errorStyle: TextStyle(
                              color: const Color(0xFFE8503A),
                              fontSize: 12.fss,
                              fontFamily: 'Gordita'),
                          suffixIcon: Image.asset(
                            "asset/icons/tablet/download_3.png",
                            height: 24.ss,
                            width: 24.ss,
                          ),
                          contentPadding:
                              EdgeInsets.all(ScreenConstant.sizeMedium),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color:
                                    _authenticationController.isEmailError.value
                                        ? Colors.red
                                        : Color(0xFFC4C4C4),
                                width: 1,
                                style: BorderStyle.solid),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color:
                                    _authenticationController.isEmailError.value
                                        ? Colors.red
                                        : Color(0xFFC4C4C4),
                                width: 1,
                                style: BorderStyle.solid),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color:
                                    _authenticationController.isEmailError.value
                                        ? Colors.red
                                        : Color(0xFFC4C4C4),
                                width: 1,
                                style: BorderStyle.solid),
                          ),
                          errorBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Color(0xFFE8503A),
                                width: 1,
                                style: BorderStyle.solid),
                          ),
                          focusedErrorBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Color(0xFFE8503A),
                                width: 1,
                                style: BorderStyle.solid),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.ss),
                  Row(
                    children: [
                      Text(
                        'Password',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.fss,
                          color: AppColors.textColor,
                        ),
                      ),
                      Spacer(),
                      Obx(
                        () => _authenticationController.isPasswordError.value
                            ? FittedBox(
                                child: Text("Please enter a valid password",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                      color: Color(0xFFFD1600),
                                      fontSize: 11.fss,
                                      fontWeight: FontWeight.w300,
                                    ))),
                              )
                            : const Offstage(),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.ss),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 0.ss,
                    ),
                    child: Obx(
                      () => TextFormField(
                        controller:
                            _authenticationController.loginPasswordController,
                        keyboardType: TextInputType.text,
                        autofocus: false,
                        maxLines: 1,
                        cursorColor: AppColors.primaryColor,
                        validator:
                            _authenticationController.validatePasswordForSignIn,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
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
                          hintStyle: TextStyle(
                            color: const Color(0xFF232323).withOpacity(0.2),
                            fontSize: 12.fss,
                          ),
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
                                  ? Icon(
                                      Icons.visibility_off_outlined,
                                      color: _authenticationController
                                              .isPasswordError.value
                                          ? const Color(0xFFE8503A)
                                          : const Color(0xFF50C878),
                                      size: 18.ss,
                                    )
                                  : Icon(
                                      Icons.visibility_outlined,
                                      color: _authenticationController
                                              .isPasswordError.value
                                          ? const Color(0xFFE8503A)
                                          : AppColors.primaryColor,
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
                          contentPadding:
                              EdgeInsets.all(ScreenConstant.sizeMedium),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: _authenticationController
                                        .isPasswordError.value
                                    ? Colors.red
                                    : Color(0xFFC4C4C4),
                                width: 1,
                                style: BorderStyle.solid),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: _authenticationController
                                        .isPasswordError.value
                                    ? Colors.red
                                    : Color(0xFFC4C4C4),
                                width: 1,
                                style: BorderStyle.solid),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: _authenticationController
                                        .isPasswordError.value
                                    ? Colors.red
                                    : Color(0xFFC4C4C4),
                                width: 1,
                                style: BorderStyle.solid),
                          ),
                          errorBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Color(0xFFE8503A),
                                width: 1,
                                style: BorderStyle.solid),
                          ),
                          focusedErrorBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Color(0xFFE8503A),
                                width: 1,
                                style: BorderStyle.solid),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.ss),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Obx(() => SizedBox(
                                width: 24.ss,
                                height: 24.ss,
                                child: Checkbox(
                                    activeColor: AppColors.primaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    value: _authenticationController
                                        .checkBoxValue.value,
                                    onChanged: (value) {
                                      _authenticationController
                                          .checkBoxValue.value = value!;
                                    }),
                              )),
                          SizedBox(width: 10.ss),
                          Text(
                            'Keep me logged in',
                            style: GoogleFonts.poppins(
                              color: AppColors.textColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.fss,
                            ),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () => Get.toNamed(forgotPasswordScreenMobile),
                        child: Text(
                          'Password Recovery',
                          style: GoogleFonts.poppins(
                            color: Color(0xff0A2342),
                            fontWeight: FontWeight.normal,
                            fontSize: 12.fss,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.ss),
                  CommonButton(
                    text: 'Sign in',
                    width: 399.ss,
                    height: 54.ss,
                    onPressed: () {
                      // Get.toNamed(myPropertiesScreen);
                      //Get.toNamed(transactionHistoryScreen);
                    },
                  ),
                  SizedBox(height: 20.ss),
                  Row(
                    children: [
                      Divider(
                        color: Color(0xffD9D9D9),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'or',
                          style: GoogleFonts.poppins(
                            color: Color(0xff6E6E6E),
                            fontWeight: FontWeight.w500,
                            fontSize: 16.fss,
                          ),
                        ),
                      ),
                      Divider(
                        color: Color(0xffD9D9D9),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.ss),
                  SocialLoginButton(
                    imgPath: 'asset/icons/tablet/plus.png',
                    text: 'Sign in with Google',
                  ),
                  SizedBox(height: 5.ss),
                  SocialLoginButton(
                    imgPath: 'asset/icons/tablet/download_1.png',
                    text: 'Sign in with Microsoft',
                  ),
                  SizedBox(height: 5.ss),
                  SocialLoginButton(
                    imgPath: 'asset/icons/tablet/download_2.png',
                    text: 'Sign in with Apple',
                  ),
                  SizedBox(height: 30.ss),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Legal disclaimers  | privacy information',
                        style: GoogleFonts.poppins(
                          color: Color(0XFF6C6C6C),
                          fontWeight: FontWeight.normal,
                          fontSize: 14.ss,
                          //7980941458
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
