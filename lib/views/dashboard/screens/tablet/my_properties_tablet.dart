import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:main/utils/core/utils/image_constant.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/phone_size_utils.dart';
import 'package:main/utils/tablet_size_utils.dart';
import 'package:main/utils/theme/app_decoration.dart';
import 'package:main/utils/theme/custom_button_style.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:main/utils/widgets_utils/widgets/custom_elevated_button.dart';
import 'package:main/utils/widgets_utils/widgets/custom_image_view.dart';
import 'package:main/views/dashboard/widget/mobile/my_property_widget.dart';
import 'package:main/views/dashboard/widget/tablet/my_property_widget_tablet.dart';
import 'package:sizing/sizing.dart';

import '../../../../device_manger/screen_constants.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../../customButton/controller/elevated_button_controller.dart';
class MyPropertiesScreenTablet extends StatelessWidget {
  MyPropertiesScreenTablet({Key? key}) : super(key: key);
  ElevatedButtonController elevatedButtonController = Get.put(ElevatedButtonController());
  TextEditingController searchController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .apply(displayColor: Theme.of(context).colorScheme.onSurface);

    // Set the default number of columns to 3.
    int columnsCount = 2;

    // Define the icon size based on the screen width
    double iconSize =  45;


    // Use the ResponsiveUtils class to determine the device's screen size.
    if (ResponsiveUtils.isMobile(context)) {
      columnsCount = 1;
      iconSize = 30;
    } else if (ResponsiveUtils.isDesktop(context)) {
      columnsCount = 2;
      iconSize = 40;
    }
    else if (ResponsiveUtils.isTablet(context)) {
      columnsCount = 2;
      iconSize = 40;
    }



    debugPrint("width :${SizeUtils.figmaDesignWidth}");
    debugPrint("height :${SizeUtils.figmaDesignHeight}");
    bool? isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        leadingWidth: 200,
        centerTitle: true,
        title: Text(
          'My Properties',
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
        backgroundColor: Color(0xFF1E1E1E).withOpacity(0.1),
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
            decoration: BoxDecoration(color: Color(0xFF1E1E1E).withOpacity(0.1)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.ss),
            child: ListView(
              children: [
                SizedBox(height: getTabletSize(50)),
                Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child:
                      Material(elevation: 1,borderRadius: BorderRadius.circular(10),child:
                      SizedBox(
                        height: 60,
                        child: TextFormField(
                          readOnly: false,
                          controller: searchController,
                          keyboardType: TextInputType.emailAddress,
                          autofocus: false,
                          maxLines: 1,
                          cursorColor: AppColors.primaryColor,
                          textInputAction: TextInputAction.next,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          style: TextStyle(
                            color: const Color(0xFF111A24),
                            fontSize: 14.fss,
                            fontFamily: 'Gordita',
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Search Properties",
                            hintStyle: CustomTextStyles.medium12TextStyleTablet,
                            errorStyle: TextStyle(
                              color: const Color(0xFFE8503A),
                              fontSize: 12.fss,
                              fontFamily: 'Gordita',
                            ),
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(left: 10.0.ss, right: 5.ss),
                              child: Icon(
                                Icons.search_rounded,
                                color: Color(0xFF0A2342),
                                size: 24,
                              ),
                            ),
                            suffixIcon:
                            InkWell(onTap: (){
                              searchController.text="";

                            },child: Padding(
                              padding: getTabletPadding(right: 10),
                              child: Icon(
                                Icons.cancel_outlined,
                                color: Color(0xFF0A2342),
                                size: 24,
                              ),
                            ),)
                            ,

                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Color(0xFFC4C4C4),
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Color(0xFFC4C4C4),
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Color(0xFFC4C4C4),
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Color(0xFFE8503A),
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Color(0xFFE8503A),
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                        ),
                      ),
                      ),
                    ),
                    Container(
                      width: getTabletSize(15),
                    ),
                    Expanded(
                      flex: 0,
                      child: Material(elevation: 2,borderRadius: BorderRadius.circular(10),child:
                      Container(
                        height: 60,
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.ss, vertical: 10.ss),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          "asset/icons/tablet/sliders.png",
                          height: 20.ss,
                          color: AppColors.primaryColor,
                        ),
                        //child: Image.asset("asset/icons/tablet/sliders.png",height: 15.ss,),
                      ),),
                    ),
                  ],
                ),
                Container(height: 15.v),

            isLandscape ?
                GridView.builder(
                  // Set padding and spacing between cards.
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    // Set the number of columns based on the device's screen size.
                    crossAxisCount: columnsCount,
                    // Set the aspect ratio of each card.
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  // Set the number of items in the grid view.
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    // Build each card in the grid view.
                    return MyPropertyCardWidgetTablet();
                  },
                  // Set the grid view to shrink wrap its contents.
                  shrinkWrap: true,
                  // Disable scrolling in the grid view.
                  physics: const NeverScrollableScrollPhysics(),
                ) :
            ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 22.ss);
              },
              //scrollDirection: Axis.vertical,
              itemCount: 5,
              itemBuilder: (context, i) {
                return  _myPropertyPortraitListView();
              },

            ),
            SizedBox(height: 20.ss,)

              ],
            ),
          ),
        ),
      ),
    );
  }
}


