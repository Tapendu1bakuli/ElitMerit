import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizing/sizing.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../controller/home_controller.dart';

class FinancialOverviewMobileScreen extends StatelessWidget {
  FinancialOverviewMobileScreen({super.key});

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
        body: _bodyView());
  }

  Widget _bodyView() {
    return Container(
      padding: EdgeInsets.only(left: 20.ss, right: 20.ss),
      decoration:
          BoxDecoration(color: const Color(0xFF1E1E1E).withOpacity(0.1)),
      child: ListView(
        children: [
          Text(
            "Financial OverView",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 24.fss,
                color: AppColors.textColor2),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 20.ss,
          ),
          _filterContainerView(),
          SizedBox(
            height: 20.ss,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.ss),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 12.ss, horizontal: 20.ss),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Financial Transactions",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              color: const Color(0xFF111A24),
                              fontSize: 14.fss,
                              fontWeight: FontWeight.w600,
                            ))),
                      ),
                      Image.asset(
                        "asset/icons/tablet/round_Arrow_left.png",
                        fit: BoxFit.contain,
                        height: 25.ss,
                        width: 25.ss,
                      ),
                      Container(
                        width: 5.ss,
                      ),
                      Image.asset(
                        "asset/icons/tablet/round_Arrow_right.png",
                        fit: BoxFit.contain,
                        height: 25.ss,
                        width: 25.ss,
                      ),
                    ],
                  ),
                ),
                Container(
                  color: const Color.fromRGBO(231, 233, 235, 1.0),
                  padding:
                      EdgeInsets.symmetric(vertical: 12.ss, horizontal: 12.ss),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: _textFieldView(hintText: 'Data View'),
                          ),
                          SizedBox(
                            width: 10.ss,
                          ),
                          Expanded(
                            child: _textFieldView(hintText: 'Date Range'),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child:
                                _textFieldView(hintText: 'Property Selection'),
                          ),
                          SizedBox(
                            width: 10.ss,
                          ),
                          Expanded(
                            child: _textFieldView(hintText: 'Expense Type'),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                _tableHeaderView(),
                _financialTransactionTableView(),
                _financialTransactionTableView(
                    amountColor: AppColors.primaryColor),
                _financialTransactionTableView(amountColor: Colors.red),
                _financialTransactionTableView(amountColor: Colors.red),
                _financialTransactionTableView(
                    amountColor: AppColors.primaryColor),
                _financialTransactionTableView(amountColor: Colors.red),
                _financialTransactionTableView(
                    amountColor: AppColors.primaryColor),
                _financialTransactionTableView(amountColor: Colors.red),
                _financialTransactionTableView(
                    amountColor: AppColors.primaryColor),
                _financialTransactionTableView(amountColor: Colors.red),
                _financialTransactionTableView(),
                _incrementWidget()
              ],
            ),
          ),
          SizedBox(
            height: 20.ss,
          ),
        ],
      ),
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
                    color: const Color(0xff6A6A6A),
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

  Widget _textFieldView({String? hintText}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.0.ss, vertical: 5.ss),
      child: DropdownButtonFormField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding:
                EdgeInsets.symmetric(vertical: 10, horizontal: 5.ss),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                  color: Color(0xFFC4C4C4), width: 1, style: BorderStyle.solid),
            ),
            disabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                  color: Color(0xFFC4C4C4), width: 1, style: BorderStyle.solid),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                  color: Color(0xFFC4C4C4), width: 1, style: BorderStyle.solid),
            ),
            errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                  color: Color(0xFFE8503A), width: 1, style: BorderStyle.solid),
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                  color: Color(0xFFE8503A), width: 1, style: BorderStyle.solid),
            ),
            hintStyle: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 12.fss,
                    color: const Color(0xFF232323).withOpacity(0.56))),
            hintText: hintText),
        icon: Icon(
          Icons.keyboard_arrow_down,
          size: 20.ss,
        ),
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

  Widget _financialTransactionTableView({Color? amountColor}) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: const {
        0: FractionColumnWidth(.06),
        1: FractionColumnWidth(0.21),
        2: FractionColumnWidth(0.21),
        3: FractionColumnWidth(0.3),
        4: FractionColumnWidth(0.3)
      },
      border: TableBorder(
        verticalInside:
            BorderSide(color: Colors.grey.shade300, style: BorderStyle.solid),
      ),
      children: [
        TableRow(
            decoration: BoxDecoration(
                border: Border.all(
              color: Colors.grey.shade300,
            )),
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 0.0.ss, vertical: 5.ss),
                child: Obx(
                  () => Transform.scale(
                    scale: 0.5,
                    child: Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      value: _homeController.isAgreeTermsAndPrivacy.value,
                      onChanged: (e) {
                        _homeController.isAgreeTermsAndPrivacy.value =
                            !_homeController.isAgreeTermsAndPrivacy.value;
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
                padding: EdgeInsets.only(top: 10.ss, bottom: 10.ss, left: 8.ss),
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
                    EdgeInsets.only(top: 10.ss, bottom: 10.ss, left: 10.ss),
                child: Text(
                  '\$300.00',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    color: amountColor ?? Colors.black,
                    fontSize: 10.fss,
                  )),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 10.ss, bottom: 10.ss, left: 10.ss),
                child: Text(
                  'Lorem ipsum\ndolor sit amet, consectetur',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 10.fss,
                  )),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 10.ss, bottom: 10.ss, left: 10.ss),
                child: Text('John',
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

  Widget _tableHeaderView() {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: const {
        0: FractionColumnWidth(.22),
        1: FractionColumnWidth(0.22),
        2: FractionColumnWidth(0.24),
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
            decoration: BoxDecoration(border: Border.all(color: Colors.white)),
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 20.ss,
                  top: 15.ss,
                  bottom: 5.ss,
                ),
                child: Text(
                  'Date \nand Time',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 10.fss,
                          fontWeight: FontWeight.w600)),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.ss, bottom: 5.ss, left: 15.ss),
                child: Text(
                  'Amount',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 10.fss, fontWeight: FontWeight.w600)),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.ss, bottom: 5.ss, left: 18.ss),
                child: Text(
                  'Description',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 10.fss, fontWeight: FontWeight.w600)),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.ss, bottom: 5.ss, left: 40.ss),
                child: Text(
                  'Property\nName',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 10.fss, fontWeight: FontWeight.w600)),
                  textAlign: TextAlign.start,
                ),
              ),
            ]),
      ],
    );
  }

  Widget _incrementWidget() {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 30.ss,horizontal: 20.ss),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.ss, vertical: 5.ss),
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
            _textView(title: '1',index : 0),
            SizedBox(
              width: 8.ss,
            ),
            _textView(title: '2',index: 1),
            SizedBox(
              width: 8.ss,
            ),
            _textView(title: '3',index: 2),
            SizedBox(
              width: 8.ss,
            ),
            _textView(title: '4',index: 3),
            SizedBox(
              width: 8.ss,
            ),
            _textView(title: '5',index: 4),
            SizedBox(
              width: 8.ss,
            ),
            _textView(title: '6',index: 5),
            SizedBox(
              width: 8.ss,
            ),
            Flexible(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.ss, vertical: 5.ss),
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
}
