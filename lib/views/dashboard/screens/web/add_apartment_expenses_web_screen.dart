import 'dart:io';

import 'package:camera/camera.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:sizing/sizing.dart';

import '../../../../device_manger/screen_constants.dart';
import '../../../../utils/theme/custom_text_style.dart';
import '../../../../utils/utils.dart';
import '../../../../utils/widows_size_utilis.dart';
import '../../../authentication/controller/authentication_controller.dart';
class AddApartmentExpensesWebScreen extends StatelessWidget {
  AddApartmentExpensesWebScreen({Key? key}) : super(key: key);
  AuthenticationController _authenticationController =
  Get.put(AuthenticationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:       AppBar(
        scrolledUnderElevation: 0.0,
        title: Text(
          "Add Apartment Expenses",
          style: CustomTextStyles.bold32Tablet,
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor:Color(0xFF1E1E1E).withOpacity(0.1),
        leadingWidth: 200,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(children: [
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
      ),
      body: Container(
        color: Color(0xFF1E1E1E).withOpacity(0.1),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80.0),
            child: ListView(
              children: [

                Container(
                  height: getWebSize(50),
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          child: Container(
                            child: Image.asset(
                              "asset/images/tablet/Image.jpg",
                              fit: BoxFit.fill,
                              width: MediaQuery.of(context).size.width,
                              height: ScreenConstant.screenHeightOneSeventh,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        Container(
                          height: getWebSize(40),
                        ),
                        Padding(
                          padding: getWebPadding(left: 40),
                          child: Text(
                            "Project Name :",
                            style: CustomTextStyles.medium18TextStyleTablet,
                          ),
                        ),
                        Padding(
                          padding: getWebPadding(left: 40),
                          child: Text(
                            "Excepteur sint occaecat cupidatat non proident"
                                .toUpperCase(),
                            style: CustomTextStyles.bold22TextStyleTablet,
                          ),
                        ),
                        Container(
                          height: getWebSize(30),
                        ),
                        Padding(
                          padding: getWebPadding(left: 40),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "asset/images/tablet/home_new.svg",
                                fit: BoxFit.fill,
                                height: getWebSize(35),
                                width: getWebSize(35),
                              ),
                              Container(
                                width: getWebHorizontalSize(15),
                              ),
                              Text(
                                "Property no: ",
                                style: CustomTextStyles.light18TextStyleTablet,
                              ),
                              Text(
                                "1234e25",
                                style: CustomTextStyles
                                    .medium18000000TextStyleTablet,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getWebPadding(all: 40),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Expense Type",
                                      style: CustomTextStyles
                                          .medium18TextStyleTablet,
                                    ),
                                    Container(
                                      height: getWebSize(20),
                                    ),
                                    DropdownButtonFormField(
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        contentPadding: getWebPadding(all: 20),
                                        focusedBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Color(0xFFC4C4C4),
                                              width: 1,
                                              style: BorderStyle.solid),
                                        ),
                                        disabledBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Color(0xFFC4C4C4),
                                              width: 1,
                                              style: BorderStyle.solid),
                                        ),
                                        enabledBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Color(0xFFC4C4C4),
                                              width: 1,
                                              style: BorderStyle.solid),
                                        ),
                                        errorBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Color(0xFFE8503A),
                                              width: 1,
                                              style: BorderStyle.solid),
                                        ),
                                        focusedErrorBorder:
                                        const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Color(0xFFE8503A),
                                              width: 1,
                                              style: BorderStyle.solid),
                                        ),
                                      ),
                                      hint: Text(
                                        "Select the type of expenses",
                                        style: CustomTextStyles
                                            .regular15TextStyleTablet,
                                      ),
                                      icon: Image.asset(
                                        "asset/icons/tablet/download_10.png",
                                      ),
                                      iconSize: getWebSize(24),
                                      isExpanded: true,
                                      style: CustomTextStyles
                                          .regular15TextStyleTablet,
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
                                  ],
                                ),
                              ),
                              Container(
                                width: getWebHorizontalSize(50),
                              ),
                              Expanded(
                                flex: 5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Obx(
                                          () => Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Photo Upload",
                                            style: CustomTextStyles
                                                .medium18TextStyleTablet,
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
                                                  vertical: 10.h),
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
                                    Container(
                                      height: getWebSize(20),
                                    ),
                                    Obx(
                                          () => _authenticationController
                                          .temporaryVehicleImagePath
                                          .value
                                          .isEmpty
                                          ? InkWell(
                                        onTap: () async {
                                          await modalBottomSheetMenu(
                                              context,
                                                  (XFile? selectedImage) {
                                                _authenticationController
                                                    .temporaryVehicleImageName
                                                    .value = selectedImage!.name;
                                                _authenticationController
                                                    .temporaryVehicleImagePath
                                                    .value = selectedImage!.path;
                                                print(
                                                    "_authenticationController.temporaryVehicleImageName.value:${_authenticationController.temporaryVehicleImagePath.value}");
                                              });
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(8.ss),
                                            color: Colors.white,
                                          ),
                                          child: DottedBorder(
                                            borderType: BorderType.RRect,
                                            radius: Radius.circular(12),
                                            dashPattern: [7, 7, 7, 7],
                                            color: Color(0xFF000000),
                                            strokeWidth: 1,
                                            child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.all(
                                                  Radius.circular(
                                                      8.ss)),
                                              child: Padding(
                                                padding: getWebPadding(
                                                    left: 10,
                                                    right: 5,
                                                    top: 15,
                                                    bottom: 15),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      flex: 9,
                                                      child: Text(
                                                        'Upload Image',
                                                        style: CustomTextStyles
                                                            .medium16TextStyleTablet,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 1,
                                                      child: Image.asset(
                                                        "asset/icons/tablet/download_8.png",
                                                        height: ScreenConstant
                                                            .defaultHeightTwentyThree,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                          : ClipRRect(
                                        borderRadius:
                                        BorderRadius.circular(20),
                                        child: Container(
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
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                          getWebPadding(left: 40, bottom: 40, right: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: getWebSize(20),
                              ),
                              Text(
                                "Amount and date",
                                style: CustomTextStyles
                                    .medium18TextStyleTablet,
                              ),
                              Container(
                                height: 10.ss,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Expense amount",
                                  hintStyle: CustomTextStyles
                                      .regular15TextStyleTablet,
                                  suffixIcon: Padding(
                                    padding: getWebPadding(
                                        right: 10, top: 15, bottom: 15),
                                    child: Image.asset(
                                      "asset/icons/tablet/download_9.png",
                                      height: ScreenConstant
                                          .defaultHeightTwentyThree,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  contentPadding: getWebPadding(all: 20),
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
                                  errorBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10)),
                                    borderSide: BorderSide(
                                        color: Color(0xFFE8503A),
                                        width: 1,
                                        style: BorderStyle.solid),
                                  ),
                                  focusedErrorBorder:
                                  const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10)),
                                    borderSide: BorderSide(
                                        color: Color(0xFFE8503A),
                                        width: 1,
                                        style: BorderStyle.solid),
                                  ),
                                ),
                              ),
                              Container(
                                height: getWebSize(30),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: DropdownButtonFormField(
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        contentPadding:
                                        getWebPadding(all: 18),
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
                                        errorBorder:
                                        const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Color(0xFFE8503A),
                                              width: 1,
                                              style: BorderStyle.solid),
                                        ),
                                        focusedErrorBorder:
                                        const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Color(0xFFE8503A),
                                              width: 1,
                                              style: BorderStyle.solid),
                                        ),
                                      ),
                                      hint: Text(
                                        "Currency",
                                        style: CustomTextStyles
                                            .regular15TextStyleTablet,
                                      ),
                                      icon: Image.asset(
                                        "asset/icons/tablet/download_10.png",
                                      ),
                                      isExpanded: true,
                                      iconSize: getWebSize(24),
                                      style: CustomTextStyles
                                          .regular15TextStyleTablet,
                                      items: ["Rupees", "Dollar"].map(
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
                                  Container(
                                    width: getWebHorizontalSize(40),
                                  ),
                                  Expanded(
                                    flex: 6,
                                    child: TextFormField(
                                      controller: _authenticationController
                                          .dateController,
                                      readOnly: true,
                                      decoration: InputDecoration(
                                        suffixIcon: Padding(
                                          padding: getWebPadding(
                                              right: 10,
                                              top: 15,
                                              bottom: 15),
                                          child: Image.asset(
                                            "asset/icons/tablet/download_9.png",
                                            height: ScreenConstant
                                                .defaultHeightTwentyThree,
                                          ),
                                        ),
                                        hintText: "Select a date",
                                        hintStyle: CustomTextStyles
                                            .regular15TextStyleTablet,
                                        filled: true,
                                        fillColor: Colors.white,
                                        contentPadding:
                                        getWebPadding(all: 18),
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
                                        errorBorder:
                                        const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Color(0xFFE8503A),
                                              width: 1,
                                              style: BorderStyle.solid),
                                        ),
                                        focusedErrorBorder:
                                        const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Color(0xFFE8503A),
                                              width: 1,
                                              style: BorderStyle.solid),
                                        ),
                                      ),
                                      style: CustomTextStyles
                                          .regular15TextStyleTablet,
                                      onTap: () async {
                                        DateTime? pickedDate =
                                        await showDatePicker(
                                            context: context,
                                            firstDate: DateTime(2010),
                                            //DateTime.now() - not to allow to choose before today.
                                            lastDate: DateTime(2024));

                                        if (pickedDate != null) {
                                          print(
                                              pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                          String formattedDate =
                                          DateFormat('yyyy-MM-dd')
                                              .format(pickedDate);
                                          print(formattedDate);

                                          _authenticationController
                                              .dateController
                                              .text = formattedDate;
                                          //formatted date output using intl package =>  2021-03-16
                                          //you can implement different kind of Date Format here according to your requirement
                                        } else {
                                          print("Date is not selected");
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: getWebHorizontalSize(50),
                        ),
                        Padding(padding: getWebPadding(left: 40),child: Text(
                          "Document Upload",
                          style: CustomTextStyles
                              .medium18TextStyleTablet,
                        ),),
                        Padding(
                          padding: getWebPadding(left: 40,right: 40,bottom: 80),
                          child: Obx(
                                () => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [

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
                                    Container(
                                      height: 10.ss,
                                    ),
                                    _authenticationController
                                        .temporaryDocImagePath.value.isEmpty
                                        ? InkWell(
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
                                      child: DottedBorder(
                                        borderType: BorderType.RRect,
                                        radius: Radius.circular(12),
                                        padding: EdgeInsets.all(2),
                                        dashPattern: [7, 7, 7, 7],
                                        color: Color(0xFF000000),
                                        strokeWidth: 1,
                                        child: Padding(
                                          padding: getWebPadding(
                                              left: 65,
                                              right: 70,
                                              top: 70,
                                              bottom: 70),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Drag and drop files here or',
                                                style: CustomTextStyles
                                                    .medium16TextStyleTablet,
                                              ),
                                              Container(width: 5.ss,),
                                              DottedBorder(
                                                borderType:
                                                BorderType
                                                    .RRect,
                                                radius:
                                                Radius.circular(
                                                    5),
                                                padding:
                                                getWebPadding(
                                                    left: 15,
                                                    right: 15,
                                                    top: 5,
                                                    bottom: 5),
                                                dashPattern: [
                                                  6,
                                                  6,
                                                  6,
                                                  6
                                                ],
                                                color: Colors.green,
                                                strokeWidth: 1.5,
                                                child: Text(
                                                  'Browse',
                                                  style: CustomTextStyles
                                                      .medium16TextStyleTablet,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                        : ClipRRect(
                                      borderRadius:
                                      BorderRadius.circular(20),
                                      child: Container(
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
                                    Container(
                                      height: 15.ss,
                                    ),
                                    Obx(()=> _authenticationController
                                        .temporaryDocImagePath.value.isEmpty? Padding(
                                      padding:
                                      getWebPadding(left: 80, right: 80),
                                      child: Center(
                                        child: Text(
                                          'Upload up to 3 Files. Max File Size: 10MB. Support Multiple File Formats',
                                          style: CustomTextStyles
                                              .light14TextStyleTablet,
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
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
