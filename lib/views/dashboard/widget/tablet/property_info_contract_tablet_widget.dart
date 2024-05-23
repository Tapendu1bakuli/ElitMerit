import 'package:flutter/material.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/tablet_size_utils.dart';
import 'package:main/utils/theme/app_decoration.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:main/utils/theme/theme_helper.dart';
import 'package:main/utils/widgets_utils/widgets/custom_roundedSVGIcon.dart';
import 'package:sizing/sizing.dart';

class PropertyDetailsTabletWidget extends StatelessWidget {
  const PropertyDetailsTabletWidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool? isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;

    return Container(
      alignment: Alignment.center,
      padding: isLandscape ? EdgeInsets.symmetric(horizontal: 30.ss,) : EdgeInsets.symmetric(horizontal: 20.ss,vertical: 20.ss),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
        boxShadow: [
          const BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _contractDetailView(
              isSubTitleColor1: true,
              isSubTitleColor2: true,
              imagePath: 'asset/icons/tablet/ic_calender_mobile.svg',
              title1: 'Start Date : ',
              subTitle1: '12 Jan 2020',
              title2: 'End Date : ',
              subTitle2: '12 Jan 2024',isLandscape : isLandscape),
          SizedBox(height: getTabletSize(5)),
          Divider(
            indent: 4.h,
          ),
          SizedBox(height: getTabletSize(5)),
          _contractDetailView(
              imagePath: 'asset/icons/tablet/ic_user.svg',
              imagePath2: 'asset/icons/tablet/ic_file_doc.svg',
              title1: 'Tenant Name : ',
              subTitle1: 'John Doe',
              title2: 'Status : ',
              subTitle2: 'Expired',
              isTextColor: true,
              isLandscape : isLandscape
          ),
          SizedBox(height: getTabletSize(5)),
          Divider(
            indent: 4.h,
          ),
          SizedBox(height: getTabletSize(5)),
          _contractDetailView(
              isSubTitleColor2: true,
              imagePath2: 'asset/icons/tablet/ic_calender_mobile.svg',
              imagePath: 'asset/icons/tablet/ic_tags.svg',
              title1: 'Amount : ',
              subTitle1: '12,000,000 ADE',
              title2: 'Remaining Days : ',
              subTitle2: '20 days',
              isContainerColor: true,
              isLandscape : isLandscape
          ),
          SizedBox(height: getTabletSize(5)),
        ],
      ),
    );
  }

  Widget _contractDetailView(
      {bool isTextColor = false,
      bool isContainerColor = false,
      required String title1,
      required String subTitle1,
      required String title2,
      required String subTitle2,
      required String? imagePath,
      String? imagePath2,
      bool isSubTitleColor1 = false,
      bool isSubTitleColor2 = false,
      bool isLandscape = false}) {

    return Row(

      children: [
        CustomRoundedSVGIcon(assetName: imagePath!,),
        isLandscape ? SizedBox(width: getTabletSize(6)) : SizedBox(width: 10.ss),
        Flexible(
          child: Text(title1,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmall9.copyWith(
                  color: appTheme.black900,
                  fontSize: 9.fss,
                  fontWeight: FontWeight.w600)),
        ),
        SizedBox(width: getTabletSize(6)),
        isSubTitleColor1 == true
            ? Container(
                padding: EdgeInsets.symmetric(vertical: 2.v, horizontal: 5.ss),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(subTitle1,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmall9.copyWith(
                        color: Colors.white,
                        fontSize: 9.fss,
                        fontWeight: FontWeight.w400)),
              )
            : Flexible(
              flex: isLandscape ? 0 : 2,
              child: Text(subTitle1,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmall9.copyWith(
                      color: Colors.black,
                      fontSize: 9.fss,
                      fontWeight: FontWeight.w400)),
            ),
       // SizedBox(width: getTabletSize(25)),
        (isTextColor == true || isContainerColor == true)
            ?
         Padding(
           padding: EdgeInsets.only(right: isLandscape ? 5.ss : 10.ss),
           child: CustomRoundedSVGIcon(assetName: imagePath2!,),
         )
            : Container(
                width: 0.0,
              ),
        Flexible(
          child: Text(title2,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmall9.copyWith(
                  color: appTheme.black900,
                  fontSize: 9.fss,
                  fontWeight: FontWeight.w600)),
        ),
        SizedBox(width: getTabletSize(6)),
        isSubTitleColor2 == true
            ? Flexible(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 2.v, horizontal: 5.ss),
                  decoration: BoxDecoration(
                    color: isContainerColor == true
                        ? AppColors.primaryColor
                        : AppColors.darkBlueColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(subTitle2,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmall9.copyWith(
                          color:
                              isTextColor == true ? Colors.red : Colors.white,
                          fontSize: 9.fss,
                          fontWeight: FontWeight.w400)),
                ),
              )
            : Flexible(
                child: Text(subTitle2,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmall9.copyWith(
                        color: isTextColor == true ? Colors.red : Colors.black,
                        fontSize: 9.fss,
                        fontWeight: FontWeight.w400)),
              ),
      ],
    );
  }
}
