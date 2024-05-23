import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:sizing/sizing.dart';

import '../../../../device_manger/screen_constants.dart';
import '../../controller/home_controller.dart';

class UpcomingInstallmentsMobileScreen extends StatelessWidget {

  UpcomingInstallmentsMobileScreen({super.key});
  final HomeController _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 200,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              GestureDetector(
                  onTap: () => Get.back(),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.arrow_back_ios,
                        size: 15,
                      ),
                      Text(
                        'Back',
                        style: GoogleFonts.poppins(
                          fontSize: 14.ss,
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
        backgroundColor: const Color(0xFF1E1E1E).withOpacity(0.1),
        elevation: 0,
      ),
      body: _bodyView(),
    );
  }

  Widget _bodyView(){
    return Container(
      padding: EdgeInsets.only(left: 20.ss,right: 20.ss),
      decoration: BoxDecoration(color: const Color(0xFF1E1E1E).withOpacity(0.1)),
      child: ListView(
        children: [
          Text(
            'Upcoming Installments',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 24.fss,
                color: AppColors.textColor2),
          ),
          SizedBox(height: 20.ss,),
          _filterContainerView(),
          SizedBox(height: 20.ss,),
          Container(
            decoration:  BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.ss),
              border: Border.all(color: Colors.grey.shade400),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 10.ss,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.ss),
                  child: Text("Installment List View",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: const Color(0xFF111A24),
                            fontSize: 14.fss,
                            fontWeight: FontWeight.w600,
                          ))),
                ),
                Container(
                  height: 10.ss,
                ),
                _sortByTextFieldView(),
                _installmentGreenTableView(title1: 'Due Date',title2: 'Installment Amount' ,subTitle1: '12/04/2024', subTitle2: '21.2122 AED'),
                _installmentWhiteTableView(title: 'Property Name' , subTitle: 'Lorem ipsum dolor sit\namet, nsectetur'),
                _installmentGreenTableView(title1: 'Due Date',title2: 'Installment Amount' ,subTitle1: '12/04/2024', subTitle2: '21.2122 AED'),
                _installmentWhiteTableView(title: 'Property Name' , subTitle: 'Lorem ipsum dolor sit\namet, nsectetur'),
                _installmentGreenTableView(title1: 'Due Date',title2: 'Installment Amount' ,subTitle1: '12/04/2024', subTitle2: '21.2122 AED'),
                _installmentWhiteTableView(title: 'Property Name' , subTitle: 'Lorem ipsum dolor sit\namet, nsectetur',borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.ss), bottomRight: Radius.circular(10.ss),)),

              ],
            ),
          ),
          SizedBox(
            height: 20.ss,
          ),
          _paymentEntryView(),
          Container(
            height: 15.ss,
          ),
        ],
      ),
    );
  }

 Widget _filterContainerView(){
    return  Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(left: 12.0.ss),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sort by',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.fss,
                    color: const Color(0xFF6A6A6A),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_down))
              ],
            ),
          ),
          // SizedBox(height: 5.ss),
          Divider(
            color: Colors.black.withOpacity(0.08),
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('asset/icons/tablet/filter.svg'),
                SizedBox(
                  width: 5.ss,
                ),
                Text(
                  'Filter',
                  style: GoogleFonts.poppins(
                    color: Color(0xff929FAD),
                    fontWeight: FontWeight.normal,
                    fontSize: 12.fss,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _sortByTextFieldView(){
    return   Container(
      padding: EdgeInsets.only(left: 10.ss,right: 15.ss),
      color:  const Color.fromRGBO(231, 233, 235, 1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.only(top: 10.ss,bottom: 10.ss,right: 15.ss),
              height: 38.ss,
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Color(0xFFC4C4C4),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 5.ss, horizontal: 10.ss),
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
                    hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 12.fss,
                            color: const Color(0xFF232323)
                                .withOpacity(0.56))),
                    hintText: "Sort by"),
                icon: const Icon(
                    Icons.keyboard_arrow_down_rounded),
                isExpanded: true,
                iconSize: 20.0,
                items: ['One', 'Two', 'Three'].map(
                      (val) {
                    return DropdownMenuItem<String>(
                      value: val,
                      child: Text(val),
                    );
                  },
                ).toList(),
                onChanged: (val) {
                  _homeController.selectedLocation = val;
                },
              ),
            ),
          ),

          Expanded(
            flex: 3,
            child: Container(
              height: 35.ss,
              padding: EdgeInsets.only(left: 2.ss,right: 2.ss),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xFFC4C4C4)),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.ss),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("asset/icons/tablet/filter.png",scale: 1.1.ss,),
                  Container(
                    width: 5.ss,
                  ),
                  Flexible(
                    child: Text(
                      "Filter",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: const Color(0xFF929FAD),
                              fontSize: 12.fss)),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 10.ss,
          ),
          Image.asset(
            "asset/icons/tablet/round_Arrow_left.png",
            fit: BoxFit.fill,
            height: 20,
            width: 20,
          ),
          Container(
            width: 5.ss,
          ),
          Image.asset(
            "asset/icons/tablet/round_Arrow_right.png",
            fit: BoxFit.fill,
            height: 20,
            width: 20,
          ),


        ],
      ),
    );
  }

  Widget _paymentEntryView(){
    return  Container(
      decoration:  BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.ss),
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 10.ss,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.ss),
            child: Text("Payment Entry Interface",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: AppColors.darkBlueColor,
                      fontSize: 14.fss,
                      fontWeight: FontWeight.w600,
                    ))),
          ),
          Container(
            height: 10.ss,
          ),
          Container(
            color : const Color.fromRGBO(231, 233, 235, 1.0),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.ss),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.ss,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: _textFieldView(hintText: 'Paid Amount'),
                      ),
                      SizedBox(width: 10.ss,),
                      Expanded(
                        child: _textFieldView(hintText: 'Date' ,isSuffix: true),
                      ),
                    ],
                  ),
                  Container(
                    height: 15.ss,
                  ),
                  Text("Validations",
                    style: GoogleFonts.poppins(textStyle: const TextStyle(fontWeight: FontWeight.w600)),),
                  Container(
                    height: 5.ss,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child:  _textFieldView(hintText: 'Data Entry',isSuffix: true),
                      ),
                      SizedBox(width: 10.ss,),
                      Expanded(child:  _textFieldView(hintText: 'Amount'),
                      ),

                    ],
                  ),
                  Container(
                    height: 15.ss,
                  ),
                  _textFieldView(hintText: 'Date format checking',isSuffix: true),
                  Container(height: 15.ss,),

                  ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.ss),
                    ),
                    backgroundColor: AppColors.primaryColor,
                    padding: EdgeInsets.symmetric(horizontal: 60.ss),
                  ), child:  Text("Save",style: TextStyle(
                      fontSize: 14.fss,
                      color: Colors.white,
                      fontWeight: FontWeight.w500)),),
                  Container(height: 10.ss,)
                ],
              ),
            ),
          ),
          _installmentGreenTableView(title1: 'Due Date',title2: 'Installment Amount' ,subTitle1: '12/04/2024', subTitle2: '21.2122 AED'),
          _installmentWhiteTableView(title: 'Property Name' , subTitle: 'Lorem ipsum dolor sit\namet, nsectetur'),
          _installmentGreenTableView(title1: 'Due Date',title2: 'Installment Amount' ,subTitle1: '12/04/2024', subTitle2: '21.2122 AED'),
          _installmentWhiteTableView(title: 'Property Name' , subTitle: 'Lorem ipsum dolor sit\namet, nsectetur'),
          _installmentGreenTableView(title1: 'Due Date',title2: 'Installment Amount' ,subTitle1: '12/04/2024', subTitle2: '21.2122 AED'),
          _installmentWhiteTableView(title: 'Property Name' , subTitle: 'Lorem ipsum dolor sit\namet, nsectetur',borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.ss), bottomRight: Radius.circular(10.ss),)),

        ],
      ),
    );
  }

  Widget _textFieldView({String? hintText, bool isSuffix = false}){
    return TextFormField(
      readOnly: true,
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
        suffixIconConstraints: BoxConstraints(
            minHeight: 30.ss,
            minWidth:  30.ss
        ),
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: const Color(0xFF6A6A6A),
              fontSize: 12.fss,
            )),
        errorStyle: TextStyle(
            color: const Color(0xFFE8503A),
            fontSize: 12.fss,
            fontFamily: 'Gordita'),

        suffixIcon: isSuffix ?Padding(
          padding:  EdgeInsets.only(right: 8.0.ss),
          child: Image.asset(
            "asset/icons/tablet/ic_calender_3x.png",
            height: 15.ss,
            width: 15.ss,
            fit: BoxFit.contain,
          ),
        ) : Container(width: 0.0,),
        contentPadding: EdgeInsets.all(ScreenConstant.sizeDefault),
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
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius:
          BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
              color: Color(0xFFE8503A),
              width: 1,
              style: BorderStyle.solid),
        ),
      ),
    );
  }

  Widget _installmentGreenTableView({ Color? boxColor, String? title1, String? title2 , String? subTitle1 ,
    String? subTitle2}){
    return   Table(
      columnWidths: const {
        0: FractionColumnWidth(.4),
        1: FractionColumnWidth(0.004),
        2: FractionColumnWidth(0.7),
      },
      border: TableBorder(
        verticalInside: BorderSide(
            width: 0.2,
            color: Colors.grey.shade300,
            style: BorderStyle.solid),
      ),
      children: [
        TableRow(
            decoration: BoxDecoration(
                color: boxColor ?? const Color(0xFF50C878).withOpacity(0.12),
                border: Border.all(
                  width: 0.5,
                    color: Colors.grey.shade300)),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 12.0.ss, vertical: 10.ss),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title1 ?? '',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: AppColors.darkBlueColor,
                              fontSize: 12.fss,
                              fontWeight: FontWeight.w600)),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      height: 5.ss,
                    ),
                    Text(
                      subTitle1 ?? '',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 12.fss,
                          )),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              Container(
                // margin: EdgeInsets.symmetric(horizontal: 30),
                height: 50.ss,
                width: 1,
                color: Colors.blueGrey.withOpacity(0.1),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 20.0.ss, vertical: 10.ss),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title2 ?? '',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: AppColors.darkBlueColor,
                              fontSize: 12.fss,
                              fontWeight: FontWeight.w600)),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      height: 5.ss,
                    ),
                    Text(
                      subTitle2 ?? '',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 12.fss,
                          )),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ]),
      ],
    );
  }

  Widget _installmentWhiteTableView({  String? title,  String? subTitle,BorderRadius? borderRadius}){
    return   Table(defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: const {
        0: FractionColumnWidth(.4),
        1: FractionColumnWidth(0.004),
        2: FractionColumnWidth(0.7),
      },
      border: TableBorder(
        verticalInside: BorderSide(
            width: 0.2,
            color: Colors.grey.shade300,
            style: BorderStyle.solid),
      ),
      children: [
        TableRow(
            decoration: BoxDecoration(
                borderRadius: borderRadius,
                color: Colors.white,
                border: Border.all(
                  width: 0.5,
                    color: Colors.grey.shade300)),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 12.0.ss, vertical: 10.ss),
                child: Text(
                  title ?? '',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: AppColors.darkBlueColor,
                          fontSize: 12.fss,
                          fontWeight: FontWeight.w600)),
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                // margin: EdgeInsets.symmetric(horizontal: 30),
                height: 50.ss,
                width: 1,
                color: Colors.blueGrey.withOpacity(0.1),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 20.ss, top: 10.ss,bottom: 20.ss),
                child: Text(
                  subTitle ?? '',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: AppColors.darkBlueColor,
                        fontSize: 12.fss,
                      )),
                  textAlign: TextAlign.start,
                ),
              ),
            ]),
      ],
    );
  }
}
