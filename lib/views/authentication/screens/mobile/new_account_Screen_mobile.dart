import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/phone_size_utils.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:main/utils/widgets_utils/mobile/common_button.dart';
import 'package:main/utils/widgets_utils/mobile/text_input_field.dart';
import 'package:main/views/authentication/controller/authentication_controller.dart';
import 'package:sizing/sizing.dart';

import '../../../../utils/tablet_size_utils.dart';
import '../../../../utils/widgets_utils/widgets/custom_elevated_button.dart';
import '../../../../utils/widgets_utils/widgets/custom_text_form_field.dart';

class NewAccountScreenMobile extends StatelessWidget {
  NewAccountScreenMobile({Key? key}) : super(key: key);
  final AuthenticationController _authenticationController =
      Get.put(AuthenticationController());

  @override
  Widget build(BuildContext context) {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: getSize(80)),
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
                      width: 5.ss,
                    ),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Text(
                        "Back",
                        style: CustomTextStyles.regular18Mobile,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: getSize(10)),
                Text(
                  'New Account',
                  style: CustomTextStyles.test,
                ),
                SizedBox(height: getSize(30)),
                Container(
                  width: Get.width,
                                  height: getSize(2),
                                  decoration:
                  BoxDecoration(color: Color(0xFF000000).withOpacity(0.12),boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Color(0xFF000000).withOpacity(0.3),
                        blurRadius: 3.0,
                        offset: Offset(0,5)
                    )
                  ],),
                                ),
                SizedBox(height: 30.ss),
                Row(
                  children: [
                    Text("First Name",
                        style: CustomTextStyles.titleSmallGray900),
                    const Spacer(),
                    Obx(
                          () => _authenticationController
                          .isUserNameError.value
                          ? FittedBox(
                        child: Text(
                            "Please enter your first name",
                            style: CustomTextStyles.bodyMediumDeeporangeA700_1),
                      )
                          : const Offstage(),
                    ),
                  ],
                ),
                SizedBox(height: getSize(20)),
                Obx(
                      () => CustomTextFormField(
                        textStyle: TextStyle(
                            color: const Color(0xFF111A24),
                            fontSize: 16.adaptSize,
                            fontFamily: 'Gordita'),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'John',
                        hintStyle: CustomTextStyles.regular18232323Mobile,
                        controller: _authenticationController
                            .createNewAccountFirstNameController,
                        autofocus: false,
                        maxLines: 1,
                        validator: _authenticationController.validateName,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        errorValue: _authenticationController.isUserNameError.value,
                        suffix: Padding(
                          padding: getPadding(all: 15),
                          child: Image.asset(
                            "asset/icons/tablet/User_light_3x.png",
                            height: getSize(24),
                            width: getSize(24),
                          ),
                        ),
                      ),
                ),
                SizedBox(height: 15.ss),
                Row(
                  children: [
                    Text("Last Name",
                        style: CustomTextStyles.titleSmallGray900),
                    const Spacer(),
                    Obx(
                          () => _authenticationController
                          .isUserSurNameError.value
                          ? FittedBox(
                        child: Text(
                            "Please enter your last name",
                            style: CustomTextStyles.bodyMediumDeeporangeA700_1),
                      )
                          : const Offstage(),
                    ),
                  ],
                ),
                SizedBox(height: getSize(20)),
                Obx(
                      () => CustomTextFormField(
                        textStyle: TextStyle(
                            color: const Color(0xFF111A24),
                            fontSize: 16.adaptSize,
                            fontFamily: 'Gordita'),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Doe',
                        hintStyle: CustomTextStyles.regular18232323Mobile,
                        controller: _authenticationController
                            .createNewAccountLastNameController,
                        autofocus: false,
                        maxLines: 1,
                        validator: _authenticationController.validateSurName,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        errorValue: _authenticationController.isUserSurNameError.value,
                        suffix: Padding(
                          padding: getPadding(all: 15),
                          child: Image.asset(
                            "asset/icons/tablet/User_light_3x.png",
                            height: getSize(24),
                            width: getSize(24),
                          ),
                        ),
                      ),
                ),
                SizedBox(height: 15.ss),
                Row(
                  children: [
                    Text("Email Address",
                        style: CustomTextStyles.titleSmallGray900),
                    const Spacer(),
                    Obx(
                          () => _authenticationController
                          .isEmailError.value
                          ? FittedBox(
                        child: Text(
                            "Please enter a valid email address",
                            style: CustomTextStyles.bodyMediumDeeporangeA700_1),
                      )
                          : const Offstage(),
                    ),
                  ],
                ),
                SizedBox(height: getSize(20)),
                Obx(
                      () => CustomTextFormField(
                        textStyle: TextStyle(
                            color: const Color(0xFF111A24),
                            fontSize: 16.adaptSize,
                            fontFamily: 'Gordita'),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'johndoe@gmail.com',
                        hintStyle: CustomTextStyles.regular18232323Mobile,
                        controller: _authenticationController
                            .createNewAccountEmailController,
                        autofocus: false,
                        maxLines: 1,
                        validator: _authenticationController.validateEmail,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        errorValue: _authenticationController.isEmailError.value,
                        suffix: Padding(
                          padding: getPadding(all: 15),
                          child: Image.asset(
                            "asset/icons/tablet/download_3.png",
                            height: getSize(24),
                            width: getSize(24),
                          ),
                        ),
                      ),
                ),
                SizedBox(height: 15.ss),
                Row(
                  children: [
                    Text("Phone Number",
                        style:CustomTextStyles.titleSmallGray900),
                    const Spacer(),
                    Obx(
                          () => _authenticationController
                          .isUserPhoneError.value
                          ? FittedBox(
                        child: Text(
                            "Please enter your phone number",
                            style: CustomTextStyles.bodyMediumDeeporangeA700_1),
                      )
                          : const Offstage(),
                    ),
                  ],
                ),
                SizedBox(height: getSize(20)),
                Obx(
                      () => CustomTextFormField(
                        textStyle: TextStyle(
                            color: const Color(0xFF111A24),
                            fontSize: 16.adaptSize,
                            fontFamily: 'Gordita'),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: '+1 142xxxxxxx',
                        textInputType: TextInputType.number,
                        hintStyle: CustomTextStyles.regular18232323Mobile,
                        controller: _authenticationController
                            .createNewAccountPhoneController,
                        autofocus: false,
                        maxLines: 1,
                        validator: _authenticationController.validatePhone,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        errorValue: _authenticationController.isUserPhoneError.value,
                        suffix: Padding(
                          padding: getPadding(all: 20),
                          child: Image.asset(
                            "asset/icons/tablet/download_11.png",
                            height: getSize(20),
                            width: getSize(20),
                          ),
                        ),
                      ),
                ),
                SizedBox(height: getSize(30)),
                CustomElevatedButton(
                  text: "Sign up",
                  buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer,
                ),
                SizedBox(height: 30.ss),
                Center(
                  child: Text(
                    "Privacy Policy",
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyMediumPrimaryRegular.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                SizedBox(height: getSize(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account ?',
                      style: CustomTextStyles.regular16TextStyleMobile,
                    ),
                    SizedBox(width: 5.ss),
                    GestureDetector(
                      //onTap: () => Get.toNamed(loginScreenMobile),
                      child: Text(
                        'Sing In',
                        style: CustomTextStyles.semiBold1650C878TextStyleMobile
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
