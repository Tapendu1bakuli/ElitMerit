import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/device_manger/screen_constants.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/tablet_size_utils.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:main/utils/widgets_utils/app_button.dart';
import 'package:sizing/sizing.dart';
import '../../controller/home_controller.dart';

class UpcomingInstallmentsTabletScreen extends StatelessWidget {
  UpcomingInstallmentsTabletScreen({super.key});
  final HomeController _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    bool? isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0.0,
          leadingWidth: 200,
          centerTitle: true,
          title: Text(
            'Upcoming Installments',
            style: CustomTextStyles.bold32Tablet,
          ),
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                GestureDetector(
                    onTap: () => Get.back(),
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          size: getTabletSize(24),
                        ),
                        Text(
                          'Back',
                          style: CustomTextStyles.regular18232323WithOutOpacityTablet,
                        ),
                      ],
                    )),
              ],
            ),
          ),
          backgroundColor: const Color(0xFF1E1E1E).withOpacity(0.1),
          elevation: 0,
        ),
      body: _bodyView(isLandscape)
    );
  }

  Widget _bodyView(bool isLandscape){
    return Container(
      padding: EdgeInsets.only(left: 15.ss,right: 15.ss),
      color: const Color(0xFF1E1E1E).withOpacity(0.1),
      child: ListView(
        children: [
          SizedBox(height: getTabletSize(30),),
          _filterContainerView(),
        SizedBox(height: getTabletSize(20.ss),),
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
                            color: AppColors.blackColor,
                            fontSize: 15.fss,
                            fontWeight: FontWeight.w600,
                          ))),
                ),
                Container(
                  height: 10.ss,
                ),
                _sortByTextFieldView(isLandscape),
                _installmentGreenTableView(title1: 'Due Date',title2: 'Installment Amount' ,subTitle1: '12/04/2024', subTitle2: '21.2122 AED'),
                _installmentWhiteTableView(title: 'Property Name' , subTitle: 'Lorem ipsum dolor sit amet, nsectetur'),
                _installmentGreenTableView(title1: 'Due Date',title2: 'Installment Amount' ,subTitle1: '12/04/2024', subTitle2: '21.2122 AED'),
                _installmentWhiteTableView(title: 'Property Name' , subTitle: 'Lorem ipsum dolor sit amet, nsectetur'),
                _installmentGreenTableView(title1: 'Due Date',title2: 'Installment Amount' ,subTitle1: '12/04/2024', subTitle2: '21.2122 AED'),
                _installmentWhiteTableView(title: 'Property Name' , subTitle: 'Lorem ipsum dolor sit amet, nsectetur',borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.ss), bottomRight: Radius.circular(10.ss),)),
              ],
            ),
          ),
          Container(
            height: 20.ss,
          ),
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
                  child: Text("Payment Entry Interface",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: const Color(0xFF111A24),
                            fontSize: 15.fss,
                            fontWeight: FontWeight.w500,
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
                          style: GoogleFonts.poppins( fontSize: 15.fss,
                            fontWeight: FontWeight.w500,),),
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
                            SizedBox(width: 10.ss,),
                            Expanded(child: _textFieldView(hintText: 'Date format checking',isSuffix: true)),
                          ],
                        ),
                        Container(
                          height: 20.ss,
                        ),

                        AppButton(
                          onPressed: () {
                          },
                          buttonText: "Save",
                          color: const Color(0xFF50C878),
                          borderColor: const Color(0xFF50C878),
                          borderRadious: 10,
                          borderWidth: 1,
                          elevation: 0,
                          height: 60,
                          textStyle: CustomTextStyles.customButtonTextStyleTablet,
                        ),
                        Container(height: 15.ss,)
                      ],
                    ),
                  ),
                ),

                _installmentGreenTableView(title1: 'Due Date',title2: 'Installment Amount' ,subTitle1: '12/04/2024', subTitle2: '21.2122 AED'),
                _installmentWhiteTableView(title: 'Property Name' , subTitle: 'Lorem ipsum dolor sit amet, nsectetur'),
                _installmentGreenTableView(title1: 'Due Date',title2: 'Installment Amount' ,subTitle1: '12/04/2024', subTitle2: '21.2122 AED'),
                _installmentWhiteTableView(title: 'Property Name' , subTitle: 'Lorem ipsum dolor sit amet, nsectetur'),
                _installmentGreenTableView(title1: 'Due Date',title2: 'Installment Amount' ,subTitle1: '12/04/2024', subTitle2: '21.2122 AED'),
                _installmentWhiteTableView(title: 'Property Name' , subTitle: 'Lorem ipsum dolor sit amet, nsectetur',borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.ss), bottomRight: Radius.circular(10.ss),)),
              ],
            ),
          ),
          SizedBox(height: getTabletSize(20.ss),),
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
                    color: const Color(0xff929FAD),
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

  Widget _sortByTextFieldView(bool isLandscape){
    return   Container(
      padding: EdgeInsets.only(left: 8.ss,right: 20.ss),
      color:  const Color.fromRGBO(231, 233, 235, 1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10.ss,bottom: 10.ss,right: 15.ss),
            width: Get.width/4,
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(10.ss)),
                    borderSide: const BorderSide(
                        color: Color(0xFFC4C4C4),
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 10.ss, horizontal: 10.ss),
                  disabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(10.ss)),
                    borderSide: const BorderSide(
                        color: Color(0xFFC4C4C4),
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                  enabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(10.ss)),
                    borderSide: const BorderSide(
                        color: Color(0xFFC4C4C4),
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                  errorBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(10.ss)),
                    borderSide: const BorderSide(
                        color: Color(0xFFE8503A),
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                  focusedErrorBorder:
                   OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(10.ss)),
                    borderSide: const BorderSide(
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
         const Spacer(),
          Container(
            height: 35.ss,
            width: isLandscape ? Get.width/10 : Get.width/7,
            margin: EdgeInsets.only(top: 10.ss,bottom: 10.ss,right: 10.ss),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: const Color(0xFFC4C4C4)),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.ss),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("asset/icons/tablet/filter.png",scale: 0.5.ss,),
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
        focusedBorder:  OutlineInputBorder(
          borderRadius:
          BorderRadius.all(Radius.circular(10.ss)),
          borderSide: const BorderSide(
              color: Color(0xFFC4C4C4),
              width: 1,
              style: BorderStyle.solid),
        ),
        disabledBorder:  OutlineInputBorder(
          borderRadius:
          BorderRadius.all(Radius.circular(10.ss)),
          borderSide: const BorderSide(
              color: Color(0xFFC4C4C4),
              width: 1,
              style: BorderStyle.solid),
        ),
        enabledBorder:  OutlineInputBorder(
          borderRadius:
          BorderRadius.all(Radius.circular(10.ss)),
          borderSide: const BorderSide(
              color: Color(0xFFC4C4C4),
              width: 1,
              style: BorderStyle.solid),
        ),
        errorBorder:  OutlineInputBorder(
          borderRadius:
          BorderRadius.all(Radius.circular(10.ss)),
          borderSide: const BorderSide(
              color: Color(0xFFE8503A),
              width: 1,
              style: BorderStyle.solid),
        ),
        focusedErrorBorder:  OutlineInputBorder(
          borderRadius:
          BorderRadius.all(Radius.circular(10.ss)),
          borderSide: const BorderSide(
              color: Color(0xFFE8503A),
              width: 1,
              style: BorderStyle.solid),
        ),
      ),
    );
  }

  Widget _installmentGreenTableView({  String? title1, String? title2 , String? subTitle1 ,
    String? subTitle2}){
    return   Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: const {
        0: FractionColumnWidth(.4),
        1: FractionColumnWidth(0.004),
        2: FractionColumnWidth(0.6),
      },
      border:
      TableBorder.symmetric(
        inside: BorderSide.none,
        outside:  BorderSide(width: 1, color: Colors.grey.shade300, style: BorderStyle.solid),
      ),
      children: [
        TableRow(
            decoration: BoxDecoration(
                color:  const Color(0xFF50C878).withOpacity(0.12),
                border: Border.all(
                    color: Colors.grey.shade300,)),
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: 12.0.ss,right: 30.ss, bottom: 10.ss,top: 10.ss),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Flexible(
                      child: Text(
                        subTitle1 ?? '',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 12.fss,
                            )),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 50.ss,
                child: VerticalDivider(
                  width: 2,thickness: 2.0,
                 color: Colors.grey.shade300,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 20.0.ss,right: 30.ss, bottom: 10.ss,top: 10.ss),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Flexible(
                      child: Text(
                        subTitle2 ?? '',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 12.fss,
                            )),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
      ],
    );
  }

  Widget _installmentWhiteTableView({  String? title,  String? subTitle,BorderRadius?
  borderRadius}){
    return   Table(defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: const {
        0: FractionColumnWidth(.4),
        1: FractionColumnWidth(0.004),
        2: FractionColumnWidth(0.7),
      },
      border: TableBorder(
        horizontalInside: BorderSide(
         color : Colors.grey.shade300,),
      ),
      children: [
        TableRow(
            decoration: BoxDecoration(
                borderRadius: borderRadius,
                color: Colors.white,
                border: Border.all(
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
              SizedBox(
                height: 50.ss,
                child: VerticalDivider(
                  width: 2,thickness: 2.0,
                  color: Colors.grey.shade300,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 20.ss, top: 10.ss,bottom: 10.ss),
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
