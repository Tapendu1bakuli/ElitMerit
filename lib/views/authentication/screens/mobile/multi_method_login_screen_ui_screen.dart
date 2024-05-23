import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/device_manger/screen_constants.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/core/utils/image_constant.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/phone_size_utils.dart';
import 'package:main/utils/theme/app_decoration.dart';
import 'package:main/utils/theme/custom_button_style.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:main/utils/theme/theme_helper.dart';
import 'package:main/utils/widgets_utils/widgets/custom_checkbox_button.dart';
import 'package:main/utils/widgets_utils/widgets/custom_elevated_button.dart';
import 'package:main/utils/widgets_utils/widgets/custom_image_view.dart';
import 'package:main/utils/widgets_utils/widgets/custom_outlined_button.dart';
import 'package:main/utils/widgets_utils/widgets/custom_text_form_field.dart';
import 'package:main/views/authentication/controller/authentication_controller.dart';

class MultiMethodLoginScreenUiScreen extends StatelessWidget {
  MultiMethodLoginScreenUiScreen({Key? key})
      : super(
          key: key,
        );

  bool keepMeLoggedIn = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AuthenticationController _authenticationController =
      Get.put(AuthenticationController());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 15.h,
                          right: 15.h,
                          bottom: 15.v,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Login",
                                style: CustomTextStyles.headlineSmall_1,
                              ),
                            ),
                            SizedBox(height: 21.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Please login to continue to your account.",
                                style: CustomTextStyles.regular18Mobile,
                              ),
                            ),
                            SizedBox(height: 20.v),
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
                            _buildOrRow(context),
                            SizedBox(height: 17.v),
                            _buildSignInWithGoogleButton(context),
                            SizedBox(height: 9.v),
                            _buildSignInWithMicrosoftButton(context),
                            SizedBox(height: 9.v),
                            _buildSignInWithAppleButton(context),
                            SizedBox(height: 33.v),
                            Text(
                              "Legal disclaimers  | privacy information",
                              style: CustomTextStyles.bodyLargeGray600,
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgLoginBg,
                      height: 165.v,
                      width: 430.h,
                      alignment: Alignment.topCenter,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailAddressRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Email Address",
          style: CustomTextStyles.titleSmallGray900,
        ),
        Obx(
          () => _authenticationController.isEmailError.value
              ? FittedBox(
                  child: Text(
                    "Please enter a valid email address",
                    style: CustomTextStyles.bodyMediumDeeporangeA700_1,
                  ),
                )
              : const Offstage(),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildPasswordRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Password",
          style: CustomTextStyles.titleSmallGray900,
        ),
        Obx(
          () => _authenticationController.isPasswordError.value
              ? FittedBox(
                  child: Text(
                    "Please enter a valid password",
                    style: CustomTextStyles.bodyMediumDeeporangeA700_1,
                  ),
                )
              : const Offstage(),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return Obx(
      () => TextFormField(
        controller: _authenticationController.loginEmailController,
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        maxLines: 1,
        cursorColor: AppColors.primaryColor,
        textInputAction: TextInputAction.next,
        validator: _authenticationController.validateEmail,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        style: TextStyle(
            color: const Color(0xFF111A24),
            fontSize: 16.adaptSize,
            fontFamily: 'Gordita'),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: "johndoe@gmail.com",
          hintStyle: CustomTextStyles.regular18232323Mobile,
          errorStyle: TextStyle(
              color: const Color(0xFFE8503A),
              fontSize: 12.fSize,
              fontFamily: 'Gordita'),
          suffixIcon: Padding(
            padding: EdgeInsets.all(12.adaptSize),
            child: Image.asset(
              "asset/icons/tablet/download_3.png",
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          contentPadding: EdgeInsets.all(ScreenConstant.sizeSmall),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
                color: _authenticationController.isEmailError.value
                    ? Colors.red
                    : Color(0xFFC4C4C4),
                width: 1,
                style: BorderStyle.solid),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
                color: _authenticationController.isEmailError.value
                    ? Colors.red
                    : Color(0xFFC4C4C4),
                width: 1,
                style: BorderStyle.solid),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
                color: _authenticationController.isEmailError.value
                    ? Colors.red
                    : Color(0xFFC4C4C4),
                width: 1,
                style: BorderStyle.solid),
          ),
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
                color: Color(0xFFE8503A), width: 1, style: BorderStyle.solid),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
                color: Color(0xFFE8503A), width: 1, style: BorderStyle.solid),
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordEditText(BuildContext context) {
    return Obx(
      () => CustomTextFormField(
        textStyle: TextStyle(
            color: const Color(0xFF111A24),
            fontSize: 16.adaptSize,
            fontFamily: 'Gordita'),
        filled: true,
        fillColor: Colors.white,
        hintText: 'xxxxxxx',
        hintStyle: CustomTextStyles.regular189A9A9AMobile,
        controller: _authenticationController.loginPasswordController,
        autofocus: false,
        maxLines: 1,
        validator: _authenticationController.validatePasswordForSignIn,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: _authenticationController.signUpPasswordIndicator.value,
        errorValue: _authenticationController.isPasswordError.value,
        suffix: Obx(() => IconButton(
            onPressed: () {
              _authenticationController.signUpPasswordIndicator.value =
                  !_authenticationController.signUpPasswordIndicator.value;
            },
            icon: _authenticationController.signUpPasswordIndicator.value
                ? Image.asset("asset/icons/tablet/eye-off.png",height: getSize(24),width: getSize(24),)
                : Icon(
                    Icons.visibility_outlined,
                    color: AppColors.primaryColor,
                  ))),
      ),
    );
  }

  /// Section Widget
  Widget _buildKeepMeLoggedInRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomCheckboxButton(
            text: "Keep me logged in",
            value: keepMeLoggedIn,
            onChange: (value) {
              keepMeLoggedIn = value;
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "Password Recovery",
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyMediumPrimaryRegular.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSignInButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Sign in",
      buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer,
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
        Text(
          "or",
          style: CustomTextStyles.titleMediumPrimaryContainer,
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
    return CustomOutlinedButton(
      height: 54.v,
      text: "Sign in with Google",
      rightIcon: Container(
        margin: EdgeInsets.only(left: 8.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGoogle,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineGray,
      buttonTextStyle: CustomTextStyles.titleMediumGray90001,
    );
  }

  /// Section Widget
  Widget _buildSignInWithMicrosoftButton(BuildContext context) {
    return CustomOutlinedButton(
      height: 54.v,
      text: "Sign in with Microsoft",
      rightIcon: Container(
        margin: EdgeInsets.only(left: 8.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgDownload1,
          height: 35.adaptSize,
          width: 35.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineGray,
      buttonTextStyle: CustomTextStyles.titleMediumGray90001,
    );
  }

  /// Section Widget
  Widget _buildSignInWithAppleButton(BuildContext context) {
    return CustomOutlinedButton(
      height: 54.v,
      text: "Sign in with Apple",
      rightIcon: Container(
        margin: EdgeInsets.only(left: 8.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgDownload11,
          height: 22.v,
          width: 19.h,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineGray,
      buttonTextStyle: CustomTextStyles.titleMediumGray90001,
    );
  }
}