Widget _myPropertyPortraitListView(){
  return Container(
    padding: EdgeInsets.symmetric(
      horizontal: 11.h,
      vertical: 13.v,
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16), color: Colors.white),
    child:
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        SizedBox(
          width: Get.width,
          height: 250.ss,
          child:

          Stack(
            clipBehavior: Clip.none,
            children: [

            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomLeft,
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 10.ss,right: 10.ss,top: 5.ss),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      width: Get.width,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle4232,
                            width: Get.width,
                            radius: BorderRadius.circular(
                             20.ss,
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 17.v,
                                right: 12.h,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    height: 20.ss,
                                    width: 20.ss,
                                    decoration: BoxDecoration(
                                        color: Colors.red.withOpacity(0.8),
                                        borderRadius: BorderRadius.circular(20)),
                                    child:  Icon(
                                      Icons.favorite_border_rounded,
                                      size: 10.ss,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 10.ss,),
                                  Container(
                                    height: 19.ss,
                                    width: 19.ss,
                                    padding: getPadding(all: 3),

                                    decoration: AppDecoration.fillGray.copyWith(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgNotification,
                                      height: 18.ss,
                                      width: 18.ss,
                                      alignment: Alignment.bottomRight,
                                    ),
                                  ),
                                  SizedBox(width: 10.ss,),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
            Positioned(left: 16,bottom: -20,child:  CustomElevatedContainer(
                border: Border.all(color: Colors.white),
                width: Get.width/2,
                height: 35.v,
                text: "Purchase price : 54,300,000 AED",
                richText: RichText(
                  text:  TextSpan(
                    text: 'Purchase price :',
                    style: CustomTextStyles.light14TextStyleMobile.copyWith(
                      fontSize : 12.fss
                    ),
                    children: [
                      TextSpan(
                        text: ' 54,300,000 AED',
                        style: CustomTextStyles.semiBold14TextStyleMobile.copyWith(
                            fontSize : 12.fss
                        ),
                      ),
                    ],
                  ),
                ),
                buttonStyle:
                CustomButtonStyles.fillPrimary),)

          ],),
        ),


        Container(
          height: 20.ss,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.ss),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Property Status:",
                  style: CustomTextStyles.light10TextStyleMobile.copyWith(
                      fontSize : 10.fss
                  ),
                ),
                TextSpan(
                  text: " ",
                ),
                TextSpan(
                  text: "Vacant",
                  style: CustomTextStyles.semiBold10TextStyleMobile.copyWith(
                      fontSize : 10.fss
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          height: 9.v,
        ),
        Padding(
          padding: EdgeInsets.only(left: 12.ss),
          child:
          Row(
            children: [

              SvgPicture.asset('asset/icons/tablet/pin.svg',height: 16),
              Container(
                width: 2.h,
              ),
              Text(
                  "12 no Excepteur sint occaeca",
                  style: CustomTextStyles.light9TextStyleMobile.copyWith(
                      fontSize : 10.fss
                  ),
              ),
              SizedBox(
                width: 10.h,
              ),
              Container(
                width: 1.h,
                height: 13.v,
                color: Color(0xffD9D9D9),
              ),
              SizedBox(
                width: 10.h,
              ),
              SvgPicture.asset('asset/icons/tablet/home_icon.svg',height: 14),
              SizedBox(
                width: 5.h,
              ),
              Text(
                "Property no:",
                style: CustomTextStyles.light9TextStyleMobile.copyWith(
                    fontSize : 10.fss
                ),
              ),
              Text(
                " 1245e25",
                style: CustomTextStyles.medium9TextStyleMobile.copyWith(
                    fontSize : 10.fss
                ),
              ),
            ],
          ),
        ),

        Container(
          height: 8.v,
        ),
        Padding(
          padding: EdgeInsets.only(left: 12.ss),
          child:
          Row(
            children: [
              Padding(
                padding: getPadding(top: 2),
                child: SvgPicture.asset(
                  "asset/icons/tablet/bed.svg",
                  height: 16,
                ),
              ),
              Container(
                width: 5.h,
              ),
              Padding(
                padding: getPadding(top: 8),
                child: Text(
                  "3",
                  style: CustomTextStyles.light12TextStyleMobile.copyWith(
                      fontSize : 10.fss
                  ),
                ),
              ),
              Container(
                width: 10.h,
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                width: 1.h,
                height: 13.v,
                color: Color(0xffD9D9D9),
              ),
              Container(
                width: 10.ss,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: SvgPicture.asset(
                  "asset/icons/tablet/shower.svg",
                  height: 16,
                ),
              ),
              Container(
                width: 5.h,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "2",
                  style: CustomTextStyles.light12TextStyleMobile.copyWith(
                      fontSize : 10.fss
                  ),
                ),
              ),
              Container(
                width: 10.ss,
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                width: 1.h,
                height: 13.v,
                color: Color(0xffD9D9D9),
              ),
              Container(
                width: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: SvgPicture.asset(
                  "asset/icons/tablet/alt.svg",
                  height: 16,
                ),
              ),
              Container(
                width: 5.ss,
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  "12,254 ",
                  style: CustomTextStyles.light12TextStyleMobile.copyWith(
                      fontSize : 10.fss
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                    "sqft",
                    style: CustomTextStyles.light12000000TextStyleMobile.copyWith(
                        fontSize : 10.fss
                    ),
                ),
              ),
              Container(
                width: 10.ss,
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                width: 1.ss,
                height: 13.ss,
                color: Color(0xffD9D9D9),
              ),
              Container(
                width: 10.ss,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: SvgPicture.asset(
                  'asset/icons/tablet/parking.svg',
                  height: 14,
                ),
              ),
              Container(
                width: 5.ss,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "2",
                  style: CustomTextStyles.light12TextStyleMobile.copyWith(
                      fontSize : 12.fss
                  ),
                ),
              ),
            ],
          ),),
        SizedBox(height: 15.v),
        Padding(padding: EdgeInsets.only(left: 15.ss),
          child: InkWell(
            onTap: () {},
            child: Container(

              width: 134,
              height: 35,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'View Details',
                  style: CustomTextStyles.medium14TextStyleMobile.copyWith(
                      fontSize : 12.fss
                  ),
                ),
              ),
            ),
          ),)
        ,
        SizedBox(height: 8.v),
      ],
    ),

  );
}

class MyTextStyle extends StatelessWidget {
  const MyTextStyle({
    super.key,
    required this.name,
    required this.style,
  });

  final String name;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Text(name, style: style),//.copyWith(letterSpacing: 1.0)
    );
  }
}


class ResponsiveUtils {
  // Check if the device is considered as mobile based on screen width.
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 600;

  // Check if the device is considered as tablet based on screen width.
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width > 600 &&
          MediaQuery.of(context).size.width <= 1200;

  // Check if the device is considered as desktop based on screen width.
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 1200;
}