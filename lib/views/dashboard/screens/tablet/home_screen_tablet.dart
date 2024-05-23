import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/views/dashboard/controller/home_controller.dart';
import 'package:sizing/sizing.dart';

import '../../../../device_manger/screen_constants.dart';
import 'package:badges/badges.dart' as badges;
import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/tablet_size_utils.dart';
import '../../../../utils/theme/custom_text_style.dart';
import '../../../customButton/controller/elevated_button_controller.dart';
import '../../widget/tablet/favourite_and_saved_cards_tablet.dart';
import '../../widget/tablet/my_property_widget_tablet.dart';
import '../../widget/tablet/property_card_widget_tablet.dart';
import 'my_properties_tablet.dart';
class HomeScreenTablet extends StatelessWidget {
  HomeScreenTablet({Key? key}) : super(key: key);
  final HomeController _homeController = Get.put(HomeController());
  ElevatedButtonController elevatedButtonController = Get.put(ElevatedButtonController());

  @override
  Widget build(BuildContext context) {
    print("tablet");
    bool? isLandscape =
        MediaQuery.of(context).orientation == Orientation.portrait;
    print("Landscape:$isLandscape");
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
      columnsCount = isLandscape?1:2;
      iconSize = 40;
    }
    return isLandscape?Scaffold(body: SafeArea(child: Container( decoration: BoxDecoration(color: Color(0xFF1E1E1E).withOpacity(0.1)),child: Padding(     padding: EdgeInsets.symmetric(horizontal: 20.0.ss),child:
      ListView(children: [
        Container(
          height: 10.ss,
        ),
        Row(
          children: [
            Expanded(
              flex: 10,
              child:
              Material(elevation: 1,borderRadius: BorderRadius.circular(10),child:
              SizedBox(
                height:50,
                child: TextFormField(
                  controller: _homeController.searchPropertiesController,
                  keyboardType: TextInputType.emailAddress,
                  autofocus: false,
                  maxLines: 1,
                  cursorColor: AppColors.primaryColor,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  style: TextStyle(
                    color: const Color(0xFF111A24),
                    fontSize: 14.fss,
                    fontFamily: 'Gordita',
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Building, Area...",
                    hintStyle: CustomTextStyles.medium12TextStyleTablet,
                    errorStyle: TextStyle(
                      color: const Color(0xFFE8503A),
                      fontSize: 12.fss,
                      fontFamily: 'Gordita',
                    ),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 5.0.ss),
                      child: Icon(
                        Icons.search_rounded,
                        color: Color(0xFF0A2342),
                        size: 24,
                      ),
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(right: 5.0.ss),
                      child: Icon(
                        Icons.cancel_outlined,
                        color: Color(0xFF0A2342),
                        size: 24,
                      ),
                    ),

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
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(right: 3.ss),
                child: Material(elevation: 2,borderRadius: BorderRadius.circular(10),child:
                badges.Badge(
                  badgeStyle: badges.BadgeStyle(
                    badgeColor: Colors.red,
                  ),
                  position:
                  badges.BadgePosition.custom(top: -8.v, end: -5.h),
                  badgeContent: Text("2",
                    style: TextStyle(color: Colors.white),
                  ),
                  child:Container(
                    height:50,

                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Image.asset(
                        "asset/icons/tablet/sliders.png",
                        height: ScreenConstant.defaultHeightTwentyThree,
                      ),
                    ),
                    //child: Image.asset("asset/icons/tablet/sliders.png",height: 15.ss,),
                  ),)),
              ),
            ),
          ],
        ),
        Container(
          height: 10.ss,
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                height:50,
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                    ScreenConstant.spacingAllExtraSmall,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Color(0xFFC4C4C4),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Color(0xFFC4C4C4),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Color(0xFFC4C4C4),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    errorBorder:
                    const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Color(0xFFE8503A),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    focusedErrorBorder:
                    const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Color(0xFFE8503A),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                  ),
                  hint: Text(
                    "Data",
                    style: CustomTextStyles.medium12TextStyleTablet,
                  ),
                  icon: Image.asset(
                    "asset/icons/tablet/download_10.png",
                  ),
                  isExpanded: true,
                  iconSize: ScreenConstant.drawerIconSize8,
                  style: CustomTextStyles.medium12TextStyleTablet,
                  items: ["Data1", "Data2"].map(
                        (val) {
                      return DropdownMenuItem<String>(
                        value: val,
                        child: Text(val),
                      );
                    },
                  ).toList(),
                  onChanged: (val) {
                    // _homeController.selectedLocation = val;
                  },
                ),
              ),
            ),
            Container(width: getTabletHorizontalSize(10),),
            Expanded(
              flex: 2,
              child: SizedBox(
                height:50,
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                    ScreenConstant.spacingAllExtraSmall,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Color(0xFFC4C4C4),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Color(0xFFC4C4C4),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Color(0xFFC4C4C4),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    errorBorder:
                    const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Color(0xFFE8503A),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    focusedErrorBorder:
                    const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Color(0xFFE8503A),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                  ),
                  hint: Text(
                    "Data",
                    style: CustomTextStyles.medium12TextStyleTablet,
                  ),

                  icon: Image.asset(
                    "asset/icons/tablet/download_10.png",
                  ),
                  isExpanded: true,
                  iconSize: ScreenConstant.drawerIconSize8,
                  style: CustomTextStyles.medium12TextStyleTablet,
                  items: ["Data1", "Data2"].map(
                        (val) {
                      return DropdownMenuItem<String>(
                        value: val,
                        child: Text(val),
                      );
                    },
                  ).toList(),
                  onChanged: (val) {
                    // _homeController.selectedLocation = val;
                  },
                ),
              ),
            ),
            Container(width: getTabletHorizontalSize(10),),
            Expanded(
              flex: 2,
              child: SizedBox(
                height:50,
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                    ScreenConstant.spacingAllExtraSmall,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Color(0xFFC4C4C4),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Color(0xFFC4C4C4),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Color(0xFFC4C4C4),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    errorBorder:
                    const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Color(0xFFE8503A),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    focusedErrorBorder:
                    const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Color(0xFFE8503A),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                  ),
                  hint: Text(
                    "Data",
                    style: CustomTextStyles.medium12TextStyleTablet,
                  ),

                  icon: Image.asset(
                    "asset/icons/tablet/download_10.png",
                  ),
                  isExpanded: true,
                  iconSize: ScreenConstant.drawerIconSize8,
                  style: CustomTextStyles.medium12TextStyleTablet,
                  items: ["Data1", "Data2"].map(
                        (val) {
                      return DropdownMenuItem<String>(
                        value: val,
                        child: Text(val),
                      );
                    },
                  ).toList(),
                  onChanged: (val) {
                    // _homeController.selectedLocation = val;
                  },
                ),
              ),
            ),
            Container(width: getTabletHorizontalSize(10),),
            Expanded(
              flex: 2,
              child: SizedBox(
                height:50,
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                    ScreenConstant.spacingAllExtraSmall,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Color(0xFFC4C4C4),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Color(0xFFC4C4C4),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Color(0xFFC4C4C4),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    errorBorder:
                    const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Color(0xFFE8503A),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    focusedErrorBorder:
                    const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Color(0xFFE8503A),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                  ),
                  hint: Text(
                    "Data",
                    style: CustomTextStyles.medium12TextStyleTablet,
                  ),

                  icon: Image.asset(
                    "asset/icons/tablet/download_10.png",
                  ),
                  isExpanded: true,
                  iconSize: ScreenConstant.drawerIconSize8,
                  style: CustomTextStyles.medium12TextStyleTablet,
                  items: ["Data1", "Data2"].map(
                        (val) {
                      return DropdownMenuItem<String>(
                        value: val,
                        child: Text(val),
                      );
                    },
                  ).toList(),
                  onChanged: (val) {
                    // _homeController.selectedLocation = val;
                  },
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 10.ss,
        ),
        Row(
          children: [

            Expanded(
              flex: 4,
              child: SizedBox(
                height:50,
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                    ScreenConstant.spacingAllExtraSmall,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Color(0xFFC4C4C4),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Color(0xFFC4C4C4),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Color(0xFFC4C4C4),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    errorBorder:
                    const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Color(0xFFE8503A),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    focusedErrorBorder:
                    const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Color(0xFFE8503A),
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                  ),
                  hint: Text(
                    "Ready & Off-Plan",
                  ),

                  icon: Image.asset(
                    "asset/icons/tablet/download_10.png",
                  ),
                  isExpanded: true,
                  iconSize: ScreenConstant.drawerIconSize8,
                  style: CustomTextStyles.medium12TextStyleTablet,
                  items: ["Data1", "Data2"].map(
                        (val) {
                      return DropdownMenuItem<String>(
                        value: val,
                        child: Text(val),
                      );
                    },
                  ).toList(),
                  onChanged: (val) {
                    // _homeController.selectedLocation = val;
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0,left: 10),
              child: Row(
                children: [
                  Expanded(flex:0,child: Image.asset("asset/icons/tablet/Bookmark_light_filter.png",color: Colors.black,  height: 24,)),
                  Container(width: ScreenConstant.defaultWidthTen,),
                  Expanded(flex:0,child: Image.asset("asset/icons/tablet/menu_filter.png",color: Colors.black,  height: 15,)),
                ],
              ),
            )
          ],
        ),
        GridView.builder(
          // Set padding and spacing between cards.
          padding: const EdgeInsets.all(10),
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
            return PropertyCardWidgetTablet();
          },
          // Set the grid view to shrink wrap its contents.
          shrinkWrap: true,
          // Disable scrolling in the grid view.
          physics: const NeverScrollableScrollPhysics(),
        ),
      ],)
      ,),),),):Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Color(0xFF1E1E1E).withOpacity(0.1)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.ss),
            child: ListView(
              children: [
                Container(
                  height: 10.ss,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 22,
                      child:
                      Material(elevation: 1,borderRadius: BorderRadius.circular(10),child:
                      SizedBox(
                        height:50,
                        child: TextFormField(
                          controller: _homeController.searchPropertiesController,
                          keyboardType: TextInputType.emailAddress,
                          autofocus: false,
                          maxLines: 1,
                          cursorColor: AppColors.primaryColor,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          style: TextStyle(
                            color: const Color(0xFF111A24),
                            fontSize: 14.fss,
                            fontFamily: 'Gordita',
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Building, Area...",
                            hintStyle: CustomTextStyles.medium12TextStyleTablet,
                            errorStyle: TextStyle(
                              color: const Color(0xFFE8503A),
                              fontSize: 12.fss,
                              fontFamily: 'Gordita',
                            ),
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(left: 5.0.ss),
                              child: Icon(
                                Icons.search_rounded,
                                color: Color(0xFF0A2342),
                                size: 24,
                              ),
                            ),
                            suffixIcon: Padding(
                              padding: EdgeInsets.only(right: 5.0.ss),
                              child: Icon(
                                Icons.cancel_outlined,
                                color: Color(0xFF0A2342),
                                size: 24,
                              ),
                            ),

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
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(right: 3.ss),
                        child: Material(elevation: 2,borderRadius: BorderRadius.circular(10),child:
                        badges.Badge(
                          badgeStyle: badges.BadgeStyle(
                            badgeColor: Colors.red,
                          ),
                          position:
                          badges.BadgePosition.custom(top: -8.v, end: -5.h),
                          badgeContent: Text("2",
                            style: TextStyle(color: Colors.white),
                          ),
                          child:Container(
                            height:50,

                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Image.asset(
                                "asset/icons/tablet/sliders.png",
                                height: ScreenConstant.defaultHeightTwentyThree,
                              ),
                            ),
                            //child: Image.asset("asset/icons/tablet/sliders.png",height: 15.ss,),
                          ),)),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 10.ss,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        height:50,
                        child: DropdownButtonFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding:
                            ScreenConstant.spacingAllExtraSmall,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFC4C4C4),
                                  width: 1,
                                  style: BorderStyle.solid),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFC4C4C4),
                                  width: 1,
                                  style: BorderStyle.solid),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFC4C4C4),
                                  width: 1,
                                  style: BorderStyle.solid),
                            ),
                            errorBorder:
                            const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFE8503A),
                                  width: 1,
                                  style: BorderStyle.solid),
                            ),
                            focusedErrorBorder:
                            const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFE8503A),
                                  width: 1,
                                  style: BorderStyle.solid),
                            ),
                          ),
                          hint: Text(
                            "Data",
                            style: CustomTextStyles.medium12TextStyleTablet,
                          ),
                          icon: Image.asset(
                            "asset/icons/tablet/download_10.png",
                          ),
                          isExpanded: true,
                          iconSize: ScreenConstant.drawerIconSize8,
                          style: CustomTextStyles.medium12TextStyleTablet,
                          items: ["Data1", "Data2"].map(
                                (val) {
                              return DropdownMenuItem<String>(
                                value: val,
                                child: Text(val),
                              );
                            },
                          ).toList(),
                          onChanged: (val) {
                            // _homeController.selectedLocation = val;
                          },
                        ),
                      ),
                    ),
                    Container(width: getTabletHorizontalSize(10),),
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        height:50,
                        child: DropdownButtonFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding:
                            ScreenConstant.spacingAllExtraSmall,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFC4C4C4),
                                  width: 1,
                                  style: BorderStyle.solid),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFC4C4C4),
                                  width: 1,
                                  style: BorderStyle.solid),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFC4C4C4),
                                  width: 1,
                                  style: BorderStyle.solid),
                            ),
                            errorBorder:
                            const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFE8503A),
                                  width: 1,
                                  style: BorderStyle.solid),
                            ),
                            focusedErrorBorder:
                            const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFE8503A),
                                  width: 1,
                                  style: BorderStyle.solid),
                            ),
                          ),
                          hint: Text(
                            "Data",
                            style: CustomTextStyles.medium12TextStyleTablet,
                          ),

                          icon: Image.asset(
                            "asset/icons/tablet/download_10.png",
                          ),
                          isExpanded: true,
                          iconSize: ScreenConstant.drawerIconSize8,
                          style: CustomTextStyles.medium12TextStyleTablet,
                          items: ["Data1", "Data2"].map(
                                (val) {
                              return DropdownMenuItem<String>(
                                value: val,
                                child: Text(val),
                              );
                            },
                          ).toList(),
                          onChanged: (val) {
                            // _homeController.selectedLocation = val;
                          },
                        ),
                      ),
                    ),
                    Container(width: getTabletHorizontalSize(10),),
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        height:50,
                        child: DropdownButtonFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding:
                            ScreenConstant.spacingAllExtraSmall,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFC4C4C4),
                                  width: 1,
                                  style: BorderStyle.solid),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFC4C4C4),
                                  width: 1,
                                  style: BorderStyle.solid),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFC4C4C4),
                                  width: 1,
                                  style: BorderStyle.solid),
                            ),
                            errorBorder:
                            const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFE8503A),
                                  width: 1,
                                  style: BorderStyle.solid),
                            ),
                            focusedErrorBorder:
                            const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFE8503A),
                                  width: 1,
                                  style: BorderStyle.solid),
                            ),
                          ),
                          hint: Text(
                            "Data",
                            style: CustomTextStyles.medium12TextStyleTablet,
                          ),

                          icon: Image.asset(
                            "asset/icons/tablet/download_10.png",
                          ),
                          isExpanded: true,
                          iconSize: ScreenConstant.drawerIconSize8,
                          style: CustomTextStyles.medium12TextStyleTablet,
                          items: ["Data1", "Data2"].map(
                                (val) {
                              return DropdownMenuItem<String>(
                                value: val,
                                child: Text(val),
                              );
                            },
                          ).toList(),
                          onChanged: (val) {
                            // _homeController.selectedLocation = val;
                          },
                        ),
                      ),
                    ),
                    Container(width: getTabletHorizontalSize(10),),
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        height:50,
                        child: DropdownButtonFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding:
                            ScreenConstant.spacingAllExtraSmall,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFC4C4C4),
                                  width: 1,
                                  style: BorderStyle.solid),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFC4C4C4),
                                  width: 1,
                                  style: BorderStyle.solid),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFC4C4C4),
                                  width: 1,
                                  style: BorderStyle.solid),
                            ),
                            errorBorder:
                            const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFE8503A),
                                  width: 1,
                                  style: BorderStyle.solid),
                            ),
                            focusedErrorBorder:
                            const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFE8503A),
                                  width: 1,
                                  style: BorderStyle.solid),
                            ),
                          ),
                          hint: Text(
                            "Data",
                            style: CustomTextStyles.medium12TextStyleTablet,
                          ),

                          icon: Image.asset(
                            "asset/icons/tablet/download_10.png",
                          ),
                          isExpanded: true,
                          iconSize: ScreenConstant.drawerIconSize8,
                          style: CustomTextStyles.medium12TextStyleTablet,
                          items: ["Data1", "Data2"].map(
                                (val) {
                              return DropdownMenuItem<String>(
                                value: val,
                                child: Text(val),
                              );
                            },
                          ).toList(),
                          onChanged: (val) {
                            // _homeController.selectedLocation = val;
                          },
                        ),
                      ),
                    ),
                    Container(width: ScreenConstant.defaultWidthTen,),
                    Expanded(
                      flex: 4,
                      child: SizedBox(
                        height:50,
                        child: DropdownButtonFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding:
                            ScreenConstant.spacingAllExtraSmall,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFC4C4C4),
                                  width: 1,
                                  style: BorderStyle.solid),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFC4C4C4),
                                  width: 1,
                                  style: BorderStyle.solid),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFC4C4C4),
                                  width: 1,
                                  style: BorderStyle.solid),
                            ),
                            errorBorder:
                            const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFE8503A),
                                  width: 1,
                                  style: BorderStyle.solid),
                            ),
                            focusedErrorBorder:
                            const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFE8503A),
                                  width: 1,
                                  style: BorderStyle.solid),
                            ),
                          ),
                          hint: Text(
                            "Ready & Off-Plan",
                          ),

                          icon: Image.asset(
                            "asset/icons/tablet/download_10.png",
                          ),
                          isExpanded: true,
                          iconSize: ScreenConstant.drawerIconSize8,
                          style: CustomTextStyles.medium12TextStyleTablet,
                          items: ["Data1", "Data2"].map(
                                (val) {
                              return DropdownMenuItem<String>(
                                value: val,
                                child: Text(val),
                              );
                            },
                          ).toList(),
                          onChanged: (val) {
                            // _homeController.selectedLocation = val;
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0,left: 10),
                      child: Row(
                        children: [
                          Expanded(flex:0,child: Image.asset("asset/icons/tablet/Bookmark_light_filter.png",color: Colors.black,  height: 24,)),
                          Container(width: ScreenConstant.defaultWidthTen,),
                          Expanded(flex:0,child: Image.asset("asset/icons/tablet/menu_filter.png",color: Colors.black,  height: 15,)),
                        ],
                      ),
                    )
                  ],
                ),
                GridView.builder(
                  // Set padding and spacing between cards.
                  padding: const EdgeInsets.all(10),
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
                    return PropertyCardWidgetTablet();
                  },
                  // Set the grid view to shrink wrap its contents.
                  shrinkWrap: true,
                  // Disable scrolling in the grid view.
                  physics: const NeverScrollableScrollPhysics(),
                ),
                // Container(height: 15.ss),
                // SizedBox(
                //   height: ScreenConstant.screenHeightHalf +80,
                //   child: ListView.separated(
                //     shrinkWrap: true,
                //     scrollDirection: Axis.horizontal,
                //     itemCount: 6,
                //     itemBuilder: (context, i) {
                //       return const PropertyCardWidgetTablet();
                //     }, separatorBuilder: (BuildContext context, int index) { return Container(width: 20.ss,); },
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
