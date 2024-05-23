import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/tablet_size_utils.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:sizing/sizing.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../controller/home_controller.dart';

class FinancialOverviewTabletScreen extends StatelessWidget {
  FinancialOverviewTabletScreen({super.key});
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
          'Financial Overview',
          style: CustomTextStyles.bold32Tablet,
        ),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
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
                        style: CustomTextStyles
                            .regular18232323WithOutOpacityTablet,
                      ),
                    ],
                  )),
            ],
          ),
        ),
        backgroundColor: const Color(0xFF1E1E1E).withOpacity(0.1),
        elevation: 0,
      ),
      body: isLandscape ? _bodyView() : _bodyViewPortrait()
    );
  }

  Widget _bodyView() {
    return Container(
      padding: EdgeInsets.only(left: 20.ss, right: 20.ss),
      color: const Color(0xFF1E1E1E).withOpacity(0.1),
      child: ListView(
        children: [
          SizedBox(
            height: getTabletSize(30),
          ),
          _filterContainerView(),
          Container(
            height: 20.ss,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.ss),
              border: Border.all(color: Colors.grey.shade400),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: 15.ss, bottom: 15.ss, left: 20.ss, right: 20.ss),
                  child: Row(
                    children: [
                      Text("Financial Transactions",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            color: const Color(0xFF111A24),
                            fontSize: 15.fss,
                            fontWeight: FontWeight.w600,
                          ))),
                      const Spacer(),
                      Image.asset(
                        "asset/icons/tablet/round_Arrow_left.png",
                        fit: BoxFit.fill,
                        height: 30,
                        width: 30,
                      ),
                      Container(
                        width: 5.ss,
                      ),
                      Image.asset(
                        "asset/icons/tablet/round_Arrow_right.png",
                        fit: BoxFit.fill,
                        height: 30,
                        width: 30,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.ss),
                  color: const Color.fromRGBO(231, 233, 235, 1.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: _textFieldView(hintText: 'Data View'),
                      ),
                      Expanded(
                        child: _textFieldView(hintText: 'Date Range'),
                      ),
                      Expanded(
                        child: _textFieldView(hintText: 'Property Selection'),
                      ),
                      Expanded(
                        child: _textFieldView(hintText: 'Expense Type'),
                      ),
                    ],
                  ),
                ),
                _tableHeading(),
                ListView.builder(
                  itemCount: 12,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context,int index){
                      return _tableItemsView();
                    }),
                _incrementWidget()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _tableHeading() {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: const {
        0: FractionColumnWidth(.1),
        1: FractionColumnWidth(0.3),
        2: FractionColumnWidth(0.3),
        3: FractionColumnWidth(0.3),

      },
      border: TableBorder(
        verticalInside: BorderSide(
            width: 1,
            color: Colors.white.withOpacity(0.5),
            style: BorderStyle.solid),
      ),
      children: [
        TableRow(
            decoration: BoxDecoration(
                color: const Color(0xFFFBFBFB).withOpacity(0.9),
                border: Border.all(color: Colors.grey.shade300)),
            children: [
              Padding(
                padding: EdgeInsets.symmetric( vertical: 20.ss),
                child: Transform.translate(
                  offset: Offset(60.ss,0),
                  child: Text(
                    'Date & Time',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: AppColors.darkBlueColor,
                            fontSize: 10.fss,
                            fontWeight: FontWeight.w600)),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.ss),
                child:  Transform.translate(
                 offset: Offset(30.ss,0),
                  child: Text(
                    'Amount',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: AppColors.darkBlueColor,
                            fontSize: 10.fss,
                            fontWeight: FontWeight.w600)),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0.ss, bottom: 20.ss),
                child:  Transform.translate(
               offset: Offset(-20.ss,0),
                  child: Text(
                    'Description',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: AppColors.darkBlueColor,
                            fontSize: 10.fss,
                            fontWeight: FontWeight.w600)),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric( vertical: 20.ss),
                child: Transform.translate(
               offset: Offset(90.ss,0),
                  child: Text(
                    'Property Name',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: AppColors.darkBlueColor,
                            fontSize: 10.fss,
                            fontWeight: FontWeight.w600)),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ]),
      ],
    );
  }

  Widget _tableItemsView() {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: const {
        0: FractionColumnWidth(.05),
        1: FractionColumnWidth(0.15),
        2: FractionColumnWidth(0.15),
        3: FractionColumnWidth(0.4),
        4: FractionColumnWidth(0.3)
      },
      border: TableBorder(
        verticalInside: BorderSide(
            width: 1, color: Colors.grey.shade300, style: BorderStyle.solid),
      ),
      children: [
        TableRow(
            decoration: BoxDecoration(
                color: const Color(0xFFFBFBFB).withOpacity(0.9),
                border: Border.all(color: Colors.grey.shade300)),
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 0.0.ss, vertical: 10.ss),
                child: Obx(
                  () => Transform.scale(
                    scale: 1.4,
                    child: Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      value: _homeController.isAgreeTermsAndPrivacy.value,
                      onChanged: (e) {
                        _homeController.isAgreeTermsAndPrivacy.value = !_homeController.isAgreeTermsAndPrivacy.value;
                      },
                      side: MaterialStateBorderSide.resolveWith(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return const BorderSide(
                                color: AppColors.primaryColor);
                          }
                          return BorderSide(
                              color: Colors.blueGrey.withOpacity(0.5));
                        },
                      ),
                      activeColor: AppColors.primaryColor,
                      checkColor: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.ss,bottom: 10.ss,left: 25.ss),
                child: Text(
                  '12/2/2023\n14:15 PM',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 10.fss,
                  )),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric( vertical: 10.ss),
                child: Text(
                  '\$300',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 10.fss,
                  )),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 21.0.ss, vertical: 10.ss),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do tempor incididunt ut labore et dolore magna aliqua',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 10.fss,
                  )),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 10.0.ss, bottom: 10.ss,left: 50.ss),
                child: Text('John',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 10.fss,
                    ))),
              ),
            ]),
      ],
    );
  }

  Widget _filterContainerView() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12.0.ss),
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
                    icon:  Icon(Icons.keyboard_arrow_down,size: 20.ss,))
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

  Widget _textFieldView({required String hintText}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.ss, vertical: 10.ss),
      child: DropdownButtonFormField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding:
                EdgeInsets.symmetric(vertical: 15.ss, horizontal: 10.ss),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.ss)),
              borderSide: const BorderSide(
                  color: Color(0xFFC4C4C4), width: 1, style: BorderStyle.solid),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.ss)),
              borderSide: const BorderSide(
                  color: Color(0xFFC4C4C4), width: 1, style: BorderStyle.solid),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.ss)),
              borderSide: const BorderSide(
                  color: Color(0xFFC4C4C4), width: 1, style: BorderStyle.solid),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.ss)),
              borderSide: const BorderSide(
                  color: Color(0xFFE8503A), width: 1, style: BorderStyle.solid),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.ss)),
              borderSide: const BorderSide(
                  color: Color(0xFFE8503A), width: 1, style: BorderStyle.solid),
            ),
            hintStyle: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 10.fss,
                    color: const Color(0xFF232323).withOpacity(0.56))),
            hintText: hintText),
        icon: const Icon(Icons.keyboard_arrow_down_rounded),
        isExpanded: true,
        iconSize: 30.0,
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
    );
  }

  Widget _incrementWidget() {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 30.ss, horizontal: 20.ss),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 5.ss, vertical: 5.ss),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      color: Colors.grey.shade50,
                      borderRadius: BorderRadius.circular(4.ss)),
                  child: Icon(
                    Icons.arrow_back,
                    size: 15.ss,
                  )),
            ),
            SizedBox(
              width: 8.ss,
            ),
            _textView(title: '1', index : 0),
            SizedBox(
              width: 8.ss,
            ),
            _textView(title: '2',index : 1),
            SizedBox(
              width: 8.ss,
            ),
            _textView(title: '3',index : 2),
            SizedBox(
              width: 8.ss,
            ),
            _textView(title: '4',index : 3),
            SizedBox(
              width: 8.ss,
            ),
            _textView(title: '5',index : 4),
            SizedBox(
              width: 8.ss,
            ),
            _textView(title: '6',index : 5),
            SizedBox(
              width: 8.ss,
            ),
            Flexible(
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 5.ss, vertical: 5.ss),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      color: Colors.grey.shade50,
                      borderRadius: BorderRadius.circular(4.ss)),
                  child: Icon(
                    Icons.arrow_forward,
                    size: 15.ss,
                  )),
            ),
          ],
        ));
  }

  Widget _textView({String? title, int index =0}) {
    return Obx(
          () => InkWell(
        onTap: (){
          _homeController.selectedIndex.value = index;
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8.ss, vertical: 5.ss),
            decoration: BoxDecoration(
                border: Border.all(
                    color:  _homeController.selectedIndex.value == index
                        ? AppColors.primaryColor
                        : Colors.grey.shade300),
                color:
                _homeController.selectedIndex.value == index ? AppColors.whiteColor : Colors.grey.shade50,
                borderRadius: BorderRadius.circular(4.ss)),
            child: Text(
              title ?? '',
              style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontSize: 10.fss, fontWeight: FontWeight.w600)),
            )),
      ),
    );
  }


  /// Portrait view of Tablet

 Widget  _bodyViewPortrait() {
    return Container(
      padding: EdgeInsets.only(left: 15.ss, right: 15.ss),
      color: const Color(0xFF1E1E1E).withOpacity(0.1),
      child: ListView(
        children: [
          Container(
            height: 20.ss,
          ),
          _filterContainerView(),
          Container(
            height: 20.ss,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.ss),
              border: Border.all(color: Colors.grey.shade400),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: 15.ss, bottom: 15.ss, left: 20.ss, right: 20.ss),
                  child: Row(
                    children: [
                      Text("Financial Transactions",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: const Color(0xFF111A24),
                                fontSize: 15.fss,
                                fontWeight: FontWeight.w600,
                              ))),
                      const Spacer(),
                      Image.asset(
                        "asset/icons/tablet/round_Arrow_left.png",
                        fit: BoxFit.fill,
                        height: 30,
                        width: 30,
                      ),
                      Container(
                        width: 5.ss,
                      ),
                      Image.asset(
                        "asset/icons/tablet/round_Arrow_right.png",
                        fit: BoxFit.fill,
                        height: 30,
                        width: 30,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.ss),
                  color: const Color.fromRGBO(231, 233, 235, 1.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: _textFieldView(hintText: 'Data View'),
                      ),
                      Expanded(
                        child: _textFieldView(hintText: 'Date Range'),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.ss),
                  color: const Color.fromRGBO(231, 233, 235, 1.0),
                  child: Row(
                    children: [

                      Expanded(
                        child: _textFieldView(hintText: 'Property Selection'),
                      ),
                      Expanded(
                        child: _textFieldView(hintText: 'Expense Type'),
                      ),
                    ],
                  ),
                ),
                _tableHeadingPortraitView(),
                ListView.builder(
                    itemCount: 12,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context,int index){
                      return _tableItemsPortraitView();
                    }),
                _incrementWidget()
              ],
            ),
          ),
          Container(
            height: 20.ss,
          ),
        ],
      ),
    );

  }

  Widget _tableHeadingPortraitView() {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: const {
        0: FractionColumnWidth(.1),
        1: FractionColumnWidth(0.2),
        2: FractionColumnWidth(0.4),
        3: FractionColumnWidth(0.3)

      },
      border: TableBorder(
        verticalInside: BorderSide(
            width: 1,
            color: Colors.white.withOpacity(0.5),
            style: BorderStyle.solid),
      ),
      children: [
        TableRow(
            decoration: BoxDecoration(
                color: const Color(0xFFFBFBFB).withOpacity(0.9),
                border: Border.all(color: Colors.grey.shade300)),
            children: [
              Padding(
                padding: EdgeInsets.symmetric( vertical: 20.ss),
                child: Transform.translate(
                  offset: Offset(40.ss,0),
                  child: Text(
                    'Date\n& Time',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: AppColors.darkBlueColor,
                            fontSize: 10.fss,
                            fontWeight: FontWeight.w600)),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.ss),
                child:  Transform.translate(
                  offset: Offset(50.ss,0),
                  child: Text(
                    'Amount',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: AppColors.darkBlueColor,
                            fontSize: 10.fss,
                            fontWeight: FontWeight.w600)),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0.ss, bottom: 20.ss),
                child:  Transform.translate(
                  offset: Offset(10.ss,0),
                  child: Text(
                    'Description',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: AppColors.darkBlueColor,
                            fontSize: 10.fss,
                            fontWeight: FontWeight.w600)),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric( vertical: 20.ss),
                child: Transform.translate(
                  offset: Offset(70.ss,0),
                  child: Text(
                    'Property\nName',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: AppColors.darkBlueColor,
                            fontSize: 10.fss,
                            fontWeight: FontWeight.w600)),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ]),
      ],
    );
  }


  Widget _tableItemsPortraitView() {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: const {
        0: FractionColumnWidth(.05),
        1: FractionColumnWidth(0.18),
        2: FractionColumnWidth(0.18),
        3: FractionColumnWidth(0.4),
        4: FractionColumnWidth(0.3)
      },
      border: TableBorder(
        verticalInside: BorderSide(
            width: 1, color: Colors.grey.shade300, style: BorderStyle.solid),
      ),
      children: [
        TableRow(
            decoration: BoxDecoration(
                color: const Color(0xFFFBFBFB).withOpacity(0.9),
                border: Border.all(color: Colors.grey.shade300)),
            children: [
              Padding(
                padding:
                EdgeInsets.symmetric(vertical: 10.ss),
                child: Obx(
                      () => Transform.scale(
                    scale: 1.4,
                    child: Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      value: _homeController.isAgreeTermsAndPrivacy.value,
                      onChanged: (e) {
                        _homeController.isAgreeTermsAndPrivacy.value = !_homeController.isAgreeTermsAndPrivacy.value;
                      },
                      side: MaterialStateBorderSide.resolveWith(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return const BorderSide(
                                color: AppColors.primaryColor);
                          }
                          return BorderSide(
                              color: Colors.blueGrey.withOpacity(0.5));
                        },
                      ),
                      activeColor: AppColors.primaryColor,
                      checkColor: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.ss,bottom: 10.ss,left: 15.ss),
                child: Text(
                  '12/2/2023\n14:15 PM',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 10.fss,
                      )),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding:
                EdgeInsets.symmetric( vertical: 10.ss,horizontal: 15.ss),
                child: Text(
                  '\$300',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 10.fss,
                      )),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding:
                EdgeInsets.symmetric(horizontal: 21.0.ss, vertical: 10.ss),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do tempor incididunt ut labore et dolore magna aliqua',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 10.fss,
                      )),
                ),
              ),
              Padding(
                padding:
                EdgeInsets.only(top: 10.0.ss, bottom: 10.ss,left: 20.ss),
                child: Text('John',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 10.fss,
                        ))),
              ),
            ]),
      ],
    );
  }


}
