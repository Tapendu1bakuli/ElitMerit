import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/core/utils/image_constant.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/phone_size_utils.dart';
import 'package:main/utils/theme/app_decoration.dart';
import 'package:main/utils/widgets_utils/widgets/custom_image_view.dart';
import 'package:main/views/dashboard/widget/mobile/favorite_property_mobile.dart';
import 'package:sizing/sizing.dart';

import '../../../../device_manger/screen_constants.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/tablet_size_utils.dart';
import '../../../../utils/theme/custom_button_style.dart';
import '../../../../utils/theme/custom_text_style.dart';
import '../../../../utils/widgets_utils/widgets/custom_elevated_button.dart';
import '../../../customButton/controller/elevated_button_controller.dart';
import '../../controller/home_controller.dart';
import '../../widget/mobile/tab_widget.dart';
import '../../widget/tablet/favourite_and_saved_cards_tablet.dart';
import 'my_properties_tablet.dart';

class FavoritesAndSavedFiltersTablet extends StatelessWidget {
  FavoritesAndSavedFiltersTablet({super.key});
  final HomeController _homeController = Get.put(HomeController());
  ElevatedButtonController elevatedButtonController = Get.put(ElevatedButtonController());
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



    debugPrint("width :" + SizeUtils.figmaDesignWidth.toString());
    debugPrint("height :" + SizeUtils.figmaDesignHeight.toString());

