import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:get/get.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:sizing/sizing.dart';
import '../../../../device_manger/screen_constants.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/theme/custom_text_style.dart';
import '../../../../utils/widows_size_utilis.dart';
import '../../../customButton/controller/elevated_button_controller.dart';
import '../../controller/home_controller.dart';
import '../../widget/tablet/property_card_widget_tablet.dart';
import '../../widget/web/property_card_widget_web.dart';
import '../tablet/my_properties_tablet.dart';
import 'package:badges/badges.dart' as badges;
class HomeScreenWeb extends StatelessWidget {
  HomeScreenWeb({Key? key, }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return


      LayoutBuilder(builder: (_, constraints) {

        return
          HomeScreenWebResponsive(viewportWidth: constraints.maxWidth,);
      });


  }
}
class HomeScreenWebResponsive extends StatelessWidget {
  HomeScreenWebResponsive({Key? key,required this.viewportWidth}) : super(key: key);
   final double viewportWidth;
  final HomeController _homeController = Get.put(HomeController());
  ElevatedButtonController elevatedButtonController = Get.put(ElevatedButtonController());
  @override
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
      columnsCount = 3;
      iconSize = 40;
    }
    else if (ResponsiveUtils.isTablet(context)) {
      columnsCount = 2;
      iconSize = 40;
    }
    bool? isLandscape =
        MediaQuery.of(context).orientation == Orientation.portrait;
    final GlobalKey _containerKey = GlobalKey();
    return Scaffold(
      appBar:       AppBar(
        scrolledUnderElevation: 0.0,
        centerTitle: true,
        backgroundColor:Color(0xFF1E1E1E).withOpacity(0.1),
        leadingWidth: 200,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(children: [
            InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Color(0xFF222222),
                  size: getWebSize(24),
                )),
            Container(
              width: getWebSize(10),
            ),
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Text(
                "Back",
                style: CustomTextStyles.regular18232323WithOutOpacityTablet,
              ),
            ),
          ],),
        ),
      ),
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: ScreenConstant.screenWidthHalf),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 21,
                        child:
                        Material(elevation: 1,borderRadius: BorderRadius.circular(10),child:
                        SizedBox(
                          height: ScreenConstant.defaultHeightSixty,
                          child: TextFormField(
                            controller: _homeController.searchPropertiesController,
                            keyboardType: TextInputType.emailAddress,
                            autofocus: false,
                            maxLines: 1,
                            cursorColor: AppColors.primaryColor,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            style: CustomTextStyles.medium12WithHeight1TextStyleTablet,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Building, Area...",
                              hintStyle: CustomTextStyles.medium12WithHeight1TextStyleTablet,
                              errorStyle: TextStyle(
                                color: const Color(0xFFE8503A),
                                fontSize: 12.fss,
                                fontFamily: 'Gordita',
                              ),
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(left: 5.0.ss,right: 5.0.ss),
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
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.ss),
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
                              height: ScreenConstant.defaultHeightSixty,
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
                ),
                Container(
                  height: 10.ss,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: ScreenConstant.screenWidthHalf),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: SizedBox(
                          height: ScreenConstant.defaultHeightSixty,
                          child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding:
                              getWebPadding(all: 10),
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
                              style: CustomTextStyles.dropdownTextStyleTablet,
                            ),

                            icon: Image.asset(
                              "asset/icons/tablet/download_10.png",
                            ),
                            isExpanded: true,
                            iconSize: ScreenConstant.drawerIconSize8,
                            style: CustomTextStyles.dropdownTextStyleTablet,
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
                      Container(width: ScreenConstant.defaultWidthTen),
                      Expanded(
                        flex: 2,
                        child: SizedBox(
                          height: ScreenConstant.defaultHeightSixty,
                          child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding:
                              getWebPadding(all: 10),
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
                              style: CustomTextStyles.dropdownTextStyleTablet,
                            ),

                            icon: Image.asset(
                              "asset/icons/tablet/download_10.png",
                            ),
                            isExpanded: true,
                            iconSize: ScreenConstant.drawerIconSize8,
                            style: CustomTextStyles.dropdownTextStyleTablet,
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
                      Container(width: ScreenConstant.defaultWidthTen),
                      Expanded(
                        flex: 2,
                        child: SizedBox(
                          height: ScreenConstant.defaultHeightSixty,
                          child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding:
                              getWebPadding(all: 10),
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
                              style: CustomTextStyles.dropdownTextStyleTablet,
                            ),

                            icon: Image.asset(
                              "asset/icons/tablet/download_10.png",
                            ),
                            isExpanded: true,
                            iconSize: ScreenConstant.drawerIconSize8,
                            style: CustomTextStyles.dropdownTextStyleTablet,
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
                      Container(width: ScreenConstant.defaultWidthTen),
                      Expanded(
                        flex: 2,
                        child: SizedBox(
                          height: ScreenConstant.defaultHeightSixty,
                          child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding:
                              getWebPadding(all: 10),
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
                              style: CustomTextStyles.dropdownTextStyleTablet,
                            ),

                            icon: Image.asset(
                              "asset/icons/tablet/download_10.png",
                            ),
                            isExpanded: true,
                            iconSize: ScreenConstant.drawerIconSize8,
                            style: CustomTextStyles.dropdownTextStyleTablet,
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
                      Container(width: ScreenConstant.defaultWidthTen),
                      Expanded(
                        flex: 4,
                        child: SizedBox(
                          height: ScreenConstant.defaultHeightSixty,
                          child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding:
                              getWebPadding(all: 10),
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
                              style: CustomTextStyles.dropdownTextStyleTablet,
                            ),

                            icon: Image.asset(
                              "asset/icons/tablet/download_10.png",
                            ),
                            isExpanded: true,
                            iconSize: ScreenConstant.drawerIconSize8,
                            style:CustomTextStyles.dropdownTextStyleTablet,
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
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          children: [
                            Container(width: 15,),
                            Expanded(flex:0,child: Image.asset("asset/icons/tablet/Bookmark_light_filter.png",color: Colors.black,  height: 30,)),
                            Container(width: 15,),
                            Expanded(flex:0,child: Image.asset("asset/icons/tablet/menu_filter.png",color: Colors.black,  height: 20,)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                GridView.builder(
                  // Set padding and spacing between cards.
                  padding: const EdgeInsets.all(10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    // Set the number of columns based on the device's screen size.
                    crossAxisCount: columnsCount,
                    // Set the aspect ratio of each card.
                    childAspectRatio: 3 / 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  // Set the number of items in the grid view.
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    // Build each card in the grid view.
                    return PropertyCardWidgetWeb();
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
