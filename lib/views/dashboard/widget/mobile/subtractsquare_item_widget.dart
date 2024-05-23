import 'package:flutter/material.dart';
import 'package:main/utils/core/utils/image_constant.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/widgets_utils/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class SubtractsquareItemWidget extends StatelessWidget {
  const SubtractsquareItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 103.v,
      width: 114.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle4243,
            height: 103.v,
            width: 114.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSubtractSquare,
            height: 14.adaptSize,
            width: 14.adaptSize,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 10.v,
              right: 9.h,
            ),
          ),
        ],
      ),
    );
  }
}
