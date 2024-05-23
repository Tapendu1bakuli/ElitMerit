import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/routers/route_constants.dart';
import 'package:sizing/sizing.dart';

import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/widgets_utils/mobile/common_button.dart';
import '../../../../utils/widgets_utils/mobile/text_input_field.dart';

class SignUpScreenMobile extends StatelessWidget {
  SignUpScreenMobile({super.key});
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

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
                SizedBox(height: 100.ss),
                Text(
                  'New Account',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.fss,
                  ),
                ),
                SizedBox(height: 35.ss),
                Text(
                  'First Name',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 15.fss,
                    color: AppColors.textColor,
                  ),
                ),
                SizedBox(height: 10.ss),
                TextInputField(
                  onPressed: () {},
                  controller: firstNameController,
                  hintText: 'John',
                  icon: Icons.perm_identity,
                  obscureText: false,
                ),
                SizedBox(height: 15.ss),
                Text(
                  'Last Name',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 15.fss,
                    color: AppColors.textColor,
                  ),
                ),
                SizedBox(height: 10.ss),
                TextInputField(
                  onPressed: () {},
                  controller: lastNameController,
                  hintText: 'Doe',
                  icon: Icons.perm_identity,
                  obscureText: false,
                ),
                SizedBox(height: 15.ss),
                Text(
                  'Email Address',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 15.fss,
                    color: AppColors.textColor,
                  ),
                ),
                SizedBox(height: 10.ss),
                TextInputField(
                  onPressed: () {},
                  controller: emailController,
                  hintText: 'johndoe@gmail.com',
                  icon: Icons.local_post_office_outlined,
                  obscureText: false,
                ),
                SizedBox(height: 15.ss),
                Text(
                  'Phone Number',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 15.fss,
                    color: AppColors.textColor,
                  ),
                ),
                SizedBox(height: 10.ss),
                TextInputField(
                  onPressed: () {},
                  controller: phoneNumberController,
                  hintText: '+1 142xxxxxxx',
                  icon: Icons.phone_outlined,
                  obscureText: false,
                ),
                SizedBox(height: 20.ss),
                CommonButton(
                  text: 'Sign up',
                  width: 399.ss,
                  onPressed: () => Get.toNamed(home),
                  height: 54.ss,
                ),
                SizedBox(height: 30.ss),
                Center(
                  child: Text(
                    'Privacy Policy',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Color(0xff0A2342),
                      fontWeight: FontWeight.normal,
                      fontSize: 14.fss,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                SizedBox(height: 20.ss),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account ?',
                      style: GoogleFonts.poppins(
                        color: Color(0xff6C6C6C),
                        fontWeight: FontWeight.normal,
                        fontSize: 16.fss,
                      ),
                    ),
                    SizedBox(width: 5.ss),
                    GestureDetector(
                      onTap: () => Get.toNamed(loginScreenMobile),
                      child: Text(
                        'Sing In',
                        style: GoogleFonts.poppins(
                            color: AppColors.primaryColor,
                            fontSize: 16.fss,
                            fontWeight: FontWeight.w500),
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
