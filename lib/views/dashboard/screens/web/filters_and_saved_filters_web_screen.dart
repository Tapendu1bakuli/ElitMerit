import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/widows_size_utilis.dart';
import '../../../../device_manger/screen_constants.dart';
import 'package:main/views/authentication/controller/authentication_controller.dart';
import 'package:main/utils/tablet_size_utils.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:main/views/customButton/controller/elevated_button_controller.dart';
import 'package:main/views/dashboard/controller/home_controller.dart';
import 'package:main/views/dashboard/screens/tablet/my_properties_tablet.dart';
import 'package:main/views/dashboard/widget/tablet/toggel_button_widget.dart';
import 'package:main/views/dashboard/widget/web/favourite_and_saved_cards_web.dart';
import 'package:sizing/sizing.dart';
import 'package:badges/badges.dart' as badges;

class FilterAndSavedFilterWebScreen extends StatefulWidget {
  const FilterAndSavedFilterWebScreen({super.key});

  @override
  State<FilterAndSavedFilterWebScreen> createState() =>
      _FilterAndSavedFilterWebScreenState();
}

class _FilterAndSavedFilterWebScreenState
    extends State<FilterAndSavedFilterWebScreen> {
  final HomeController _homeController = Get.put(HomeController());
  final AuthenticationController _authenticationController =
      Get.put(AuthenticationController());
  ElevatedButtonController elevatedButtonController =
      Get.put(ElevatedButtonController());

  @override
  Widget build(BuildContext context) {
    // Set the default number of columns to 3.
    int columnsCount = 3;

    // Define the icon size based on the screen width
    double iconSize = 45;

    // Use the ResponsiveUtils class to determine the device's screen size.
    if (ResponsiveUtils.isMobile(context)) {
      columnsCount = 1;
      iconSize = 30;
    } else if (ResponsiveUtils.isDesktop(context)) {
      columnsCount = 2;
      iconSize = 40;
    } else if (ResponsiveUtils.isTablet(context)) {
      columnsCount = 2;
      iconSize = 40;
    }

    debugPrint("width :${SizeUtils.figmaDesignWidth}");
    debugPrint("height :${SizeUtils.figmaDesignHeight}");
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        leadingWidth: 200,
        leading: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Row(
            children: [
              GestureDetector(
                  onTap: () => Get.back(),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        size: getWebSize(24),
                      ),
                      Text(
                        'Back',
                        style: CustomTextStyles
                            .regular18232323WithOutOpacityTablet,
                      ),
                    ],
                  )),
            ],
          ),
        ),
        backgroundColor: AppColors.webBgColor,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(color: AppColors.webBgColor),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.ss),
            child: ListView(
              children: [
                Container(
                  height: 10.ss,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 22,
                        child: Material(
                          elevation: 1,
                          borderRadius: BorderRadius.circular(10),
                          child: TextFormField(
                            cursorHeight: 15.ss,
                            controller:
                                _homeController.searchPropertiesController,
                            keyboardType: TextInputType.emailAddress,
                            autofocus: false,
                            maxLines: 1,
                            cursorColor: AppColors.primaryColor,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            style: TextStyle(
                              color: const Color(0xFF111A24),
                              fontSize: 14.fss,
                              fontFamily: 'Gordita',
                            ),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Search Properties",
                              prefixIconConstraints: BoxConstraints(
                                maxHeight: 25.ss
                              ) ,
                              suffixIconConstraints: BoxConstraints(
                                  maxHeight: 25.ss
                              ) ,
                              hintStyle:
                                  CustomTextStyles.medium12TextStyleTablet,
                              errorStyle: TextStyle(
                                color: const Color(0xFFE8503A),
                                fontSize: 12.fss,
                                fontFamily: 'Gordita',
                              ),
                              prefixIcon:  SvgPicture.asset(
                                "asset/icons/tablet/ic_search.svg",
                                height: 25.ss,

                              ).paddingOnly(left: 20,right: 5.ss),
                              suffixIcon: SvgPicture.asset(
                                "asset/icons/tablet/close_ring_light.svg",
                                height: 22.ss,
                              ).paddingOnly(right: 10.ss),

                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Color(0xFFC4C4C4),
                                  width: 1,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Color(0xFFC4C4C4),
                                  width: 1,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Color(0xFFC4C4C4),
                                  width: 1,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Color(0xFFE8503A),
                                  width: 1,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Color(0xFFE8503A),
                                  width: 1,
                                  style: BorderStyle.solid,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: getWebSize(15),
                      ),
                      Expanded(
                        flex: 1,
                        child: Material(
                          elevation: 2,
                          borderRadius: BorderRadius.circular(10),
                          child: badges.Badge(
                            badgeStyle: const badges.BadgeStyle(
                              badgeColor: Colors.red,
                            ),
                            position:
                            badges.BadgePosition.custom(top: -10.ss, end: -2.ss),
                            badgeContent: Text(
                              '2',
                              style: TextStyle(color: Colors.white,fontSize: 8.fss),
                            ),
                            child: Container(
                              height: 60,

                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Image.asset(
                                  "asset/icons/tablet/sliders.png",
                                  scale: 2.8,
                                ),
                              ),
                            ),
                            //child: Image.asset("asset/icons/tablet/sliders.png",height: 15.ss,),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(height: 15.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(
                      () => GestureDetector(
                        onTap: () {
                          _authenticationController.favotitesSelected.value =
                              true;
                          _authenticationController.savedSelected.value = false;
                        },
                        child: SizedBox(
                          width: 200.ss,
                          height: 40.ss,
                          child: ToggleButtonWidgetTablet(
                            isSelected: _authenticationController
                                .favotitesSelected.value,
                            text: 'Favorites List',
                          ),
                        ),
                      ),
                    ),
                    Obx(
                      () => GestureDetector(
                        onTap: () {
                          _authenticationController.favotitesSelected.value =
                              false;
                          _authenticationController.savedSelected.value = true;
                        },
                        child: SizedBox(
                          width: 200.ss,
                          height: 40.ss,
                          child: ToggleButtonWidgetTablet(
                            isSelected:
                                _authenticationController.savedSelected.value,
                            text: 'Saved Filters',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Container(height: 15.v),
                GridView.builder(
                  // Set padding and spacing between cards.
                  padding: const EdgeInsets.all(10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    // Set the number of columns based on the device's screen size.
                    crossAxisCount: 3,
                    // Set the aspect ratio of each card.
                    childAspectRatio: 3 / 3.4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  // Set the number of items in the grid view.
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    // Build each card in the grid view.
                    return const FavouriteCardsWeb();
                  },
                  // Set the grid view to shrink wrap its contents.
                  shrinkWrap: true,
                  // Disable scrolling in the grid view.
                  physics: const NeverScrollableScrollPhysics(),
                ),
                Container(height: 15.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