    bool? isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
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
                        height: ScreenConstant.defaultHeightSixty,
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
                            hintText: "Search Properties",
                            hintStyle: CustomTextStyles.medium12TextStyleTablet,
                            errorStyle: TextStyle(
                              color: const Color(0xFFE8503A),
                              fontSize: 12.fss,
                              fontFamily: 'Gordita',
                            ),
                            prefixIcon: Icon(
                              Icons.search_rounded,
                              color: Color(0xFF0A2342),
                              size: 24,
                            ),
                            suffixIcon: Icon(
                              Icons.cancel_outlined,
                              color: Color(0xFF0A2342),
                              size:24,
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
                      flex: isLandscape ?1 :2,
                      child: Material(elevation: 2,borderRadius: BorderRadius.circular(10),child:
                      Container(
                        height: ScreenConstant.defaultHeightSixty,
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
                      ),),
                    ),
                  ],
                ),
                Container(height: 15.v),
                Padding(
                  padding: getPadding(left: 2,right: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(flex: 5,child: Obx(
                            () => GestureDetector(
                          onTap: () {
                            _homeController.favotitesSelected.value = true;
                            _homeController.savedSelected.value = false;
                          },
                          child: TabWidget(
                            isSelected: _homeController.favotitesSelected.value,
                            text: 'Favorites List',
                          ),
                        ),
                      ),)
                      ,
                      SizedBox(
                        width: getTabletSize(15),
                      ),
                      Expanded(flex: 5,child: Obx(
                            () => GestureDetector(
                          onTap: () {
                            _homeController.favotitesSelected.value = false;
                            _homeController.savedSelected.value = true;
                          },
                          child: TabWidget(
                            isSelected: _homeController.savedSelected.value,
                            text: 'Saved Filters',
                          ),
                        ),
                      ),)
                    ],
                  ),
                ),
                Padding(
                  padding: getTabletPadding(left: 2,right: 2),
                  child: Container(height: 1.5,color: Color(0xFF50C878),),
                ),
                Container(height: 15.v),
                isLandscape ?
                GridView.builder(
                  // Set padding and spacing between cards.
                  padding: const EdgeInsets.all(10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    // Set the number of columns based on the device's screen size.
                    crossAxisCount: columnsCount,
                    // Set the aspect ratio of each card.
                    childAspectRatio: 3/3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  // Set the number of items in the grid view.
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    // Build each card in the grid view.
                    return FavouriteCardsTablet();
                  },
                  // Set the grid view to shrink wrap its contents.
                  shrinkWrap: true,
                  // Disable scrolling in the grid view.
                  physics: const NeverScrollableScrollPhysics(),
                ):

                ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 22.v);
                  },
                  //scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemBuilder: (context, i) {
                    return  _favoritesListView();
                  },

                ),

                Container(height: 15.v),

              ],
            ),
          ),
        ),
      ),
    );
  }

  _favoritesListView(){
    return Center(
      child: Container(
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
              child:
              Stack(children: [
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        height: 212.v,
                        width: Get.width,
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: ScreenConstant.defaultHeightFifteen
                                  ,left: 20,right: 20
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgRectangle4232,
                                height: 212.v,
                                width: Get.width,
                                radius: BorderRadius.circular(
                                  16.h,
                                ),
                                alignment: Alignment.center,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: 17.v,
                                  right: 25.ss,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      decoration: BoxDecoration(
                                          color: Colors.red.withOpacity(0.8),
                                          borderRadius: BorderRadius.circular(20)),
                                      child:  Icon(
                                        Icons.favorite_border_rounded,
                                        size: 14.adaptSize,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        left: 10.h,
                                        bottom: 3.v,
                                      ),
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      decoration: AppDecoration.fillGray.copyWith(
                                        borderRadius:BorderRadius.circular(20),
                                      ),
                                      child:  CustomImageView(
                                        imagePath: ImageConstant.imgNotification,
                                        height: 18.adaptSize,
                                        width: 18.adaptSize,
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
                Positioned(left: 12.ss,bottom: 0,child:  CustomElevatedContainer(
                    color: Color(0xFF50C878),
                    border: Border.all(color: Colors.white),
                    width: Get.width/2,
                    height: 35.v,
                    text: "Purchase price : 54,300,000 AED",
                    richText: RichText(
                      text:  TextSpan(
                        text: '54,300,000 AED',
                        style: CustomTextStyles.semiBold14Mobile.copyWith(
                          fontSize : 12.fss
                        ),
                        children: [
                          TextSpan(
                            text: ' 54,300,000 AED',
                            style: CustomTextStyles.light14FFFFFFMobile.copyWith(
                                fontSize : 12.fss
                            ),
                          ),
                        ],
                      ),
                    ),
                    //margin: EdgeInsets.only(right: 15.h),
                    buttonStyle:
                    CustomButtonStyles.fillPrimary),)

              ],),
            ),


            Container(
              height: 10.v,
            ),
            Padding(padding: EdgeInsets.only(left: 20.ss),child:
            Text('Excepteur sint occaecat cupidatat',
                style: CustomTextStyles.medium16BlackMobile.copyWith(
                    fontSize : 12.fss
                ),),
            ),
            Container(
              height: 5.v,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.ss),
              child:
              Row(
                children: [
                  SvgPicture.asset('asset/icons/tablet/pin.svg'),
                  SizedBox(
                    width: getSize(5),
                  ),
                  Text(
                      "12 no Excepteur sint occaeca",
                      style: CustomTextStyles.light12Mobile.copyWith(
                          fontSize : 8.fss
                      ),),
                  SizedBox(
                    width: getSize(10),
                  ),
                  Container(
                    width: getSize(2),
                    height: getSize(17),
                    color: Color(0xffD9D9D9),
                  ),
                  SizedBox(
                    width: getSize(10),
                  ),
                  SvgPicture.asset('asset/icons/tablet/cal_add.svg'),
                  SizedBox(
                    width: getSize(5),
                  ),
                  Text(
                    "4 months ago ...",
                    style: CustomTextStyles.light9Mobile.copyWith(
                        fontSize : 8.fss
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: getSize(15),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.ss),
              child: Text(
                'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi ',
                style: CustomTextStyles.light10Mobile.copyWith(
                    fontSize : 10.fss
                ),
              ),
            ),
            SizedBox(
              height: getSize(10),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.ss),
              child:
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.zero,
                    child: SvgPicture.asset(
                      "asset/icons/tablet/bed.svg",
                    ),
                  ),
                  Container(
                    width: 5.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      "3",
                      style: GoogleFonts.poppins(
                        fontSize: 10.fss,
                        color: AppColors.primaryColor,
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
                    ),
                  ),
                  Container(
                    width: 5.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      "2",
                      style: GoogleFonts.poppins(
                        fontSize: 10.fss,
                        color: AppColors.primaryColor,
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
                    ),
                  ),
                  Container(
                    width: 5.ss,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "12,254 ",
                      style: GoogleFonts.poppins(
                        fontSize: 10.fss,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "sqft",
                      style: GoogleFonts.poppins(
                        fontSize: 10.fss,
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
                      width: 12.ss,
                      height: 12.ss,
                    ),
                  ),
                  Container(
                    width: 5.ss,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      "2",
                      style: GoogleFonts.poppins(
                        fontSize: 10.fss,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),),
            SizedBox(height: 15.v),
          ],
        ),

      ),
    );
  }

}
