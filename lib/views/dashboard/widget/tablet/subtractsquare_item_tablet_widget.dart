import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:main/utils/core/utils/image_constant.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/screen_constants.dart';
import 'package:main/utils/tablet_size_utils.dart';
import 'package:main/utils/widgets_utils/widgets/custom_image_view.dart';
import 'package:sizing/sizing_extension.dart';

// ignore: must_be_immutable
class SubtractSquareItemTabletWidget extends StatelessWidget {
  const SubtractSquareItemTabletWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.ss),
        image: DecorationImage(
          image: AssetImage(ImageConstant.imgRectangle4244,),
          fit: BoxFit.cover,
        )
      ),
      constraints: BoxConstraints(minWidth: ScreenConstant.defaultWidthFourHundred,
          maxWidth: MediaQuery.of(context).size.width * 2.5),

      child: CustomImageView(
        imagePath: ImageConstant.imgSubtractSquare,
        height: ScreenConstant.defaultHeightThirtyFive,
        width: ScreenConstant.defaultWidthTwenty,

        alignment: Alignment.topRight,
        margin: EdgeInsets.only(
          top: getTabletSize(20),
          right: getTabletSize(20),
        ),
      ),
    );
  }
}
