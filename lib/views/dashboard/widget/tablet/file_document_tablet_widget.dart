import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/core/utils/image_constant.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/screen_constants.dart';
import 'package:main/utils/tablet_size_utils.dart';
import 'package:main/utils/theme/app_decoration.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:main/utils/theme/theme_helper.dart';
import 'package:sizing/sizing_extension.dart';


class FileDocumentTabletWidget extends StatelessWidget {
  const FileDocumentTabletWidget({super.key});

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
              left: getTabletHorizontalSize(20),
              right:  getTabletHorizontalSize(30),
              top:  getTabletHorizontalSize(20),

            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("File Document",
                      style:
                      CustomTextStyles.customButtonTextStyleTablet.copyWith(color :
                      AppColors.blackColor)),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
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
                              "Upload",
                              style: CustomTextStyles.semiBold14TextStyleTablet.copyWith(
                                  fontSize : 12.fss
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
          SizedBox(height: 16.v),
          _defaultTable(isLandscape),
          defaultTable(isLandscape),
          defaultTable(isLandscape),
          defaultTable(isLandscape),
          defaultTable(isLandscape),


        ],
      ),
    );
  }

  defaultTable(bool isLandscape) {
    return Table(
      columnWidths: const {
        0: FractionColumnWidth(.1),
        1: FractionColumnWidth(0.40),
        2: FractionColumnWidth(0.22),
        3: FractionColumnWidth(0.20),
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
                padding: EdgeInsets.symmetric(vertical:
                getTabletVerticalSize(20)),
                child: Image.asset(ImageConstant.imgMortgage1,
                  height: ScreenConstant.defaultHeightForty,
                  width: ScreenConstant.defaultWidthForty,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:
                getTabletVerticalSize(20),bottom:  getTabletVerticalSize(20),
                  left: isLandscape ? 0.0 :30.ss

                ),
                child: Text(
                  'Lorem ipsum dolor sit amet,nsectetur\nLorem ipsum dolor sit amet,nsectetur',
                  style: CustomTextStyles.bodyLarge16.copyWith(
                      color: appTheme.gray90001,
                      fontSize : 10.fss
                  ),
                  textAlign: isLandscape ? TextAlign.center : TextAlign.start,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical:
                getTabletVerticalSize(30)),
                child: Text(
                  '07:25PM',
                  style: CustomTextStyles.bodyLarge16.copyWith(
                      color: appTheme.gray90001,
                      fontSize : 11.fss
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical:
                getTabletVerticalSize(30)),
                child: Text(
                  'John Doe',
                  style: CustomTextStyles.bodyLarge16.copyWith(
                      color: appTheme.gray90001,
                      fontSize : 11.fss
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
             
              Padding(
                padding: EdgeInsets.symmetric(vertical:
                getTabletVerticalSize(20)),
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: ScreenConstant.defaultHeightFifteen,
                 child: Icon(Icons.delete_outline_rounded,
                   color: AppColors.whiteColor,
                   size: ScreenConstant.defaultHeightTwentyTwo,),
                ),
              ),
            ]),
      ],
    );
  }
  _defaultTable(bool isLandscape) {
    return Table(defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: const {
        0: FractionColumnWidth(.1),
        1: FractionColumnWidth(0.40),
        2: FractionColumnWidth(0.22),
        3: FractionColumnWidth(0.20),
      },
      border: TableBorder(
        verticalInside: BorderSide(
            width: 1,
            color: Colors.grey.shade50,
            style: BorderStyle.solid),
      ),
      children: [
        TableRow(
            decoration: BoxDecoration(
                color: AppColors.primaryColor,
                border: Border.all(color: Colors.grey.shade50)),
            children: [
              Text("Files",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLarge16.copyWith(
                      color: Colors.white,
                      fontSize : 12.0.ss,
                      fontWeight : FontWeight.w500
                  )),
              Padding(
                padding:  EdgeInsets.only(left: isLandscape ? 60.ss : 30.ss),
                child: Text("Description",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                    textStyle: CustomTextStyles.bodyLarge16.copyWith(
                        color: Colors.white,
                        fontSize : 12.0.ss,
                        fontWeight : FontWeight.w500
                    ))),
              ),
              Padding(
                padding:  EdgeInsets.only(right: 20.ss),
                child: Text("Time",
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyLarge16.copyWith(
                        color: Colors.white,
                        fontSize : 12.0.ss,
                        fontWeight : FontWeight.w500
                    )
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(right: 20.ss),
                child: Text("Name",

                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyLarge16.copyWith(
                        color: Colors.white,
                        fontSize :12.0.ss,
                        fontWeight : FontWeight.w500
                    )
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical:
                getTabletVerticalSize(20)),
                child: Text("",
                    style: CustomTextStyles.bodyLarge16.copyWith(
                        color: Colors.white,
                        fontSize :12.0.ss,
                        fontWeight : FontWeight.w500
                    )
                ),
              ),
            ]),
      ],
    );
  }





}
