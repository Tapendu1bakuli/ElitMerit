import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/tablet_size_utils.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:sizing/sizing.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../../device_manger/screen_constants.dart';
import '../../../../utils/asset_utilis/asset_tablet_utilis.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../../authentication/controller/authentication_controller.dart';
import '../../widget/tablet/toggel_button_widget.dart';

class AccountSettingsTabletScreen extends StatelessWidget {
  AccountSettingsTabletScreen({Key? key}) : super(key: key);
  final AuthenticationController _authenticationController =
  Get.put(AuthenticationController());
  final List<Country> countries = [
    Country(name: 'France', flagPath: 'asset/images/tablet/Flag_of_France.png'),
    Country(name: 'UK', flagPath: 'asset/images/tablet/uk_flag.png'),
    // Add more countries as needed
  ];
  @override
  Widget build(BuildContext context) {
    _authenticationController.selectedLocation = "";
    print("tablet");
    bool? isLandscape =
        MediaQuery.of(context).orientation == Orientation.portrait;
    print("Landscape:$isLandscape");
    return isLandscape?Scaffold(body: Form(key: _authenticationController.accountSettingsFormKey,child: Container(   decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(ImageUtilsForTablet.universalBackgroundImageTabletPortrait),
        fit: BoxFit.fill,
      ),
    ),
    child: Center(
      child: ListView(
        children: [
          Container(
            height: 80.ss,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: AppBar(
              scrolledUnderElevation: 0.0,
              title: Text(
                "Account Settings",
                style: CustomTextStyles.bold32Tablet,
              ),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              leadingWidth: getTabletSize(150),
              leading: Row(children: [
                InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Color(0xFF222222),
                      size: getTabletSize(24),
                    )),
                Container(
                  width: getTabletSize(10),
                ),
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Text(
                    "Back",
                    style: CustomTextStyles.regular18000000TextStyleTablet,
                  ),
                ),
              ],),
            ),
          ),
          Container(
            height: 10.v,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Container(
              decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
              height: 1.v,
            ),
          ),
          Container(
            height: 20.v,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5.ss),
                  height: 45.21.ss,
                  width: 45.21.ss,
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
                          height: 15.v,
                          width: 15.h,
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
          ),
          Container(
            height: 30.v,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              children: [
                Text("Change Password",
                    style: CustomTextStyles
                        .changePassowrdAccountSettingsTablet),
                SizedBox(
                  height: 10.v,
                ),
              ],
            ),
          ),
          Container(
            height: 15.v,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Obx(
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
                style: TextStyle(
                    color: const Color(0xFF232323),
                    fontSize: 14.fss,
                    fontFamily: 'Gordita'),
                obscureText: _authenticationController
                    .signUpPasswordIndicator.value,
                obscuringCharacter: "X",
                decoration: InputDecoration(
                  errorMaxLines: 3,
                  hintText: "XXXXXX",
                  hintStyle: CustomTextStyles
                      .hintStyleAccountSettingsTablet,
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
          ),
          Container(
            height: 30.v,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: InkWell(
              onTap: () {},
              child: Text("Password Reset",
                style: CustomTextStyles
                    .passwordResetAccountSettingsTablet,textAlign: TextAlign.end,),
            ),
          ),
          Container(
            height: 30.v,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text("Email and Phone Number",
                style: CustomTextStyles
                    .changePassowrdAccountSettingsTablet),
          ),
          Container(
            height: 15.v,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextFormField(
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
                    .hintStyleAccountSettingsTablet,
                errorStyle: TextStyle(
                    color: const Color(0xFFE8503A),
                    fontSize: 12.fss,
                    fontFamily: 'Gordita'),
                prefixIcon: Container(
                  margin:
                  EdgeInsets.only(right: 10.ss, top: 5.ss),
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
          ),
          Container(
            height: 20.v,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextFormField(
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
              style: TextStyle(
                  color: const Color(0xFF111A24),
                  fontSize: 14.fss,
                  fontFamily: 'Gordita'),
              decoration: InputDecoration(
                hintText: "+971-28-1234567",
                hintStyle: CustomTextStyles
                    .hintStyleAccountSettingsTablet,
                errorStyle: TextStyle(
                    color: const Color(0xFFE8503A),
                    fontSize: 12.fss,
                    fontFamily: 'Gordita'),
                prefixIcon: Container(
                  margin:
                  EdgeInsets.only(right: 10.ss, top: 5.ss),
                  child: Container(
                    height: 13.ss,
                    width: 13.ss,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(5),
                    child: SvgPicture.asset(
                      "asset/images/tablet/telephone1.svg",
                      color: Colors.black,
                    ),
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
            ),
          ),
          Container(
            height: 30.v,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text("Language",
                style: CustomTextStyles
                    .changePassowrdAccountSettingsTablet),
          ),
          Container(
            height: 15.v,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.only(
                      top: 15.ss, bottom: 10.ss),
                  child: SvgPicture.asset(
                    "asset/images/tablet/Earth.svg",
                    height: 20,

                  ),
                ),
                // contentPadding:
                //     EdgeInsets.symmetric(vertical: 10),
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
                  padding: getTabletPadding(top: 10),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 5.ss,
                      ),
                      Text(
                        'ENGLISH',
                        style: CustomTextStyles
                            .hintStyleAccountSettingsTablet,
                      ),
                      Container(
                        width: 15.h,
                      ),
                      Padding(
                        padding: getTabletPadding(left: 10),
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
          Container(
            height: 20.v,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              margin: getTabletPadding(bottom: 40),
              padding: getTabletPadding(left: 20,right: 20,top: 40,bottom: 40),
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
                    height: getTabletSize(40),
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
          )
        ],
      ),
    ),
    ),),):Scaffold(
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
            child: Padding(
              padding: getTabletPadding(left: 90 ,right: 90),
              child: ListView(
                children: [
                  Container(
                    height: 70.ss,
                  ),
                  AppBar(
                    scrolledUnderElevation: 0.0,
                    title: Text(
                      "Account Settings",
                      style: CustomTextStyles.bold32Tablet,
                    ),
                    centerTitle: true,
                    backgroundColor: Colors.transparent,
                    leadingWidth: getTabletSize(150),
                    leading: Row(children: [
                      InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Color(0xFF222222),
                            size: getTabletSize(24),
                          )),
                      Container(
                        width: getTabletSize(10),
                      ),
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Text(
                          "Back",
                          style: CustomTextStyles.regular18TextStyleTablet,
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
                        height: 45.21.ss,
                        width: 45.21.ss,
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
                                height: 15.v,
                                width: 15.h,
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
                          padding: getTabletPadding(right: 30),
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
                                  style: TextStyle(
                                      color: const Color(0xFF232323),
                                      fontSize: 14.fss,
                                      fontFamily: 'Gordita'),
                                  obscureText: _authenticationController
                                      .signUpPasswordIndicator.value,
                                  obscuringCharacter: "X",
                                  decoration: InputDecoration(
                                    errorMaxLines: 3,
                                    hintText: "XXXXXX",
                                    hintStyle: CustomTextStyles
                                        .hintStyleAccountSettingsTablet,
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
                      Expanded(
                        flex: 5,
                        child: Column(
                          children: [
                            Padding(
                              padding: getTabletPadding(left: 30),
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
                              padding: getTabletPadding(left: 30),
                              child: DropdownButtonFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.only(
                                        top: 18.ss, bottom: 10.ss),
                                    child: SvgPicture.asset(
                                      "asset/images/tablet/Earth.svg",
                                      height: 20,
                                    ),
                                  ),
                                  // contentPadding:
                                  //     EdgeInsets.symmetric(vertical: 10),
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
                                    padding: getTabletPadding(top: 10),
                                    child: Row(
                                      // mainAxisAlignment: MainAxisAlignment.center,
                                      children: [

                                        Text(
                                          'ENGLISH',
                                          style: CustomTextStyles
                                              .hintStyleAccountSettingsTablet,
                                        ),
                                        Container(
                                          width: 15.h,
                                        ),
                                        Padding(
                                          padding: getTabletPadding(left: 10),
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
                          padding: getTabletPadding(right: 50),
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
                          padding: getTabletPadding(right: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(height: getTabletSize(20),),
                              Text("Email and Phone Number",
                                  style: CustomTextStyles
                                      .changePassowrdAccountSettingsTablet),
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
                                      .hintStyleAccountSettingsTablet,
                                  errorStyle: TextStyle(
                                      color: const Color(0xFFE8503A),
                                      fontSize: 12.fss,
                                      fontFamily: 'Gordita'),
                                  prefixIcon: Container(
                                    margin:
                                    EdgeInsets.only(right: 10.ss, top: 5.ss),
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
                                style: TextStyle(
                                    color: const Color(0xFF111A24),
                                    fontSize: 14.fss,
                                    fontFamily: 'Gordita'),
                                decoration: InputDecoration(
                                  hintText: "+971-28-1234567",
                                  hintStyle: CustomTextStyles
                                      .hintStyleAccountSettingsTablet,
                                  errorStyle: TextStyle(
                                      color: const Color(0xFFE8503A),
                                      fontSize: 12.fss,
                                      fontFamily: 'Gordita'),
                                  prefixIcon: Container(
                                    margin:
                                    EdgeInsets.only(right: 10.ss, top: 5.ss),
                                    child: Container(
                                      height: 13.ss,
                                      width: 13.ss,
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.all(5),
                                      child: SvgPicture.asset(
                                        "asset/images/tablet/telephone1.svg",
                                        color: Colors.black,
                                      ),
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
                      Expanded(flex: 5,child: Padding(
                        padding: getTabletPadding(left: 30),
                        child: Container(
                          margin: getTabletPadding(bottom: 40),
                          padding: getTabletPadding(left: 20,right: 20,top: 40,bottom: 40),
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
                                height: getTabletSize(40),
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
class Country {
  final String name;
  final String flagPath;

  Country({required this.name, required this.flagPath});
}