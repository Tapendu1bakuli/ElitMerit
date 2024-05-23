import 'dart:io';
import 'package:camera/camera.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:main/device_manger/screen_constants.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/phone_size_utils.dart';
import 'package:main/utils/tablet_size_utils.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:main/utils/widows_size_utilis.dart';
import 'package:main/views/dashboard/controller/home_controller.dart';
import 'package:main/views/dashboard/widget/tablet/common_card_tablet.dart';
import 'package:main/views/dashboard/widget/tablet/toggel_button_widget.dart';
import 'package:sizing/sizing.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/utils.dart';
import '../../../authentication/controller/authentication_controller.dart';

class AddLeaseContractWebWidget extends StatelessWidget {
  AddLeaseContractWebWidget({super.key});
   final HomeController _homeController = Get.put(HomeController());

   final AuthenticationController _authenticationController =
   Get.put(AuthenticationController());
  @override
  Widget build(BuildContext context) {
    return _bodyView(context);
  }

  Widget _bodyView(context) {
    return Stack(
      children: [
        CommonCardTablet(
          child: Padding(
            padding: getTabletPadding(left: 20,right: 20,top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonCardTablet(
                  verticalPadding: ScreenConstant.defaultHeightTen,
                  color: AppColors.primaryColor,
                  child: Text(
                    'Property Information',
                    style: CustomTextStyles.medium18FFFFFFTextStyleTablet.copyWith(
                      fontSize : 14.fss
                    ),
                  ),
                ),
                SizedBox(height: 20.ss),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _propertyInfoTextView(
                            title: 'Project Name', subTitle: 'Excepteur sint occaecat',textStyle: CustomTextStyles.light20000000TextStyleTablet.copyWith(fontSize : 14.fss)),
                        _propertyInfoTextView(
                            title: 'Property Number', subTitle: '1245e25',textStyle:CustomTextStyles.light20000000TextStyleTablet.copyWith(fontSize : 14.fss)),
                        _propertyInfoTextView(title: 'Room Count', subTitle: '03',textStyle: CustomTextStyles.light20000000TextStyleTablet.copyWith(fontSize : 14.fss)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      _propertyInfoTextView(title: 'Type', subTitle: 'Apartment',textStyle: CustomTextStyles.light20000000TextStyleTablet.copyWith(fontSize : 14.fss)),
                      _propertyInfoTextView(
                          title: 'Condition',
                          subTitle: 'Good',
                          textStyle: CustomTextStyles.semiBold20TextStyleTablet.copyWith(fontSize : 14.fss)),
                    ],),
                  )
                ],),
                SizedBox(height: 10.ss),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Tenant',style: CustomTextStyles.medium200A2342TextStyleTablet.copyWith(
                              fontSize : 14.fss
                          ),),
                          SizedBox(height: 10.ss),
                          SizedBox(
                            height: 40.ss,
                            child: DropdownButtonFormField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: 15.ss,horizontal: 5.ss),
                                filled: true,
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
                                      width: 1,
                                      style: BorderStyle.solid),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
                                      width: 1,
                                      style: BorderStyle.solid),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
                                      width: 1,
                                      style: BorderStyle.solid),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFE8503A),
                                      width: 1,
                                      style: BorderStyle.solid),
                                ),
                                focusedErrorBorder:
                                OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFE8503A),
                                      width: 1,
                                      style: BorderStyle.solid),
                                ),
                              ),
                              hint: Text(
                                "Select a tenant",
                                style: CustomTextStyles.medium146A6A6ATextStyleTablet.copyWith(height:1.3),
                              ),
                              icon: Image.asset(
                                "asset/icons/tablet/download_10.png",
                              ),
                              iconSize: 24,
                              isExpanded: true,
                              style: CustomTextStyles.medium146A6A6ATextStyleTablet.copyWith(color : Colors.black),
                              items: ["Data1", "Data2"].map(
                                    (val) {
                                  return DropdownMenuItem<String>(
                                    value: val,
                                    child: Text(val),
                                  );
                                },
                              ).toList(),
                              onChanged: (val) {
                                // _homeController.selectedLocation = val;
                              },
                            ),
                          ),
                          SizedBox(height: 10.ss),
                          SizedBox(
                            height: ScreenConstant.defaultHeightSeventySix,
                            child: TextFormField(
                              controller: TextEditingController(),
                              keyboardType: TextInputType.emailAddress,
                              autofocus: false,
                              maxLines: 1,
                              cursorColor: const Color(0xFFC4C4C4),
                              textInputAction: TextInputAction.next,

                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              style: TextStyle(
                                  color: const Color(0xFF111A24),
                                  fontSize: 14.fss,
                                  fontFamily: 'Gordita'),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: ScreenConstant.defaultHeightTwenty,horizontal: 5.ss),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Tenant Name",
                                hintStyle: CustomTextStyles.medium146A6A6ATextStyleTablet.copyWith(height:2.0),
                                errorStyle: TextStyle(
                                    color: const Color(0xFFE8503A),
                                    fontSize: 12.fss,
                                    fontFamily: 'Gordita'),
                                suffixIcon: Padding(
                                  padding: getTabletPadding(right: 10,top: 5,bottom: 5),
                                  child:  Image.asset("asset/icons/tablet/User_alt_light.png",height: 24,),
                                ),

                                focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
                                      width: 1,
                                      style: BorderStyle.solid),
                                ),
                                disabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
                                      width: 1,
                                      style: BorderStyle.solid),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
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

                          SizedBox(height: 10.ss),
                          SizedBox(
                            height: ScreenConstant.defaultHeightSeventySix,
                            child: TextFormField(
                              controller: TextEditingController(),
                              keyboardType: TextInputType.phone,
                              autofocus: false,
                              maxLines: 1,
                              cursorColor: const Color(0xFFC4C4C4),
                              textInputAction: TextInputAction.next,

                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              style: TextStyle(
                                  color: const Color(0xFF111A24),
                                  fontSize: 14.fss,
                                  fontFamily: 'Gordita'),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: ScreenConstant.defaultHeightTwenty,horizontal: 5.ss),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Phone Number",
                                hintStyle: CustomTextStyles.medium146A6A6ATextStyleTablet.copyWith(height:2.0),
                                errorStyle: TextStyle(
                                    color: const Color(0xFFE8503A),
                                    fontSize: 12.fss,
                                    fontFamily: 'Gordita'),
                                suffixIconConstraints: BoxConstraints(
                                  maxHeight: 14.ss
                                ),
                                suffixIcon: Image.asset("asset/icons/tablet/ic_call.png",height: 14.ss,fit: BoxFit.contain,).marginOnly(right: 15),
                                focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
                                      width: 1,
                                      style: BorderStyle.solid),
                                ),
                                disabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
                                      width: 1,
                                      style: BorderStyle.solid),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
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
                          SizedBox(height: 10.ss),
                          SizedBox(
                            height: ScreenConstant.defaultHeightSeventySix,
                            child: Obx(()=>TextFormField(
                                controller: _authenticationController.loginEmailController,
                                validator: _authenticationController.validateEmail,
                                keyboardType: TextInputType.emailAddress,
                                autofocus: false,
                                maxLines: 1,
                                cursorColor: const Color(0xFFC4C4C4),
                                textInputAction: TextInputAction.next,
                                autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                                style: TextStyle(
                                    color: const Color(0xFF111A24),
                                    fontSize: 14.fss,
                                    fontFamily: 'Gordita'),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(vertical: ScreenConstant.defaultHeightTwenty,horizontal: 5.ss),
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: "Email Address",
                                  hintStyle: CustomTextStyles.medium146A6A6ATextStyleTablet.copyWith(height:2.0),
                                  errorStyle: TextStyle(
                                      color: const Color(0xFFE8503A),
                                      fontSize: 12.fss,
                                      fontFamily: 'Gordita'),
                                  suffixIcon: Padding(
                                    padding: getTabletPadding(right: 10,top: 20,bottom: 20),
                                    child:  Image.asset("asset/icons/tablet/download_3.png",height: 28,),
                                  ),

                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                        color: _authenticationController.isEmailError.value
                                            ? Colors.red
                                            : const Color(0xFFC4C4C4),
                                        width: 1,
                                        style: BorderStyle.solid),
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                        color: _authenticationController.isEmailError.value
                                            ? Colors.red
                                            : const Color(0xFFC4C4C4),
                                        width: 1,
                                        style: BorderStyle.solid),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                        color: _authenticationController.isEmailError.value
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
                          SizedBox(height: 10.ss),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Obx(()=> _authenticationController.isEmailError.value?Expanded(
                                flex: 6,
                                child: Text(
                                  'Please fill out this field',
                                  style: GoogleFonts.poppins(
                                      color: Colors.red,
                                      fontSize: 14.fss,
                                      fontWeight: FontWeight.w400),
                                ),
                              ): Expanded(flex: 5,child: Container()),
                              ),

                              Expanded(
                                flex: 3,
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: Text(
                                        'New tenant',
                                        style: CustomTextStyles.medium146A6A6ATextStyleTablet,
                                      ),
                                    ),
                                    SizedBox(width: 10.ss),
                                    Image.asset(
                                      'asset/icons/tablet/Add_ring_light.png',
                                      height: ScreenConstant.defaultHeightTwentyThree,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.ss),
                          Text(
                            'Contract Date',
                            style: CustomTextStyles.medium200A2342TextStyleTablet.copyWith(
                                fontSize : 14.fss
                            ),

                          ),
                          SizedBox(height: 10.ss),
                          SizedBox(
                            height: ScreenConstant.defaultHeightSeventySix,
                            child: TextFormField(
                              onTap: () async {
                                DateTime? pickedDate = await showDatePicker(
                                    context: context,
                                    firstDate: DateTime(2010),
                                    //DateTime.now() - not to allow to choose before today.
                                    lastDate: DateTime(2024));

                                if (pickedDate != null) {
                                  debugPrint(pickedDate.toString()); //pickedDate output format => 2021-03-10 00:00:00.000
                                  String formattedDate =
                                  DateFormat('yyyy-MM-dd').format(pickedDate);
                                  debugPrint(formattedDate);

                                  _authenticationController.chequeDateController.text = formattedDate;
                                  //formatted date output using intl package =>  2021-03-16
                                  //you can implement different kind of Date Format here according to your requirement
                                } else {
                                  debugPrint("Date is not selected");
                                }
                              },
                              readOnly: true,
                              controller: _authenticationController.chequeDateController,
                              keyboardType: TextInputType.phone,
                              autofocus: false,
                              maxLines: 1,
                              cursorColor: const Color(0xFFC4C4C4),
                              textInputAction: TextInputAction.next,
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              style: TextStyle(
                                  color: const Color(0xFF111A24),
                                  fontSize: 14.fss,
                                  fontFamily: 'Gordita'),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: ScreenConstant.defaultHeightTwenty,horizontal: 5.ss),

                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Contract Start",
                                hintStyle: CustomTextStyles.medium146A6A6ATextStyleTablet.copyWith(height:2.0),
                                errorStyle: TextStyle(
                                    color: const Color(0xFFE8503A),
                                    fontSize: 12.fss,
                                    fontFamily: 'Gordita'),
                                suffixIcon: Padding(
                                  padding: getTabletPadding(right: 10,top: 20,bottom: 20),
                                  child:  Image.asset("asset/icons/tablet/download_9.png",height: 28,),
                                ),

                                focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
                                      width: 1,
                                      style: BorderStyle.solid),
                                ),
                                disabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
                                      width: 1,
                                      style: BorderStyle.solid),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
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
                          SizedBox(height: 10.ss),
                          SizedBox(
                            height: ScreenConstant.defaultHeightSeventySix,
                            child: TextFormField(
                              onTap: () async {
                                DateTime? pickedDate = await showDatePicker(
                                    context: context,
                                    firstDate: DateTime(2010),
                                    //DateTime.now() - not to allow to choose before today.
                                    lastDate: DateTime(2024));

                                if (pickedDate != null) {
                                  debugPrint(
                                      pickedDate.toString()); //pickedDate output format => 2021-03-10 00:00:00.000
                                  String formattedDate =
                                  DateFormat('yyyy-MM-dd').format(pickedDate);
                                  debugPrint(formattedDate);

                                  _authenticationController.chequeDate1Controller.text = formattedDate;
                                  //formatted date output using intl package =>  2021-03-16
                                  //you can implement different kind of Date Format here according to your requirement
                                } else {
                                  debugPrint("Date is not selected");
                                }
                              },
                              readOnly: true,
                              controller: _authenticationController.chequeDate1Controller,
                              keyboardType: TextInputType.phone,
                              autofocus: false,
                              maxLines: 1,
                              cursorColor: const Color(0xFFC4C4C4),
                              textInputAction: TextInputAction.next,
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              style: TextStyle(
                                  color: const Color(0xFF111A24),
                                  fontSize: 14.fss,
                                  fontFamily: 'Gordita'),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: ScreenConstant.defaultHeightTwenty,horizontal: 5.ss),

                                filled: true,
                                fillColor: Colors.white,
                                hintText: "End Dates",
                                hintStyle: CustomTextStyles.medium146A6A6ATextStyleTablet.copyWith(height:2.0),
                                errorStyle: TextStyle(
                                    color: const Color(0xFFE8503A),
                                    fontSize: 12.fss,
                                    fontFamily: 'Gordita'),
                                suffixIcon: Padding(
                                  padding: getTabletPadding(right: 10,top: 20,bottom: 20),
                                  child:  Image.asset("asset/icons/tablet/download_9.png",height: 28),
                                ),

                                focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
                                      width: 1,
                                      style: BorderStyle.solid),
                                ),
                                disabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
                                      width: 1,
                                      style: BorderStyle.solid),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
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
                          SizedBox(height: 20.ss),
                          Obx(()=> _authenticationController
                              .temporaryVehicleImagePath
                              .value
                              .isEmpty
                              ? const Offstage()
                              : InkWell(
                            onTap: () {
                              _authenticationController
                                  .temporaryVehicleImagePath
                                  .value = "";
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: ScreenConstant.defaultWidthSixty),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.v,
                                  vertical: 6.h),
                              decoration: const BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(
                                      Radius.circular(
                                          20)),
                                  color: Colors.red),
                              child: Center(
                                  child: Text(
                                    "Delete",
                                    style: CustomTextStyles
                                        .elevatedButton1,
                                  )),
                            ),
                          ),
                          ),
                          _uploadImageView(context),
                          Container(
                            height: 25.ss,
                          ),
                          Obx(()=> Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Lease Contract",
                                  style: CustomTextStyles.medium200A2342TextStyleTablet.copyWith(
                                      fontSize : 14.fss
                                  ),
                                ),
                                _authenticationController
                                    .temporaryDocImagePath
                                    .value
                                    .isEmpty
                                    ? const Offstage()
                                    : InkWell(
                                  onTap: () {
                                    _authenticationController
                                        .temporaryDocImagePath
                                        .value = "";
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.v,
                                        vertical: 10.h),
                                    decoration: const BoxDecoration(
                                        borderRadius:
                                        BorderRadius.all(
                                            Radius.circular(
                                                20)),
                                        color: Colors.red),
                                    child: Center(
                                        child: Text(
                                          "Delete",
                                          style: CustomTextStyles
                                              .elevatedButton1,
                                        )),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 10.ss,
                          ),

                        ],
                      ),
                    ),
                    Container(width: getWebSize(80),),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Financial Details',
                            style: CustomTextStyles.medium200A2342TextStyleTablet.copyWith(
                                fontSize : 14.fss
                            ),
                          ),
                          SizedBox(height: getWebSize(20)),
                          SizedBox(
                            height: ScreenConstant.defaultHeightSeventySix,
                            child: TextFormField(
                              controller: TextEditingController(),
                              keyboardType: TextInputType.emailAddress,
                              autofocus: false,
                              maxLines: 1,
                              cursorColor: const Color(0xFFC4C4C4),
                              textInputAction: TextInputAction.next,

                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              style: TextStyle(
                                  color: const Color(0xFF111A24),
                                  fontSize: 14.fss,
                                  fontFamily: 'Gordita'),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: ScreenConstant.defaultHeightTwenty,horizontal: 5.ss),

                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Contract Amount",
                                hintStyle: CustomTextStyles.medium146A6A6ATextStyleTablet.copyWith(height:2.0),
                                errorStyle: TextStyle(
                                    color: const Color(0xFFE8503A),
                                    fontSize: 12.fss,
                                    fontFamily: 'Gordita'),

                                focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
                                      width: 1,
                                      style: BorderStyle.solid),
                                ),
                                disabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
                                      width: 1,
                                      style: BorderStyle.solid),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
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
                          SizedBox(height: getWebSize(20)),
                          SizedBox(
                            height: ScreenConstant.defaultHeightSeventySix,
                            child: TextFormField(
                              controller: TextEditingController(),
                              keyboardType: TextInputType.emailAddress,
                              autofocus: false,
                              maxLines: 1,
                              cursorColor: const Color(0xFFC4C4C4),
                              textInputAction: TextInputAction.next,

                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              style: TextStyle(
                                  color: const Color(0xFF111A24),
                                  fontSize: 14.fss,
                                  fontFamily: 'Gordita'),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: ScreenConstant.defaultHeightTwenty,horizontal: 5.ss),

                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Security Deposit Amount",
                                hintStyle: CustomTextStyles.medium146A6A6ATextStyleTablet.copyWith(height:2.0),
                                errorStyle: TextStyle(
                                    color: const Color(0xFFE8503A),
                                    fontSize: 12.fss,
                                    fontFamily: 'Gordita'),

                                focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
                                      width: 1,
                                      style: BorderStyle.solid),
                                ),
                                disabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
                                      width: 1,
                                      style: BorderStyle.solid),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
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
                          CustomPaint(
                            painter: ArcPainter(
                              start: Offset(ScreenConstant.defaultHeightTen, ScreenConstant.defaultHeightForty), // Adjust these values based on the positions of the text fields
                              end: Offset(ScreenConstant.defaultHeightForty, ScreenConstant.defaultHeightOneForty),
                            ),
                          ),
                          SizedBox(height: ScreenConstant.defaultHeightTwenty,),
                          SizedBox(
                            height: ScreenConstant.defaultHeightSeventySix,
                            child: TextFormField(
                              controller: TextEditingController(),
                              keyboardType: TextInputType.emailAddress,
                              autofocus: false,
                              maxLines: 1,
                              cursorColor: const Color(0xFFC4C4C4),
                              textInputAction: TextInputAction.next,

                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              style: TextStyle(
                                  color: const Color(0xFF111A24),
                                  fontSize: 14.fss,
                                  fontFamily: 'Gordita'),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: ScreenConstant.defaultHeightTwenty,horizontal: 5.ss),

                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Number of Cheques",
                                hintStyle: CustomTextStyles.medium146A6A6ATextStyleTablet.copyWith(height:2.0),
                                errorStyle: TextStyle(
                                    color: const Color(0xFFE8503A),
                                    fontSize: 12.fss,
                                    fontFamily: 'Gordita'),

                                focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
                                      width: 1,
                                      style: BorderStyle.solid),
                                ),
                                disabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
                                      width: 1,
                                      style: BorderStyle.solid),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
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
                          CustomPaint(
                            painter: ArcPainter(
                              start: Offset(ScreenConstant.defaultHeightForty, ScreenConstant.defaultHeightTwentyThree+15), // Adjust these values based on the positions of the text fields
                              end: Offset(ScreenConstant.defaultHeightSixty, ScreenConstant.defaultHeightOneForty),
                            ),
                          ),
                          SizedBox(height: ScreenConstant.defaultHeightTwenty,),
                          SizedBox(
                            height: ScreenConstant.defaultHeightSeventySix,
                            child: TextFormField(
                              onTap: () async {
                                DateTime? pickedDate = await showDatePicker(
                                    context: context,
                                    firstDate: DateTime(2010),
                                    //DateTime.now() - not to allow to choose before today.
                                    lastDate: DateTime(2024));

                                if (pickedDate != null) {
                                  debugPrint(pickedDate.toString()); //pickedDate output format => 2021-03-10 00:00:00.000
                                  String formattedDate =
                                  DateFormat('yyyy-MM-dd').format(pickedDate);
                                  debugPrint(formattedDate);

                                  _authenticationController.dateController.text = formattedDate;
                                  //formatted date output using intl package =>  2021-03-16
                                  //you can implement different kind of Date Format here according to your requirement
                                } else {
                                  debugPrint("Date is not selected");
                                }
                              },
                              controller: _authenticationController.dateController,
                              readOnly: true,
                              keyboardType: TextInputType.phone,
                              autofocus: false,
                              maxLines: 1,
                              cursorColor: const Color(0xFFC4C4C4),
                              textInputAction: TextInputAction.next,
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              style: TextStyle(
                                  color: const Color(0xFF111A24),
                                  fontSize: 14.fss,
                                  fontFamily: 'Gordita'),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: ScreenConstant.defaultHeightTwenty,horizontal: 5.ss),

                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Contract Start",
                                hintStyle: CustomTextStyles.medium146A6A6ATextStyleTablet.copyWith(height:2.0),
                                errorStyle: TextStyle(
                                    color: const Color(0xFFE8503A),
                                    fontSize: 12.fss,
                                    fontFamily: 'Gordita'),
                                suffixIcon: Padding(
                                  padding: getTabletPadding(right: 10,top: 20,bottom: 20),
                                  child:  Image.asset("asset/icons/tablet/download_9.png",height: 28),
                                ),

                                focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
                                      width: 1,
                                      style: BorderStyle.solid),
                                ),
                                disabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
                                      width: 1,
                                      style: BorderStyle.solid),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
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
                            ).marginOnly(left: 15.ss),
                          ),
                          CustomPaint(
                            painter: ArcPainter(
                              start: Offset(ScreenConstant.defaultHeightForty, ScreenConstant.defaultHeightTwenty), // Adjust these values based on the positions of the text fields
                              end: Offset(ScreenConstant.defaultHeightSixty, ScreenConstant.defaultHeightOneForty),
                            ),
                          ),
                          SizedBox(height: ScreenConstant.defaultHeightTwenty,),
                          SizedBox(
                            height: ScreenConstant.defaultHeightSeventySix,
                            child: TextFormField(
                              controller: TextEditingController(),
                              keyboardType: TextInputType.phone,
                              autofocus: false,
                              maxLines: 1,
                              cursorColor: const Color(0xFFC4C4C4),
                              textInputAction: TextInputAction.next,
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              style: TextStyle(
                                  color: const Color(0xFF111A24),
                                  fontSize: 14.fss,
                                  fontFamily: 'Gordita'),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: ScreenConstant.defaultHeightTwenty,horizontal: 5.ss),

                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Amount",
                                hintStyle: CustomTextStyles.medium146A6A6ATextStyleTablet.copyWith(height:2.0),
                                errorStyle: TextStyle(
                                    color: const Color(0xFFE8503A),
                                    fontSize: 12.fss,
                                    fontFamily: 'Gordita'),
                                focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
                                      width: 1,
                                      style: BorderStyle.solid),
                                ),
                                disabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
                                      width: 1,
                                      style: BorderStyle.solid),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
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
                            ).marginOnly(left: 15.ss),
                          ),
                          CustomPaint(
                            painter: ArcPainter(
                              start: Offset(ScreenConstant.defaultHeightForty, ScreenConstant.defaultHeightTwenty), // Adjust these values based on the positions of the text fields
                              end: Offset(ScreenConstant.defaultHeightSixty, ScreenConstant.defaultHeightOneForty),
                            ),
                          ),
                          SizedBox(height: ScreenConstant.defaultHeightTwenty,),
                          SizedBox(
                            height: ScreenConstant.defaultHeightSeventySix,
                            child: TextFormField(
                              controller: TextEditingController(),
                              keyboardType: TextInputType.phone,
                              autofocus: false,
                              maxLines: 1,
                              cursorColor: const Color(0xFFC4C4C4),
                              textInputAction: TextInputAction.next,
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              style: TextStyle(
                                  color: const Color(0xFF111A24),
                                  fontSize: 14.fss,
                                  fontFamily: 'Gordita'),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: ScreenConstant.defaultHeightTwenty,horizontal: 5.ss),

                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Cheque payment details",
                                hintStyle: CustomTextStyles.medium146A6A6ATextStyleTablet.copyWith(height:2.0),
                                errorStyle: TextStyle(
                                    color: const Color(0xFFE8503A),
                                    fontSize: 12.fss,
                                    fontFamily: 'Gordita'),
                                focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
                                      width: 1,
                                      style: BorderStyle.solid),
                                ),
                                disabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
                                      width: 1,
                                      style: BorderStyle.solid),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
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
                            ).marginOnly(left: 15.ss),
                          ),
                          SizedBox(height: getWebSize(20)),
                          SizedBox(
                            height: ScreenConstant.defaultHeightSeventySix,
                            child: TextFormField(
                              controller: TextEditingController(),
                              keyboardType: TextInputType.phone,
                              autofocus: false,
                              maxLines: 1,
                              cursorColor: const Color(0xFFC4C4C4),
                              textInputAction: TextInputAction.next,
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              style: TextStyle(
                                  color: const Color(0xFF111A24),
                                  fontSize: 14.fss,
                                  fontFamily: 'Gordita'),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: ScreenConstant.defaultHeightTwenty,horizontal: 5.ss),

                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Upload an image of the cheque",
                                hintStyle: CustomTextStyles.medium146A6A6ATextStyleTablet.copyWith(height:2.0),
                                errorStyle: TextStyle(
                                    color: const Color(0xFFE8503A),
                                    fontSize: 12.fss,
                                    fontFamily: 'Gordita'),
                                focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
                                      width: 1,
                                      style: BorderStyle.solid),
                                ),
                                disabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
                                      width: 1,
                                      style: BorderStyle.solid),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
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
                            ).marginOnly(left: 15.ss),
                          ),
                          SizedBox(height: getWebSize(40)),
                          Padding(
                            padding:  EdgeInsets.only(left: ScreenConstant.defaultWidthTen),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 5,
                                  child:  Obx(
                                        () => GestureDetector(
                                      onTap: () {
                                        _homeController.favotitesSelected.value = true;
                                        _homeController.savedSelected.value = false;
                                      },
                                      child: ToggleButtonWidgetTablet(
                                        isSelected: _homeController.favotitesSelected.value,
                                        text: 'Paid',
                                      ),
                                    ),
                                  ),),
                                Expanded(flex:5,child:   Obx(
                                      () => GestureDetector(
                                    onTap: () {
                                      _homeController.favotitesSelected.value = false;
                                      _homeController.savedSelected.value = true;
                                    },
                                    child: ToggleButtonWidgetTablet(
                                      isSelected: _homeController.savedSelected.value,
                                      text: 'Not Paid',
                                    ),
                                  ),
                                ),)


                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
                _browseImage(context),
                Container(
                  height: 15.ss,
                ),
                Obx(()=> _authenticationController
                    .temporaryDocImagePath.value.isEmpty? Padding(
                  padding:
                  getTabletPadding(left: 40, right: 40),
                  child: Center(
                    child: Text(
                      'Upload up to 3 Files. Max File Size: 10MB. Support Multiple File Formats',
                      style: CustomTextStyles
                          .light14WithFssTextStyleTablet,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ):const Offstage(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _browseImage(context) {
    return Obx(()=>_authenticationController
        .temporaryDocImagePath.value.isEmpty
        ?InkWell(
        onTap: () async {
          await modalBottomSheetMenu(
              context,
                  (XFile? selectedImage) {
                _authenticationController
                    .temporaryDocImageName
                    .value =
                    selectedImage!.name;
                _authenticationController
                    .temporaryDocImagePath
                    .value =
                    selectedImage.path;
                debugPrint(
                    "_authenticationController.temporaryVehicleImageName.value:${_authenticationController.temporaryVehicleImagePath.value}");
              });
        },
        child: Container(
          width: Get.width,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8.ss)),
          child: DottedBorder(
            borderType: BorderType.RRect,
            radius: const Radius.circular(12),
            padding: const EdgeInsets.all(2),
            dashPattern: const [7, 7, 7, 7],
            color: const Color(0xFF000000),
            strokeWidth: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.ss, vertical: 50.ss),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FittedBox(
                    child: Text(
                        'Drag and drop files here or',
                        style: CustomTextStyles.medium166A6A6ATextStyleTablet
                    ),
                  ),
                  Container(width: ScreenConstant.defaultWidthTen-5,),
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(5),
                    padding:
                    EdgeInsets.symmetric(horizontal: 10.ss, vertical: 3.ss),
                    dashPattern: const [6, 6, 6, 6],
                    color: Colors.green,
                    strokeWidth: 1.5,
                    child: Center(
                      child: Text(
                          'Browse',
                          style: CustomTextStyles.medium166A6A6ATextStyleTablet
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),
        ),
      ):ClipRRect(
      borderRadius:
      BorderRadius.circular(20),
      child: SizedBox(
        height: ScreenConstant
            .defaultHeightTwoHundred,
        width: ScreenConstant
            .defaultWidthNinetyEight,
        child: Image.file(
          fit: BoxFit.fitWidth,
          File(_authenticationController
              .temporaryDocImagePath
              .value),
        ),
      ),
    ),
    );
  }

  Widget _uploadImageView(context) {
    return Obx(()=>_authenticationController
        .temporaryVehicleImagePath
        .value
        .isEmpty?InkWell(
        onTap: ()async{
          await modalBottomSheetMenu(context,(XFile? selectedImage){
            _authenticationController.temporaryVehicleImageName.value = selectedImage!.name;
            _authenticationController.temporaryVehicleImagePath.value = selectedImage.path;
            debugPrint("_authenticationController.temporaryVehicleImageName.value:${_authenticationController.temporaryVehicleImagePath.value}");
          });

        },
        child: Container(
          height: ScreenConstant.defaultHeightSeventySix,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.ss),
            color: Colors.white,
          ),
          child: Center(
            child: DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(12),
              padding: const EdgeInsets.all(2),
              dashPattern: const [7, 7, 7, 7],
              color: const Color(0xFF000000),
              strokeWidth: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8.ss)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0.ss, vertical: 8.ss),
                  child: Row(
                    children: [
                      Text(
                        'Upload Image',
                        style: CustomTextStyles.medium146A6A6ATextStyleTablet,
                      ),
                      const Spacer(),
                      Image.asset(
                        "asset/icons/tablet/download_8.png",
                        height: 24,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ):ClipRRect(
      borderRadius:
      BorderRadius.circular(20),
      child: SizedBox(
        height: ScreenConstant
            .defaultHeightTwoHundred,
        width: ScreenConstant
            .defaultWidthNinetyEight-20,
        child: Image.file(
          fit: BoxFit.fitWidth,
          File(_authenticationController
              .temporaryVehicleImagePath
              .value),
        ),
      ),
    ),
    );
  }

  Widget _propertyInfoTextView(
      {required String title,
      required String subTitle,
        TextStyle? textStyle}) {
    return Padding(
      padding: getTabletPadding(right: 0),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Text(
              title,
              style: CustomTextStyles.light20000000TextStyleTablet.copyWith(fontSize : 14.fss),
            ),
          ),
          Expanded(
            flex: 0,
            child: Text(
              ':',
              style: CustomTextStyles.light20000000TextStyleTablet,
            ),
          ),
          SizedBox(
            width: getWebSize(100),
          ),
          Expanded(
            flex: 4,
            child: Text(
              subTitle,
              maxLines: 1,
                style: textStyle,
            ),
          )
        ],
      ),
    );
  }

}
class ArcPainter extends CustomPainter {
  final Offset start;
  final Offset end;

  ArcPainter({required this.start, required this.end});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF6A6A6A).withOpacity(0.23)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final path = Path();
    path.moveTo(start.dx, start.dy);

    final controlPoint1 = Offset((start.dx - end.dx) / 0.6, start.dy);
    final controlPoint2 = Offset(start.dx , end.dy);
    path.cubicTo(
      controlPoint1.dx-10.ss, controlPoint2.dy-20.ss,
      controlPoint2.dx-0.ss, controlPoint2.dy-0.ss,
      end.dx.ss, end.dy+5.ss,
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}