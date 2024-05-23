import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/routers/route_constants.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:sizing/sizing.dart';

import '../../../../device_manger/screen_constants.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/phone_size_utils.dart';
import '../../../../utils/widgets_utils/mobile/common_button.dart';
import '../../controller/authentication_controller.dart';

class ForgotPasswordScreenMobile extends StatelessWidget {
  ForgotPasswordScreenMobile({super.key});
  TextEditingController emailController = TextEditingController();
  final AuthenticationController _authenticationController =
  Get.put(AuthenticationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'asset/images/mobile/login2.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            SizedBox(height: getSize(90)),
            Padding(
              padding: getPadding(left: 25,right: 25,top: 20),
              child: Image.asset('asset/icons/tablet/download_4.png',fit: BoxFit.fill,height: getSize(362),width: getSize(390),),
            ),
            Text(
              'Forgot Password',
              style: CustomTextStyles.bold24TextStyleMobile,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: getSize(10),
            ),
            Padding(
              padding: getPadding(left: 30,right: 30),
              child: Center(
                child: Text(
                    'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta',
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.regular333333TextStyleMobile,),
              ),
            ),
            SizedBox(height: getSize(50)),
            Padding(
              padding: getPadding(left: 20,right: 20),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Enter Email Address',
                      style: CustomTextStyles.medium15Mobile,
                    ),
                  ),
                  Obx(
                        () => _authenticationController.isEmailError.value
                        ? Expanded(
                          flex: 1,
                          child: Text("Please enter a valid email address",
                              style: CustomTextStyles.light14FD1600Mobile),
                        )
                        : const Offstage(),
                  ),
                ],
              ),
            ),
            SizedBox(height: getSize(15)),
            Padding(
              padding: getPadding(left: 20,right: 20),
              child: Obx(
                    () => TextFormField(
                      controller:
                      _authenticationController.loginEmailController,
                      keyboardType: TextInputType.emailAddress,
                      autofocus: false,
                      maxLines: 1,
                      cursorColor: AppColors.primaryColor,
                      textInputAction: TextInputAction.next,
                      validator: _authenticationController.validateEmail,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      style:GoogleFonts.poppins(textStyle: TextStyle(
                        color: const Color(0xFF111A24),
                        fontSize:getFontSize(18),
                      )),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "johndoe@gmail.com",
                        hintStyle: CustomTextStyles.regular18232323Mobile,
                        errorStyle: TextStyle(
                            color: const Color(0xFFFD1600),
                            fontSize: 12.fss,
                            fontFamily: 'Gordita'),
                          suffixIcon: Padding(
                            padding: getPadding(all: 14),
                            child: Image.asset("asset/icons/tablet/download_3.png",height: getSize(24),width: getSize(24),),
                          ),
                        contentPadding:
                        EdgeInsets.all(ScreenConstant.sizeMedium),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                              color:
                              _authenticationController.isEmailError.value
                                  ? Color(0xFFFD1600)
                                  : Color(0xFFC4C4C4),
                              width: 1,
                              style: BorderStyle.solid),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                              color:
                              _authenticationController.isEmailError.value
                                  ? Color(0xFFFD1600)
                                  : Color(0xFFC4C4C4),
                              width: 1,
                              style: BorderStyle.solid),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                              color:
                              _authenticationController.isEmailError.value
                                  ? Color(0xFFFD1600)
                                  : Color(0xFFC4C4C4),
                              width: 1,
                              style: BorderStyle.solid),
                        ),
                        errorBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                              color: Color(0xFFFD1600),
                              width: 1,
                              style: BorderStyle.solid),
                        ),
                        focusedErrorBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                              color: Color(0xFFFD1600),
                              width: 1,
                              style: BorderStyle.solid),
                        ),
                      ),
                    ),
              ),
            ),
            SizedBox(height: getSize(30)),
            GestureDetector(
              onTap: () => Get.toNamed(loginScreenMobile),
              child: Text(
                'Back to sign in',
                style: GoogleFonts.poppins(
                  color: Color(0xff0A2342),
                  fontWeight: FontWeight.normal,
                  fontSize: getFontSize(16),
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: getSize(20)),
            Padding(
              padding: getPadding(left: 20,right: 20),
              child: CommonButton(
                height: getSize(54),
                text: 'Send',
                onPressed: () {}, width: null,
              ),
            ),
            SizedBox(height: getSize(40)),
          ],
        ),
      ),
    );
  }
}
