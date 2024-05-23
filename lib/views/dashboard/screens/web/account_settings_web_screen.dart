import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:main/device_manger/screen_constants.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:sizing/sizing.dart';

import '../../../../utils/asset_utilis/asset_tablet_utilis.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/theme/custom_text_style.dart';
import '../../../../utils/widows_size_utilis.dart';
import '../../../authentication/controller/authentication_controller.dart';
import '../../widget/tablet/toggel_button_widget.dart';
class AccountSettingsWebScreen extends StatelessWidget {
   AccountSettingsWebScreen({Key? key}) : super(key: key);
  final AuthenticationController _authenticationController =
  Get.put(AuthenticationController());
  @override
  Widget build(BuildContext context) {
    _authenticationController.selectedLocation = "";
    bool? isLandscape =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Form(
        key: _authenticationController.accountSettingsFormKey,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageUtilsForTablet.universalBackgroundImage),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Container(
              width: 700.ss,
              child: ListView(
                children: [
                  Container(
                    height: 100.ss,
                  ),
                  AppBar(
                    scrolledUnderElevation: 0.0,
                    title: Text(
                      "Account Settings",
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
                          style: CustomTextStyles.regular18232323WithOutOpacityTablet,
                        ),
                      ),
                    ],),
                  ),
                  Container(
                    height: 10.v,
                  ),
                  Container(
                    decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
                    height: 1.v,
                    width: 300.h,
                  ),
                  Container(
                    height: 20.v,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5.ss),
                        height: 50.ss,
                        width: 50.ss,
                        decoration: BoxDecoration(
                            color: Color(0xFFECECEC),
                            borderRadius: BorderRadius.circular(70)),
                        child: Image.asset(
                          "asset/icons/tablet/download_5.png",
                          color: Color(0xFF373737),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        width: 20.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "John Doe",
                                style:
                                CustomTextStyles.nameAccountSettingsTablet,
                              ),
                              Container(
                                width: 60.h,
                              ),
                              SvgPicture.asset(
                                "asset/images/tablet/edit-text1.svg",
                                height: 24,
                                fit: BoxFit.contain,
                              ),
                            ],
                          ),
                          Container(
                            height: 5.v,
                          ),
                          Text("Lorem ipsum dolor sit amet",
                              style:
                              CustomTextStyles.loremAccountSettingsTablet),
                        ],
                      )
                    ],
                  ),
                  Container(
                    height: 30.v,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: getWebPadding(right: 30),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("Change Password",
                                      style: CustomTextStyles
                                          .changePassowrdAccountSettingsTablet),
                                  SizedBox(
                                    height: 10.v,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.v,
                              ),
                              Obx(
                                    () => TextFormField(
                                  controller: _authenticationController
                                      .accountSettingsPasswordController,
                                  keyboardType: TextInputType.text,
                                  autofocus: false,
                                  maxLines: 1,
                                  cursorColor: AppColors.primaryColor,
                                  validator: _authenticationController
                                      .validatePasswordForSignIn,
                                  autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                                  // style: TextStyle(
                                  //     color: const Color(0xFF232323),
                                  //     fontSize: 14.fss,
                                  //     fontFamily: 'Gordita'),
                                  obscureText: _authenticationController
                                      .signUpPasswordIndicator.value,
                                  obscuringCharacter: "X",
                                  decoration: InputDecoration(
                                    errorMaxLines: 3,
                                    hintText: "XXXXXX",
                                    hintStyle: CustomTextStyles
                                        .hintStyleAccountWithHeightSettingsTablet,
                                    errorStyle: TextStyle(
                                        color: const Color(0xFFE8503A),
                                        fontSize: 12.fss,
                                        fontFamily: 'Gordita'),
                                    suffixIcon: Obx(
                                          () => Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.0.ss),
                                        child: IconButton(
                                          focusColor: Colors.white,
                                          splashColor: Colors.white,
                                          icon: _authenticationController
                                              .signUpPasswordIndicator.value
                                              ? Image.asset(
                                            "asset/icons/tablet/View_hide_light@2x.png",
                                            height: 20.ss,
                                            width: 20.ss,
                                          )
                                              : Icon(
                                            Icons.visibility_outlined,
                                            color: const Color(0xFF0A2342),
                                            size: 20.ss,
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
                                    ),
                                    // contentPadding:
                                    //     EdgeInsets.all(ScreenConstant.sizeMedium),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Color(0xFFD9D9D9)),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Color(0xFFD9D9D9)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(width: ScreenConstant.screenWidthTenth,),
                      Expanded(
                        flex: 5,
                        child: Column(
                          children: [
                            Padding(
                              padding: getWebPadding(left: 30),
                              child: Row(
                                children: [
                                  Text("Language",
                                      style: CustomTextStyles
                                          .changePassowrdAccountSettingsTablet),
                                ],
                              ),
                            ),
                            // SizedBox(
                            //   height: 10.ss,
                            // ),
                            Padding(
                              padding: getWebPadding(left: 30),
                              child: DropdownButtonFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.only(
                                        top: 15.ss, bottom: 10.ss),
                                    child: SvgPicture.asset(
                                      "asset/images/tablet/Earth.svg",
                                      height: 24,

                                    ),
                                  ),
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 10),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Color(0xFFD9D9D9)),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Color(0xFFD9D9D9)),
                                  ),
                                  label: Padding(
                                    // padding: const EdgeInsets.only(top: 20),
                                    padding: getWebPadding(top: 15),
                                    child: Row(
                                      // mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 5.ss,
                                        ),
                                        Text(
                                          'ENGLISH',
                                          style: CustomTextStyles
                                              .hintStyleAccountWithHeightSettingsTablet,
                                        ),
                                        Container(
                                          width: 15.h,
                                        ),
                                        Padding(
                                          padding: getWebPadding(left: 10),
                                          child: Image.asset(
                                            "asset/icons/tablet/download_13.png",
                                            height: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                icon: Image.asset(
                                  "asset/icons/tablet/Expand_down_light.png",
                                  fit: BoxFit.fill,
                                  height: 25.ss,
                                ),
                                isExpanded: true,
                                iconSize: 30.0,
                                style: TextStyle(color: Colors.blue),
                                items: [].map(
                                      (val) {
                                    return DropdownMenuItem<String>(
                                      value: val,
                                      child: Text(val),
                                    );
                                  },
                                ).toList(),
                                onChanged: (val) {
                                  _authenticationController.selectedLocation =
                                      val;
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 10.v,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: getWebPadding(right: 50),
                          child: InkWell(
                            onTap: () {},
                            child: Text("Password Reset",
                              style: CustomTextStyles
                                  .passwordResetAccountSettingsTablet,textAlign: TextAlign.end,),
                          ),
                        ),),
                      Expanded(
                        flex: 5,
                        child: Offstage(),),
                    ],
                  ),

                  Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: getWebPadding(right: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(height: getWebSize(20),),
                              Text("Email and Phone Number",
                                  style: CustomTextStyles
                                      .changePassowrdAccountSettingsTablet),
                              Container(height: getWebSize(20),),
                              TextFormField(
                                controller: TextEditingController(),
                                keyboardType: TextInputType.emailAddress,
                                autofocus: false,
                                maxLines: 1,
                                cursorColor: AppColors.primaryColor,
                                textInputAction: TextInputAction.next,
                                validator:
                                _authenticationController.validateEmail,
                                autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                                decoration: InputDecoration(
                                  hintText: "johndoe@gmail.com",
                                  hintStyle: CustomTextStyles
                                      .hintStyleAccountWithHeightSettingsTablet,
                                  errorStyle: TextStyle(
                                      color: const Color(0xFFE8503A),
                                      fontSize: 12.fss,
                                      fontFamily: 'Gordita'),
                                  prefixIcon: Container(
                                    margin:
                                    EdgeInsets.only(right: 10.ss,bottom: 5.ss ),
                                    child: Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 0.ss),
                                      child: Image.asset(
                                        "asset/icons/tablet/download_3.png",
                                        height: 20.ss,
                                        width: 20.ss,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  suffixIcon: Padding(
                                    padding: EdgeInsets.all(10.0.ss),
                                    child: SvgPicture.asset(
                                      "asset/images/tablet/edit-text1.svg",
                                      height: 15.ss,
                                      width: 15.ss,
                                      color: Color(0xFF373737),
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ),

                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Color(0xFFD9D9D9)),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Color(0xFFD9D9D9)),
                                  ),
                                ),
                              ),
                              Container(
                                height: 20.v,
                              ),
                              TextFormField(
                                controller: TextEditingController(),
                                keyboardType: TextInputType.emailAddress,
                                autofocus: false,
                                maxLines: 1,
                                cursorColor: AppColors.primaryColor,
                                textInputAction: TextInputAction.next,
                                validator:
                                _authenticationController.validateEmail,
                                autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                                // style: TextStyle(
                                //     color: const Color(0xFF111A24),
                                //     fontSize: 14.fss,
                                //     fontFamily: 'Gordita'),
                                decoration: InputDecoration(
                                  hintText: "+971-28-1234567",
                                  hintStyle: CustomTextStyles
                                      .hintStyleAccountWithHeightSettingsTablet,
                                  errorStyle: TextStyle(
                                      color: const Color(0xFFE8503A),
                                      fontSize: 12.fss,
                                      fontFamily: 'Gordita'),
                                  prefixIcon: Container(
                                    margin:
                                    EdgeInsets.only(right: 13.ss,bottom: 0.ss ),
                                    child: SvgPicture.asset(
                                      "asset/images/tablet/telephone1.svg",
                                      color: Colors.black,
                                      height: 20,
                                    ),
                                  ),
                                  // prefixIcon: Container(
                                  //   margin:
                                  //       EdgeInsets.only(right: 18.ss, top: 5.ss),
                                  //   child: Padding(
                                  //     padding: EdgeInsets.all(5.0.ss),
                                  //     child: SvgPicture.asset(
                                  //       "asset/images/tablet/telephone1.svg",
                                  //       fit: BoxFit.fill,
                                  //       height: 18.ss,
                                  //       width: 18.ss,
                                  //     ),
                                  //   ),
                                  // ),
                                  suffixIcon: Padding(
                                    padding: EdgeInsets.all(10.0.ss),
                                    child: SvgPicture.asset(
                                      "asset/images/tablet/edit-text1.svg",
                                      height: 15.ss,
                                      width: 15.ss,
                                      color: Color(0xFF373737),
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ),

                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Color(0xFFD9D9D9)),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Color(0xFFD9D9D9)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(width: ScreenConstant.screenWidthTenth,),
                      Expanded(flex: 5,child: Padding(
                        padding: getWebPadding(left: 30),
                        child: Container(
                          margin: getWebPadding(top: 10.ss),
                          padding: getWebPadding(left: 40,right: 40,top: 20,bottom: 30),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Measurement Unit",
                                style: CustomTextStyles
                                    .measurementAccountSettingsTablet,
                              ),
                              Container(
                                height: getWebSize(40),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child:  Obx(
                                          () => GestureDetector(
                                        onTap: () {
                                          _authenticationController.favotitesSelected.value = true;
                                          _authenticationController.savedSelected.value = false;
                                        },
                                        child: ToggleButtonWidgetTablet(
                                          isSelected: _authenticationController.favotitesSelected.value,
                                          text: 'Metric',
                                        ),
                                      ),
                                    ),),
                                  Expanded(flex:5,child:   Obx(
                                        () => GestureDetector(
                                      onTap: () {
                                        _authenticationController.favotitesSelected.value = false;
                                        _authenticationController.savedSelected.value = true;
                                      },
                                      child: ToggleButtonWidgetTablet(
                                        isSelected: _authenticationController.savedSelected.value,
                                        text: 'Imperial',
                                      ),
                                    ),
                                  ),)


                                ],
                              ),
                            ],
                          ),
                        ),
                      ))

                    ],
                  ),
                  Container(
                    height: 100.v,
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
