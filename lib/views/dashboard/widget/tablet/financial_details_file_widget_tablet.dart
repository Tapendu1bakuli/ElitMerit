import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/screen_constants.dart';
import 'package:main/utils/tablet_size_utils.dart';
import 'package:main/utils/theme/app_decoration.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:main/utils/theme/theme_helper.dart';
import 'package:sizing/sizing_extension.dart';

class FinancialDetailsTabletWidget extends StatelessWidget {
  const FinancialDetailsTabletWidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool? isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,


            margin: EdgeInsets.only(
              right:  ScreenConstant.sizeXL,
              top:  ScreenConstant.sizeLarge,
              left:  ScreenConstant.sizeLarge,


            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Financial Details",
                      style:
                      CustomTextStyles.customButtonTextStyleTablet.copyWith(color :
                      AppColors.blackColor)),
                  Container(
                    height: ScreenConstant.defaultHeightThirty,
                    width: ScreenConstant.defaultWidthNinety,

                    decoration: BoxDecoration(
                        color: const Color(0xFF50C878),
                        borderRadius: BorderRadiusStyle.roundedBorder10,),
                    child: Center(
                      child: FittedBox(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0.v),
                          child: Text(
                            "Add New",
                            style: CustomTextStyles.semiBold10TextStyleTablet,
                          ),
                        ),
                      ),
                    ),
                  )
                ]),
          ),
          SizedBox(height: 16.v),
          tableHeading(isLandscape),
          defaultTable(true),
          defaultTable(false),
          defaultTable(true),
          defaultTable(true),
          defaultTable(true),
          defaultTable(true),
          defaultTable(true),
          defaultTable(true),
          defaultTable(true),
          defaultTable(true),
          secondaryTile('Sum Installments', '12452',isLandscape),
          secondaryTile('Sum Paid Amounts', '\$15000.00',isLandscape),
          secondaryTile('Sum Unpaid Amount', '\$1200.00',isLandscape),
          secondaryTile('Percentage Paid Amount', '15%',isLandscape),
        ],
      ),
    );
  }

  defaultTable(bool paid) {
    return Table(
      columnWidths: const {
        0: FractionColumnWidth(.29),
        1: FractionColumnWidth(0.22),
        2: FractionColumnWidth(0.3)
      },
      border: TableBorder(
        verticalInside: BorderSide(
            width: 1,
            color: Colors.grey.shade300,
            style: BorderStyle.solid),
      ),
      children: [
        TableRow(
            decoration: BoxDecoration(
                color: const Color(0xFFFBFBFB).withOpacity(0.9),
                border: Border.all(color: Colors.grey.shade300)),
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 0.0.h, vertical: 10.v),
                child: Text(
                  '12/02/23',
                  style: CustomTextStyles.bodyLarge16.copyWith(
                    color: appTheme.gray90001,
                    fontSize : 16.0
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.v),
                child: Text(
                  '\$400.00',
                  style: CustomTextStyles.bodyLarge16.copyWith(
                      color: appTheme.gray90001,
                      fontSize : 16.0
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 10.0.h, vertical: 10.v),
                child: Text(
                  '12452',
                  style: CustomTextStyles.bodyLarge16.copyWith(
                      color: appTheme.gray90001,
                      fontSize : 16.0
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              paid
                  ? Center(
                    child: Container(
                    margin: EdgeInsets.only(top:  getTabletVerticalSize(12)),
                      height: ScreenConstant.defaultHeightThirty,
                      width: ScreenConstant.defaultWidthSixty,

                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(getTabletSize(6))),
                      child: Text(
                        "Paid",
                        style: CustomTextStyles.light14TextStyleTablet.copyWith(
                            color : Colors.white,
                          fontWeight : FontWeight.w600
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                  : Center(
                    child: Container(
                      margin: EdgeInsets.only(top:  getTabletVerticalSize(12)),
                      height: ScreenConstant.defaultHeightThirty,
                      width: ScreenConstant.defaultWidthSixty,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4.adaptSize)),
                      child: Text(
                        "Not",
                        style: CustomTextStyles.light14TextStyleTablet.copyWith(
                            color : Colors.black,
                            fontWeight : FontWeight.w600
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
            ]),
      ],
    );
  }

  tableHeading(bool isLandscape) {
    return Container(
      color: AppColors.primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.only(top: getTabletSize(15), bottom: getTabletSize(15),
                left: isLandscape ? 30 : 20
              ),
              child: Text("Installment date",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLarge16.copyWith(
                      color: Colors.white,
                      fontSize : 16.0,
                    fontWeight : FontWeight.w600
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: getTabletSize(15), bottom: getTabletSize(15),),
              child: Transform.translate(
                offset: isLandscape ? Offset(-35,0) : Offset(-40,0),
                child: Text("Amount",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                    textStyle: CustomTextStyles.bodyLarge16.copyWith(
                        color: Colors.white,
                        fontSize : 16.0,
                        fontWeight : FontWeight.w600
                    ))),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: getTabletSize(15),
                    bottom: getTabletSize(15),right: isLandscape ? 20 : 30),
                child: Text("Percentage",
                    style: CustomTextStyles.bodyLarge16.copyWith(
                        color: Colors.white,
                        fontSize : 16.0,
                        fontWeight : FontWeight.w600
                    )
                )),
            Padding(
                padding: EdgeInsets.only(top: getTabletSize(9), bottom: getTabletSize(9)),
                child: Text("",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: getTabletFontSize(14),
                        )))),
          ]),
    );
  }

  secondaryTile(String title, String value,bool isLandscape) {
    return Table(
      columnWidths: const {
        0: FractionColumnWidth(.52),
        1: FractionColumnWidth(0.0),
      },
      border: const TableBorder(
        verticalInside:
            BorderSide(width: 1, color: Colors.transparent, style: BorderStyle.solid),
      ),
      children: [
        TableRow(
            decoration: BoxDecoration(
                color: const Color(0xFFFBFBFB).withOpacity(0.9),
                border: Border.all(color: Colors.grey.shade300)),
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: getTabletVerticalSize(15),
                  bottom: getTabletVerticalSize(15),
                  left: isLandscape ? 200.ss :100.ss
                ),
                child: Text(
                  title,
                  style: CustomTextStyles.bodyLarge16.copyWith(
                      color: Colors.black,
                      fontSize : 16.0,
                      fontWeight : FontWeight.w500
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.v),
                child: Text(
                  ':',
                  style: CustomTextStyles.bodyLarge16.copyWith(
                      color: Colors.black,
                      fontSize : 16.0,
                      fontWeight : FontWeight.w500
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding:
                EdgeInsets.only(
                    top: getTabletVerticalSize(15),
                    bottom: getTabletVerticalSize(15),
                    left: 100.ss
                ),
                child: Text(
                  value,
                  style: CustomTextStyles.bodyLarge16.copyWith(
                      color: Colors.black,
                      fontSize : 16.0,
                      fontWeight : FontWeight.w500
                  ),
                  textAlign: TextAlign.start,
                ),
              )

            ]),
      ],
    );
  }
}
