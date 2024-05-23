import 'package:flutter/material.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/core/utils/image_constant.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/theme/app_decoration.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:main/utils/theme/theme_helper.dart';
import 'package:main/utils/widgets_utils/widgets/custom_icon_button.dart';
import 'package:main/utils/widgets_utils/widgets/custom_image_view.dart';
import 'package:sizing/sizing.dart';

// ignore: must_be_immutable
class PropertyDetails1ItemWidget extends StatelessWidget {
  const PropertyDetails1ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 26.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         _contractDetailView(isSubTitleColor1: true ,isSubTitleColor2 :
         true ,imagePath:'asset/icons/tablet/ic_calender_mobile.svg',title1: 'Start Date : ',subTitle1: '12 Jan 2020', title2: 'End Date : ',subTitle2: '12 Jan 2024'),
          SizedBox(height: 11.v),
          Divider(
            indent: 4.h,
          ),
          SizedBox(height: 7.v),
          _contractDetailView(imagePath: 'asset/icons/tablet/ic_user.svg',
              imagePath2:   'asset/icons/tablet/ic_file_doc.svg',
              title1: 'Tenant Name : ',subTitle1: 'John Doe',
              title2: 'Status : ',subTitle2: 'Expired',isTextColor: true),

          SizedBox(height: 11.v),
          Divider(
            indent: 4.h,
          ),
          SizedBox(height: 6.v),
          _contractDetailView(isSubTitleColor2 :true ,
              imagePath2: 'asset/icons/tablet/ic_calender_mobile.svg',
              imagePath : 'asset/icons/tablet/ic_tags.svg',
              title1: 'Amount : ',subTitle1: '12,000,000 ADE',
              title2: 'Remaining Days : ',subTitle2: '20 days',isContainerColor: true),

          SizedBox(height: 6.v),
        ],
      ),
    );
  }


  Widget _contractDetailView({bool isTextColor = false,
    bool isContainerColor = false,
    required String title1 ,
    required String subTitle1 ,required String title2 ,
    required String subTitle2, required String? imagePath ,String? imagePath2,bool isSubTitleColor1 = false ,bool isSubTitleColor2 = false}){
    return  Row(
      children: [
        CustomIconButton(
          height: 23.v,
          width: 22.h,
          padding: EdgeInsets.all(6.h),
          child: CustomImageView(
            imagePath: imagePath ,
          ),
        ),
        SizedBox(width: 5.v,),
        Text(title1,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmall9
                .copyWith(color: appTheme.black900,fontSize : 9.fss,fontWeight
                : FontWeight.w600)),
        SizedBox(width: 8.v,),
        isSubTitleColor1 == true ?  Container(
          padding: EdgeInsets.symmetric(vertical: 2.v,horizontal: 5.ss),
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(subTitle1,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmall9
                  .copyWith(color: Colors.white,fontSize : 9.fss,fontWeight
                  : FontWeight.w400)),
        ) :

        Text(subTitle1,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmall9
                .copyWith(color: Colors.black,fontSize : 9.fss,fontWeight
                : FontWeight.w400)),
        SizedBox(width: 20.v,),
        (isTextColor == true || isContainerColor == true) ? Padding(
          padding:  EdgeInsets.only(right: 5.ss),
          child: CustomIconButton(
            height: 23.v,
            width: 22.h,
            padding: EdgeInsets.all(5.h),
            child: CustomImageView(
              imagePath: imagePath2
            ),
          ),
        ):Container(width: 0.0,),

        Text(title2,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmall9
                .copyWith(color: appTheme.black900,fontSize : 9.fss,fontWeight
                : FontWeight.w600)),
        SizedBox(width: 5.v,),
        isSubTitleColor2 == true ? Flexible(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 2.v,horizontal: 5.ss),
            decoration: BoxDecoration(
              color: isContainerColor == true ? AppColors.primaryColor:  AppColors.darkBlueColor,
              borderRadius: BorderRadius.circular(10),
            ),
          
            child: Text(subTitle2,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmall9
                    .copyWith(color: isTextColor == true ?Colors.red : Colors.white,fontSize : 9.fss,fontWeight
                    : FontWeight.w400)),
          ),
        ) : Text(subTitle2,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmall9
                .copyWith(color: isTextColor == true ?Colors.red : Colors.black,fontSize : 9.fss,fontWeight
                : FontWeight.w400)),


      ],
    );
  }
}
