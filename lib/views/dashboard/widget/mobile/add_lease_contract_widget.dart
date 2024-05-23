import 'dart:io';
import 'dart:ui' as ui;
import 'package:camera/camera.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:main/device_manger/screen_constants.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:main/utils/widgets_utils/mobile/text_input_field.dart';
import 'package:main/views/dashboard/widget/mobile/common_card_mobile.dart';
import 'package:main/views/dashboard/widget/mobile/toggle_button_widget_mobile.dart';
import 'package:sizing/sizing_extension.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../../utils/phone_size_utils.dart';
import '../../../../utils/utils.dart';
import '../../../authentication/controller/authentication_controller.dart';
import 'custom_painter_mobile.dart';

class AddLeaseContractWidget extends StatelessWidget {
  AddLeaseContractWidget({super.key});

  final AuthenticationController _authenticationController =
      Get.put(AuthenticationController());

  @override
  Widget build(BuildContext context) {
    return _bodyView(context);
  }

  Widget _bodyView(context) {
    return CommonCardMobile(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonCardMobile(
            verticalPadding: 10,
            color: AppColors.primaryColor,
            child: Text(
              'Property Information',
              style: CustomTextStyles.Medium16Mobile,
            ),
          ),
          SizedBox(height: 20.ss),
          _propertyInfoTextView(
              title: 'Project Name', subTitle: 'Excepteur sint occaecat'),
          _propertyInfoTextView(
              title: 'Property Number', subTitle: '1245e25'),
          _propertyInfoTextView(title: 'Room Count', subTitle: '03'),
          _propertyInfoTextView(title: 'Type', subTitle: 'Apartment'),
          _propertyInfoTextView(
              title: 'Condition',
              subTitle: 'Good',
              subTitleColor: AppColors.primaryColor),
          SizedBox(height: ScreenConstant.defaultHeightFifteen),
          Text(
            'Tenant',
            style: CustomTextStyles.Medium18Mobile,
          ),
          SizedBox(height: ScreenConstant.defaultHeightFifteen),
          SizedBox(
            height: ScreenConstant.defaultHeightSixty,
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.only(
                    right: 15.ss, bottom: 15.ss, left: 15.ss, top: 15.ss),
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
              hint: Text(
                "Select the type of expenses",
                style: CustomTextStyles.Medium166A6A6AMobile,
              ),
              icon: Image.asset(
                "asset/icons/tablet/download_10.png",
              ),
              isExpanded: true,
              iconSize: getSize(24),
              style: CustomTextStyles.regular15Mobile,
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
          SizedBox(height: ScreenConstant.defaultHeightTen),
          SizedBox(
              height: ScreenConstant.defaultHeightSixty,
              child: TextInputField(
                hintText: 'Tenant Name',
                suffixIcon: 'asset/icons/tablet/User_alt_light.png',
                hintStyle: CustomTextStyles.Medium166A6A6AMobile,
                suffixIconHeight:
                    ScreenConstant.defaultHeightTwentyThree + 5,
                boxFit: BoxFit.fill,
              )),
          SizedBox(height: ScreenConstant.defaultHeightFifteen),
          SizedBox(
              height: ScreenConstant.defaultHeightSixty,
              child: TextInputField(
                hintText: 'Phone Number',
                suffixIcon: 'asset/icons/tablet/download_11.png',
                hintStyle: CustomTextStyles.Medium166A6A6AMobile,
                suffixIconHeight: ScreenConstant.defaultHeightFifteen,
                boxFit: BoxFit.fill,
              )),
          SizedBox(height: ScreenConstant.defaultHeightFifteen),
          SizedBox(
              height: ScreenConstant.defaultHeightSixty,
              child: Obx(()=>TextFormField(
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
                      fontSize: 14.fss,
                      fontFamily: 'Gordita'),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Email Address",
                    hintStyle: CustomTextStyles.Medium166A6A6AMobile,
                    errorStyle: TextStyle(
                        color: const Color(0xFFE8503A),
                        fontSize: 12.fss,
                        fontFamily: 'Gordita'),
                    suffixIcon: Padding(
                      padding: EdgeInsets.all(10.0.ss),
                      child: Image.asset(
                        "asset/icons/tablet/download_3.png",
                        height: ScreenConstant.defaultHeightTwentyThree,
                      ),
                    ),
                    contentPadding: EdgeInsets.all(ScreenConstant.sizeMedium),
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
              )),
          SizedBox(height: ScreenConstant.defaultHeightTwenty),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(()=> _authenticationController.isEmailError.value?Expanded(
                flex: 5,
                  child: Text(
                    'Please fill out this field',
                    style: CustomTextStyles.light14Fd1600Mobile,
                  ),
                ): Expanded(flex: 5,child: Container(width: ScreenConstant.defaultWidthSixty,)),
              ),
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Text(
                      'New tenant',
                      style: CustomTextStyles.Medium166A6A6AMobile,
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
          SizedBox(height: ScreenConstant.defaultHeightFifteen),
          Text(
            'Contract Date',
            style: CustomTextStyles.Medium18Mobile,
          ),
          SizedBox(height: ScreenConstant.defaultHeightFifteen),
          SizedBox(
              height: ScreenConstant.defaultHeightSixty,
              child: TextInputField(
                onPressed: () async {
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
                controller: _authenticationController.dateController,
                isReadOnly: true,
                hintText: 'Contract Start',
                suffixIcon: 'asset/icons/tablet/download_9.png',
                hintStyle: CustomTextStyles.Medium166A6A6AMobile,
                suffixIconHeight: ScreenConstant.defaultHeightTwentyThree,
              )),
          SizedBox(height: ScreenConstant.defaultHeightFifteen),
          SizedBox(
              height: ScreenConstant.defaultHeightSixty,
              child: TextInputField(
                onPressed: () async {
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

                    _authenticationController.contractEndDateController.text = formattedDate;
                    //formatted date output using intl package =>  2021-03-16
                    //you can implement different kind of Date Format here according to your requirement
                  } else {
                    print("Date is not selected");
                  }
                },
                isReadOnly: true,
                controller: _authenticationController.contractEndDateController,
                hintText: 'End Dates',
                suffixIcon: 'asset/icons/tablet/download_9.png',
                hintStyle: CustomTextStyles.Medium166A6A6AMobile,
                suffixIconHeight: ScreenConstant.defaultHeightTwentyThree,
              )),
          SizedBox(height: ScreenConstant.defaultHeightFifteen + 5),
          Text(
            'Financial Details',
            style: CustomTextStyles.Medium18Mobile,
          ),
          SizedBox(height: ScreenConstant.defaultHeightFifteen),
          SizedBox(
              height: ScreenConstant.defaultHeightSixty,
              child: TextInputField(
                  hintText: 'Contract Amount',
                  isSuffix: false,
                  hintStyle: CustomTextStyles.Medium166A6A6AMobile)),
        CustomPaint(
          painter: CustomRRectPainter(),
        ),
          SizedBox(height: ScreenConstant.defaultHeightFifteen),
          SizedBox(
              height: ScreenConstant.defaultHeightSixty,
              child: TextInputField(
                  hintText: 'Security Deposit Amount',
                  isSuffix: false,
                  hintStyle: CustomTextStyles.Medium166A6A6AMobile)),
          SizedBox(height: ScreenConstant.defaultHeightFifteen),
          SizedBox(
              height: ScreenConstant.defaultHeightSixty,
              child: TextInputField(
                  hintText: 'Number of Cheques',
                  isSuffix: false,
                  hintStyle: CustomTextStyles.Medium166A6A6AMobile)),
          CustomPaint(
            painter: ArcPainter(
              start: Offset(ScreenConstant.defaultHeightTen-10, -ScreenConstant.defaultHeightTwenty), // Adjust these values based on the positions of the text fields
              end: Offset(ScreenConstant.defaultHeightTen, ScreenConstant.defaultHeightFifty+2),
            ),
          ),
          SizedBox(height: ScreenConstant.defaultHeightFifteen),
          SizedBox(
              height: ScreenConstant.defaultHeightSixty,
              child: TextInputField(
                  onPressed: () async {
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

                      _authenticationController.chequeDateController.text = formattedDate;
                      //formatted date output using intl package =>  2021-03-16
                      //you can implement different kind of Date Format here according to your requirement
                    } else {
                      print("Date is not selected");
                    }
                  },
                      hintText: 'Cheque Date',
                  isReadOnly: true,
                  controller: _authenticationController.chequeDateController,
                      suffixIcon: 'asset/icons/tablet/download_9.png',
                      hintStyle: CustomTextStyles.Medium166A6A6AMobile,
                      suffixIconHeight:
                          ScreenConstant.defaultHeightTwentyThree)
                  .marginOnly(
                left: 17.ss,
              )),
          CustomPaint(
            painter: ArcPainter(
              start: Offset(ScreenConstant.defaultHeightFifteen+3, -ScreenConstant.defaultHeightTwenty), // Adjust these values based on the positions of the text fields
              end: Offset(ScreenConstant.defaultHeightTwentyThree, ScreenConstant.defaultHeightFifty),
            ),
          ),
          SizedBox(height: ScreenConstant.defaultHeightFifteen),
          SizedBox(
              height: ScreenConstant.defaultHeightSixty,
              child: TextInputField(
                      hintText: 'Amount',
                      isSuffix: false,
                      hintStyle: CustomTextStyles.Medium166A6A6AMobile)
                  .marginOnly(left: 17.ss)),
          CustomPaint(
            painter: ArcPainter(
              start: Offset(ScreenConstant.defaultHeightFifteen+3, -ScreenConstant.defaultHeightTwentyThree-4), // Adjust these values based on the positions of the text fields
              end: Offset(ScreenConstant.defaultHeightTwentyThree, ScreenConstant.defaultHeightFifty),
            ),
          ),
          SizedBox(height: ScreenConstant.defaultHeightFifteen),
          SizedBox(
              height: ScreenConstant.defaultHeightSixty,
              child: TextInputField(
                      hintText: 'Cheque payment details',
                      isSuffix: false,
                      hintStyle: CustomTextStyles.Medium166A6A6AMobile)
                  .marginOnly(left: 17.ss)),
          SizedBox(height: ScreenConstant.defaultHeightFifteen),
          CustomPaint(
            painter: ArcPainter(
              start: Offset(ScreenConstant.defaultHeightFifteen+3, -ScreenConstant.defaultHeightForty-3), // Adjust these values based on the positions of the text fields
              end: Offset(ScreenConstant.defaultHeightTwentyThree, ScreenConstant.defaultHeightFifty),
            ),
          ),
          SizedBox(
              height: ScreenConstant.defaultHeightSixty,
              child: TextInputField(
                      hintText: 'Upload an image of the cheque',
                      isSuffix: false,
                      hintStyle: CustomTextStyles.Medium166A6A6AMobile)
                  .marginOnly(left: 17.ss)),
          SizedBox(height: ScreenConstant.defaultHeightFifteen),
          Padding(
            padding: EdgeInsets.only(left: 15.0.ss),
            child: SizedBox(
              height: ScreenConstant.defaultHeightSixty - 10,
              child: _toggleButtonView(
                minWidth: Get.width * 0.41,
                labels: const ['Paid', 'Not Paid'],
              ),
            ),
          ),
          SizedBox(height: ScreenConstant.defaultHeightTwentyThree),
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
                margin: EdgeInsets.symmetric(horizontal: ScreenConstant.defaultWidthOneHundredSeven),
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
            ),
          ),
          Obx(()=> _authenticationController
                .temporaryVehicleImagePath
                .value
                .isEmpty
                ? const Offstage()
                :  SizedBox(height: ScreenConstant.defaultHeightTwentyThree),
          ),
          _uploadImageView(context),
          SizedBox(height: ScreenConstant.defaultHeightTwentyThree),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Lease Contract",
                style: CustomTextStyles.Medium18Mobile,
              ),
              Obx(()=> _authenticationController
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
                ),
              )
            ],
          ),
          SizedBox(height: ScreenConstant.defaultHeightFifteen),
          _browseImage(context),
          SizedBox(height: ScreenConstant.defaultHeightFifteen),
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
        ],
      ),
    );
  }

  Widget _browseImage(context) {
    return Obx(()=> _authenticationController
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
    );
  }

  Widget _uploadImageView(context) {
    return  Obx(()=> _authenticationController
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
    );
  }

  Widget _propertyInfoTextView(
      {required String title, required String subTitle, Color? subTitleColor}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 4,
          child: Text(
            title,
            style: CustomTextStyles.light14Mobile,
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            ':',
            style: CustomTextStyles.light14Mobile,
          ),
        ),
        Expanded(
          flex: 5,
          child: Text(
            subTitle,
            maxLines: 2,
            style: CustomTextStyles.light14Mobile,
          ),
        )
      ],
    ).marginOnly(bottom: 8.ss);
  }

  Widget _toggleButtonView(
      {required double minWidth, required List<String> labels}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 5,
          child: Obx(
            () => GestureDetector(
              onTap: () {
                _authenticationController.favotitesSelected.value = true;
                _authenticationController.savedSelected.value = false;
              },
              child: ToggleButtonWidgetMobile(
                isSelected: _authenticationController.favotitesSelected.value,
                text: labels[0],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Obx(
            () => GestureDetector(
              onTap: () {
                _authenticationController.favotitesSelected.value = false;
                _authenticationController.savedSelected.value = true;
              },
              child: ToggleButtonWidgetMobile(
                isSelected: _authenticationController.savedSelected.value,
                text: labels[1],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class CustomRRectWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size.infinite,
      painter: CustomRRectPainter(),
    );
  }
}

class CustomRRectPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.black; // Change color as needed

    RRect rRect = RRect.fromRectAndCorners(
      Rect.fromLTWH(
        size.width * 0.08234745,
        size.height * 0.8370731,
        size.width * 0.9163110,
        size.height * 0.1615574,
      ),
      bottomRight: Radius.circular(size.width * 0.02546917),
      bottomLeft: Radius.circular(size.width * 0.02546917),
      topLeft: Radius.circular(size.width * 0.02546917),
      topRight: Radius.circular(size.width * 0.02546917),
    );

    canvas.drawRRect(rRect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class ArcPainter extends CustomPainter {
  final Offset start;
  final Offset end;

  ArcPainter({required this.start, required this.end});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xFF6A6A6A).withOpacity(0.23)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final path = Path();
    path.moveTo(start.dx, start.dy);

    final controlPoint1 = Offset((start.dx - end.dx) / 0.6, start.dy);
    final controlPoint2 = Offset(start.dx , end.dy);
    path.cubicTo(
      controlPoint1.dx-10.ss, controlPoint2.dy-20.ss,
      controlPoint2.dx-0.ss, controlPoint2.dy-0.ss,
      end.dx+5.ss, end.dy+5.ss,
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}