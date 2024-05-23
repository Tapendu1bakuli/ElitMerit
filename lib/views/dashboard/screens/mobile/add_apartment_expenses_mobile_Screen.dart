import 'dart:io';

import 'package:camera/camera.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/phone_size_utils.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:sizing/sizing.dart';

import '../../../../device_manger/screen_constants.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/utils.dart';
import '../../../authentication/controller/authentication_controller.dart';
class AddExpensesScreenMobile extends StatelessWidget {
   AddExpensesScreenMobile({Key? key}) : super(key: key);
  AuthenticationController _authenticationController = Get.put(AuthenticationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1E1E1E).withOpacity(0.1),
        leadingWidth: 100.ss,
        leading: Row(
          children: [
            Container(width: getHorizontalSize(20)),
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
              width: getHorizontalSize(5),
            ),
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Text(
                "Back",
                style: CustomTextStyles.regular16232323TextStyleMobile,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Color(0xFF1E1E1E).withOpacity(0.1)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.ss),
          child: ListView(
            children: [
              Text("Add Apartment Expences",style: CustomTextStyles.bold24TextStyleMobile),
              Container(
                height: getSize(20),
              ),
              Image.asset(
                "asset/icons/tablet/first_property_image.png",
                fit: BoxFit.fitWidth,
              ),
              Container(
                height: getSize(20),
              ),
              Text(
                "Project Name :",
                style: CustomTextStyles.medium18Mobile,
              ),
              Text(
                "Excepteur sint occae".toUpperCase(),
                style: CustomTextStyles.bold22Mobile,
              ),
              Container(
                height: getSize(15),
              ),
              Row(children: [
                Image.asset("asset/icons/tablet/download_7.png",height: getSize(27),width: getHorizontalSize(27)),
                Container(
                  width: getHorizontalSize(10),
                ),
                Text(
                  "Property no: ",
                  style: CustomTextStyles.light14Mobile,
                ),
                Text(
                  "12345e25",
                  style: CustomTextStyles.medium14Mobile,
                ),
              ],),
              Container(height: 10.ss,),
              Text(
                "Expense Type",
                style: CustomTextStyles.medium18Mobile,
              ),
              Container(height: 10.ss,),
              DropdownButtonFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.only(right: 15.ss,bottom: 5.ss,left: 15.ss),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        color: Color(0xFFC4C4C4),
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        color: Color(0xFFC4C4C4),
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        color: Color(0xFFC4C4C4),
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
                hint: Text("Select the type of expenses", style: CustomTextStyles.regular15Mobile,),
                icon: Image.asset("asset/icons/tablet/download_10.png",),
                isExpanded: true,
                iconSize: getSize(24),
                style: CustomTextStyles.regular15Mobile,
                items: ["Data1","Data2"].map(
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
              Container(height: 18.ss,),
              Text(
                "Amount and Date",
                style:CustomTextStyles.medium18Mobile,
              ),
              Container(height: 10.ss,),
              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: getPadding(top: 14,bottom: 14,right: 8),
                    child: Image.asset("asset/icons/tablet/download_9.png",height: getSize(24),width: getSize(24),),
                  ),
                  hintText: "Expense amount",
                  hintStyle: CustomTextStyles.regular15Mobile,
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.only(right: 15.ss,bottom: 5.ss,left: 15.ss),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        color: Color(0xFFC4C4C4),
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        color: Color(0xFFC4C4C4),
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                        color: Color(0xFFC4C4C4),
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
                onChanged: (val) {
                  // _homeController.selectedLocation = val;
                },
              ),

              Container(height: 10.ss,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(flex:4,child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(vertical: 10.ss,horizontal: 15.ss),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            color: Color(0xFFC4C4C4),
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            color: Color(0xFFC4C4C4),
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            color: Color(0xFFC4C4C4),
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
                    hint:  Text(
                      'Currency',
                      style: CustomTextStyles.regular15Mobile,
                    ),
                    icon: Image.asset("asset/icons/tablet/download_10.png",),
                    isExpanded: true,
                    iconSize: getSize(24),
                    style: CustomTextStyles.regular15Mobile,
                    items: ["Rupees","Dollar"].map(
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
                  )),
                  Container(width: getHorizontalSize(15),),
                  Expanded(flex:6,child:  TextFormField(
                    controller: _authenticationController.dateController,
                    readOnly: true,style: CustomTextStyles.regular15Mobile,
                    decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: getPadding(top: 14,bottom: 14,right: 8),
                        child: Image.asset("asset/icons/tablet/download_9.png",height: getSize(24),width: getSize(24),),
                      ),
                      hintText:
                      'Select a date',
                      hintStyle: CustomTextStyles.regular15Mobile,
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(vertical: 9.ss,horizontal: 15.ss),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            color: Color(0xFFC4C4C4),
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            color: Color(0xFFC4C4C4),
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            color: Color(0xFFC4C4C4),
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
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          firstDate: DateTime(2010),
                          //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime(2024));

                      if (pickedDate != null) {
                        print(
                            pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                        String formattedDate =
                        DateFormat('yyyy-MM-dd').format(pickedDate);
                        print(formattedDate);

                        _authenticationController.dateController.text = formattedDate;
                        //formatted date output using intl package =>  2021-03-16
                        //you can implement different kind of Date Format here according to your requirement
                      } else {
                        print("Date is not selected");
                      }
                    },
                  ))
                ],
              ),
              Container(height: 25.ss,),
              Obx(()=> Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Photo Upload",
                      style:CustomTextStyles.medium18Mobile,
                    ),
                    _authenticationController
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
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.v,
                            vertical: 6.h),
                        decoration: BoxDecoration(
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
              Container(height: 10.ss,),
              Obx(()=> _authenticationController
                    .temporaryVehicleImagePath
                    .value
                    .isEmpty? InkWell(
                  onTap: ()async{
                    await modalBottomSheetMenu(context,(XFile? selectedImage){
                      _authenticationController.temporaryVehicleImageName.value = selectedImage!.name;
                      _authenticationController.temporaryVehicleImagePath.value = selectedImage!.path;
                      print("_authenticationController.temporaryVehicleImageName.value:${_authenticationController.temporaryVehicleImagePath.value}");
                    });

                  },
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.ss),color: Colors.white,),
                    child: DottedBorder(
                      borderType: BorderType.RRect,
                      radius: Radius.circular(12),
                      padding: EdgeInsets.all(2),
                      dashPattern: [7, 7, 7, 7],
                      color: Color(0xFF000000),
                      strokeWidth: 1,
                      child:  ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(8.ss)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0.ss,vertical: 8.ss),
                          child: Row(children: [
                            Text(
                              'Upload Image',
                              style: CustomTextStyles.medium166a6a6aMobile,
                            ),
                            Spacer(),
                            Image.asset("asset/icons/tablet/download_8.png",height: getSize(24),width: getSize(24),),
                          ],),
                        ),
                      ),
                    ),
                  ),
                ):Center(
                  child: ClipRRect(
                    borderRadius:
                    BorderRadius.circular(20),
                    child: Container(
                      height: ScreenConstant
                          .defaultHeightOneForty,
                      width: ScreenConstant
                          .defaultWidthOneSeventy,
                      child: Image.file(
                        fit: BoxFit.fitWidth,
                        File(_authenticationController
                            .temporaryVehicleImagePath
                            .value),
                      ),
                    ),
                  ),
                ),
              ),
              Container(height: 25.ss,),
              Obx(()=> Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Document Upload",
                      style:CustomTextStyles.medium18Mobile,
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
                            vertical: 6.h),
                        decoration: BoxDecoration(
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
              Container(height: 10.ss,),
              Obx(()=> _authenticationController
                    .temporaryDocImagePath
                    .value.isEmpty?InkWell(
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
                              selectedImage!.path;
                          print(
                              "_authenticationController.temporaryVehicleImageName.value:${_authenticationController.temporaryVehicleImagePath.value}");
                        });
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(8.ss)),
                    child: DottedBorder(
                      borderType: BorderType.RRect,
                      radius: Radius.circular(12),
                      padding: EdgeInsets.all(2),
                      dashPattern: [7, 7, 7, 7],
                      color: Color(0xFF000000),
                      strokeWidth: 1,
                      child:  Padding(
                        padding:  getPadding(left: 30,right: 40,top: 50,bottom: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(flex:1,child: Text(
                              'Drag and drop files here or', style: CustomTextStyles.medium166a6a6aMobile,),),
                            Container(width: getHorizontalSize(10)),
                            Expanded(flex:0,child: DottedBorder(
                              borderType: BorderType.RRect,
                              radius: Radius.circular(5),
                              padding: EdgeInsets.symmetric(horizontal: 10.ss,vertical: 3.ss),
                              dashPattern: [6, 6, 6, 6],
                              color: Colors.green,
                              strokeWidth: 1.5,
                              child:  Center(
                                child: Text(
                                  'Browse',
                                  style: CustomTextStyles.medium166a6a6aMobile,
                                ),
                              ),
                            ),),

                          ],),
                      ),
                    ),
                  ),
                ):Center(
                  child: ClipRRect(
                    borderRadius:
                    BorderRadius.circular(20),
                    child: Container(
                      height: ScreenConstant
                          .defaultHeightOneForty,
                      width: ScreenConstant
                          .defaultWidthOneSeventy,
                      child: Image.file(
                        fit: BoxFit.fitWidth,
                        File(_authenticationController
                            .temporaryDocImagePath
                            .value),
                      ),
                    ),
                  ),
                ),
              ),
              Container(height: 15.ss,),
              Obx(()=> _authenticationController
                    .temporaryDocImagePath
                    .value.isEmpty? Padding(
                  padding: getPadding(left: 40,right: 40),
                  child: SizedBox(

                    child: Text(
                      'Upload up to 3 Files. Max File Size: 10MB. Support Multiple File Formats',
                      style: CustomTextStyles.light146a6a6aMobile,textAlign: TextAlign.center,),
                  ),
                ):const Offstage(),
              ),
              Container(height: 50.ss,),
            ],
          ),
        ),
      ),
    );
  }
}
