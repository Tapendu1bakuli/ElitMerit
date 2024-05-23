

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/theme/app_decoration.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:main/utils/theme/theme_helper.dart';
import 'package:main/utils/widgets_utils/widgets/custom_outlined_button.dart';

class FinancialDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          SizedBox(height: 22.v),
          Padding(
              padding: EdgeInsets.only(left: 21.h, right: 16.h),
              child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Financial Details",
                        style: CustomTextStyles
                            .titleMediumBlack90018),

                    Container(
                      height: 25.v,
                      width: 74.h,

                      decoration: BoxDecoration(
                          color: Color(0xFF50C878),
                          borderRadius: BorderRadius.circular(4.adaptSize)),
                      child:
                      Center(child: Text("Add New", style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 10.fSize,
                            fontWeight: FontWeight.w500,
                          )),)
                        ,
                      ),)
                    // CustomOutlinedButton(
                    //     height: 25.v,
                    //     width: 74.h,
                    //     text: "Add New")
                  ])),
          SizedBox(height: 16.v),
          // Table(
          //   columnWidths: const {0: FractionColumnWidth(.35),1: FractionColumnWidth(.23),2: FractionColumnWidth(.5)},
          //   border: const TableBorder(horizontalInside: BorderSide(width: 1, color: Colors.blue, style: BorderStyle.solid),),
          //   children: [
          //     TableRow(
          //         decoration: BoxDecoration(color: const Color(0xFF50C878),border: Border.all(color: const Color(0xFF50C878))),
          //         children: [
          //           Padding(
          //             padding: EdgeInsets.symmetric(horizontal: 33.0.h,vertical: 10.v),
          //             child: Text('Installment Date',style: GoogleFonts.poppins(
          //                 textStyle: TextStyle(
          //                   color: Colors.white,
          //                   fontWeight: FontWeight.w600,
          //                   fontSize: 14.fSize,
          //                 )),),
          //           ),
          //           Padding(
          //             padding: EdgeInsets.symmetric(vertical: 10.v),
          //             child: Text('Amount',style: GoogleFonts.poppins(
          //                 textStyle: TextStyle(
          //                   color: Colors.white,
          //                   fontWeight: FontWeight.w600,
          //                   fontSize: 14.fSize,
          //                 )),),
          //           ),
          //           Padding(
          //               padding: EdgeInsets.symmetric(vertical: 10.v),
          //               child:
          //          Text('Percentage',style: GoogleFonts.poppins(
          //                 textStyle: TextStyle(
          //                   color: Colors.white,
          //                   fontWeight: FontWeight.w600,
          //                   fontSize: 14.fSize,
          //                 )),
          //           ),
          //           )]),
          //   ],
          // ),
          //
          // SizedBox(height: 16.v),
          Align(
              alignment: Alignment.topCenter,
              child: Container(

                  padding: EdgeInsets.symmetric(
                      horizontal: 20.h,
                      vertical: 10.v),
                  decoration: AppDecoration.fillGreen,
                  child: Row(children: [
                    Expanded(child: Container(

                        child: Text(
                            "Installment date",
                            maxLines: 2,
                            overflow:
                            TextOverflow.ellipsis,
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.fSize,
                                ))
                        )),flex: 3,)
                    ,

                    Expanded(flex: 3,child:  Text("Amount",
                            style: theme.textTheme
                                .titleSmall),),
        Expanded(flex: 4,child:
        Padding(
                        padding: EdgeInsets.only(
                            top: 9.v, bottom: 4.v),
                        child: Text("Percentage",
                            style: theme.textTheme
                                .titleSmall)),),

                  ]))),
          defaultTable(false),
          defaultTable(true),
          defaultTable(true),
          defaultTable(true),
          defaultTable(true),
          defaultTable(true),
          defaultTable(true),
          defaultTable(true),
          defaultTable(true),
          defaultTable(true),

          secondaryTile('Sum Installments', '12452'),
          secondaryTile('Sum Paid Amounts', '\$15000.00'),
          secondaryTile('Sum Unpaid Amount', '\$1200.00'),
          secondaryTile('Percentage Paid Amount', '15%'),


        ],
      ),
    );
  }

  defaultTable(bool paid){

    return Table(
      columnWidths: const {0: FractionColumnWidth(.29),1:FractionColumnWidth(0.22),2:FractionColumnWidth(0.3)},
      border: TableBorder(verticalInside: BorderSide(width: 1, color:  Colors.blueGrey.withOpacity(0.5), style: BorderStyle.solid),),
      children: [
        TableRow(
            decoration: BoxDecoration(color: Color(0xFFFBFBFB).withOpacity(0.9),border: Border.all(color: Colors.blueGrey.withOpacity(0.5))),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.0.h,vertical: 10.v),
                child: Text('12/02/23',style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 14.fSize,
                    )),textAlign: TextAlign.center,),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.v),
                child: Text('\$400.00',style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 14.fSize,
                    )),textAlign: TextAlign.center,),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0.h,vertical: 10.v),
                child: Text('12452',style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 14.fSize,
                    )),textAlign: TextAlign.center,),
              ),
              paid ?  Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0.h,vertical: 5.v),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 0.h,vertical: 2.v),
                  decoration: BoxDecoration(
                      color: Color(0xFF50C878),
                      borderRadius: BorderRadius.circular(4.adaptSize)),
                  child: Text("Paid", style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 10.fSize,
                        fontWeight: FontWeight.w500,
                      )),textAlign: TextAlign.center,),
                ),
              ) :
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0.h,vertical: 5.v),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4.adaptSize)),
                  child: Text("Not", style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 10.fSize,
                        fontWeight: FontWeight.w500,
                      )),textAlign: TextAlign.center,),
                ),
              ),
            ]),
      ],
    );
  }


  secondaryTile(String title , String value){
    return Table(
      columnWidths: {0: FractionColumnWidth(.52),1:FractionColumnWidth(0.0),},
      border: TableBorder(verticalInside: BorderSide(width: 1, color:  Colors.transparent, style: BorderStyle.solid),),
      children: [
        TableRow(
            decoration: BoxDecoration(color: Color(0xFFFBFBFB).withOpacity(0.9),border: Border.all(color: Colors.blueGrey.withOpacity(0.5))),
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 10.0.h,top: 10.v,
                left: 30.h
                ),
                child: Text(title,style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 14.fSize,
                    )),textAlign: TextAlign.start,),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.v),
                child: Text(':',style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 14.fSize,
                    )),textAlign: TextAlign.center,),
              ),
              Padding(
                padding:   EdgeInsets.only(bottom: 10.0.h,top: 10.v, left: 30.h
                 ),
                child: Text(value,style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 14.fSize,
                    )),textAlign: TextAlign.start,),
              ),
            ]),
      ],
    );
  }

}