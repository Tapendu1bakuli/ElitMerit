import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizing/sizing.dart';
import '../../../../device_manger/screen_constants.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/theme/custom_text_style.dart';
import '../../../../utils/widgets_utils/mobile/common_button.dart';
import '../../controller/home_controller.dart';
import '../../widget/mobile/common_card_mobile.dart';
import '../../widget/web/similar_property_widget_web.dart';
import '../tablet/my_properties_tablet.dart';

class PropertyDetailWeb extends StatefulWidget {
  PropertyDetailWeb({super.key});

  @override
  State<PropertyDetailWeb> createState() => _PropertyDetailWebState();
}

class _PropertyDetailWebState extends State<PropertyDetailWeb> {
  final HomeController _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .apply(displayColor: Theme.of(context).colorScheme.onSurface);

    // Set the default number of columns to 3.
    int columnsCount = 2;

    // Define the icon size based on the screen width
    double iconSize = 45;

    // Use the ResponsiveUtils class to determine the device's screen size.
    if (ResponsiveUtils.isMobile(context)) {
      columnsCount = 1;
      iconSize = 30;
    } else if (ResponsiveUtils.isDesktop(context)) {
      columnsCount = 3;
      iconSize = 40;
    } else if (ResponsiveUtils.isTablet(context)) {
      columnsCount = 2;
      iconSize = 40;
    }
    bool? isLandscape =
        MediaQuery.of(context).orientation == Orientation.portrait;
    print("Web");
    List<String> images = [
      'asset/images/mobile/Rectangle 4231-1.png',
      'asset/images/mobile/Rectangle 4231-1.png',
      'asset/images/mobile/Rectangle 4231-1.png'
    ];
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xFF1E1E1E).withOpacity(0.1)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: ScreenConstant.screenHeightFifth),
                    child: Container(
                      height: Get.height / 1.1,
                      child: Swiper(
                        itemBuilder: (context, index) {
                          return Image.asset(
                            images[index],
                            fit: BoxFit.fill,
                          );
                        },
                        autoplay: true,
                        itemCount: images.length,
                        scrollDirection: Axis.horizontal,
                        pagination: SwiperPagination(
                            margin: EdgeInsets.only(bottom: 80.ss),
                            alignment: Alignment.bottomCenter),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30.ss,
                    top: 20.ss,
                    child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: CircleAvatar(
                          radius: 10.ss,
                          backgroundColor: Colors.black54,
                          child: Image.asset(
                            'asset/images/tablet/arrow_back.png',
                            scale: 2,
                            color: AppColors.whiteColor,
                          )),
                    ),
                  ),
                  Positioned(
                      right: ScreenConstant.screenHeightEight,
                      left: ScreenConstant.screenHeightEight,
                      bottom: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          color: Colors.white,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(
                                          color: Colors.black.withOpacity(0.2),
                                          // Border color
                                          width: 1.0, // Border width
                                        ),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10.ss, horizontal: 15.ss),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 30.ss,
                                            width: ScreenConstant
                                                .screenHeightThird,
                                            decoration: BoxDecoration(
                                              color: AppColors.darkBlueColor,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: 30.ss,
                                                  margin: const EdgeInsets.only(
                                                      right: 10),
                                                  width: 60.ss,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        AppColors.primaryColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Text(
                                                    'For Sale:',
                                                    style: CustomTextStyles
                                                        .medium14TextStyleTablet,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    '54,300,000 AED',
                                                    style: CustomTextStyles
                                                        .medium14TextStyleTablet,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 10.ss,
                                          ),
                                          Row(
                                            children: [
                                              SvgPicture.asset(
                                                  'asset/icons/tablet/pin.svg',height: 18,),
                                              Container(
                                                width: 2.ss,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "12 no Excepteur sint occaecat cuoidatat",
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 10.fss,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            height: 10.ss,
                                          ),
                                          Table(
                                            border: TableBorder.symmetric(
                                              outside: BorderSide.none,
                                              inside: BorderSide(
                                                width: 1,
                                                color: Colors.black
                                                    .withOpacity(0.2),
                                              ),
                                            ),
                                            children: [
                                              TableRow(children: [
                                                _tableDataView(
                                                    icon:
                                                        'asset/icons/tablet/Apartment.svg',
                                                    title: 'Type : ',
                                                    subTitle: 'Apartment'),
                                                _tableDataView(
                                                        icon:
                                                            'asset/icons/tablet/dock.svg',
                                                        title: 'Status : ',
                                                        subTitle:
                                                            'Ready,\nvacant,under')
                                                    .marginOnly(left: 5),
                                              ]),
                                              TableRow(children: [
                                                _tableDataView(
                                                    icon:
                                                        'asset/icons/tablet/Full_alt_light.svg',
                                                    title: 'Size : ',
                                                    subTitle: '1,235 sqft'),
                                                _tableDataView(
                                                        icon:
                                                            'asset/icons/tablet/armchair_1.svg',
                                                        title: 'Furnished : ',
                                                        subTitle: 'Fully')
                                                    .marginOnly(left: 5),
                                              ]),
                                              TableRow(children: [
                                                _tableDataView(
                                                    icon:
                                                        'asset/icons/tablet/Layers_light.svg',
                                                    title: 'Floor : ',
                                                    subTitle: '32'),
                                                _tableDataView(
                                                        icon:
                                                            'asset/icons/tablet/parking.svg',
                                                        title: 'Parking : ',
                                                        subTitle: '2')
                                                    .marginOnly(left: 5),
                                              ]),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Expanded(
                                  flex: 6,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10.ss, horizontal: 10.ss),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 15,
                                        ),
                                        Text(
                                          "Excepteur sint occaecat cuoidatat",
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          height: 5.ss,
                                        ),
                                        Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
                                          " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
                                          "Excepteur sint occaecat cupidatat non proident, sunt in culpa ",
                                          style: GoogleFonts.poppins(
                                              fontSize: 9.fss,
                                              fontWeight: FontWeight.w400),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 6,
                                        ),
                                        SizedBox(
                                          height: 15.ss,
                                        ),
                                        CommonButton(
                                          text: 'Show More',
                                          fontSize: 14,
                                          width: 100.ss,
                                          height: 30.ss,
                                          onPressed: () {},
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      )),
                  Positioned(
                    top: 20.ss,
                    right: 20.ss,
                    //  left: ScreenConstant.screenHeightOneSeventh,
                    child: Row(
                      children: [
                        CircleAvatar(
                            radius: 10.ss,
                            backgroundColor: Colors.black54,
                            child: Image.asset(
                              'asset/images/mobile/ic_favorite.png',
                              scale: 2,
                              color: AppColors.whiteColor,
                              height: 30,
                            )),
                        SizedBox(
                          width: 10.ss,
                        ),
                        CircleAvatar(
                            radius: 10.ss,
                            backgroundColor: Colors.black54,
                            child: Image.asset(
                              'asset/images/mobile/ic_share.png',
                              scale: 2,
                              color: AppColors.whiteColor,
                            )),
                        SizedBox(
                          width: 10.ss,
                        ),
                        CircleAvatar(
                            radius: 10.ss,
                            backgroundColor: Colors.black54,
                            child: Image.asset(
                              'asset/images/mobile/ic_call.png',
                              scale: 2,
                              color: AppColors.whiteColor,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
          Center(
            child: Container(
              width: 1000.ss,
              child: Column(
                children: [
                  SizedBox(
                    height: 20.ss,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Align(
                      alignment: Alignment.center,
                      child: CommonButton(
                        text: 'Amenities',
                        buttonColor: AppColors.darkBlueColor,
                        fontSize: 20,
                        width: 150.ss,
                        height: 30.ss,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  _amenitiesGridView(),
                  SizedBox(
                    height: 20.ss,
                  ),
                  CommonButton(
                    text: "Show All Amenities",
                    fontSize: 20,
                    width: 160.ss,
                    height: 30.ss,
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 20.ss,
                  ),
                  _headingTextView(title: 'Location & Nearby Amenities'),
                  _addressView(),
                  SizedBox(
                    height: 20.ss,
                  ),
                  _buildingUnitsTable(),
                  SizedBox(
                    height: 20.ss,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Align(
                      alignment: Alignment.center,
                      child: CommonButton(
                        text: 'Similar Property',
                        buttonColor: AppColors.darkBlueColor,
                        fontSize: 20,
                        width: 150.ss,
                        height: 30.ss,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.ss,
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
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      // Build each card in the grid view.
                      return SimilarPropertyWidgetWeb();
                    },
                    // Set the grid view to shrink wrap its contents.
                    shrinkWrap: true,
                    // Disable scrolling in the grid view.
                    physics: const NeverScrollableScrollPhysics(),
                  ),
                  SizedBox(
                    height: 20.ss,
                  ),
                  buildDotsIndicator(),
                  SizedBox(
                    height: 20.ss,
                  ),
                  SizedBox(
                    height: 20.ss,
                  ),
                ],
              ),
            ),
          )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDotsIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3, // Number of pages
        (index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 4),
            width: _homeController.currentPage == index ? 12 : 12,
            height: _homeController.currentPage == index ? 12 : 12,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.darkBackgroundColor),
              color: _homeController.currentPage == index
                  ? Colors.white
                  : AppColors.darkBackgroundColor,
            ),
          );
        },
      ),
    );
  }

  Widget _headingTextView({required String title}) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.only(left: 10.ss, top: 8.ss, bottom: 8.ss),
      decoration: BoxDecoration(
          color: AppColors.darkBlueColor,
          borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.poppins(
              fontSize: 16.fss,
              color: AppColors.whiteColor,
              fontWeight: FontWeight.w400),
        ),
      ),
    ).marginOnly(left: 20.ss, right: 20.ss, bottom: 20.ss);
  }

  Widget _amenitiesGridView() {
    List<String> amenitiesName = [
      'Swimming pool',
      'Wifi',
      'Kitchen',
      'Air conditioning',
      'Hot tub',
      'Gym',
      'Fireplace',
      'Parking',
      'Outdoor dining',
    ];
    List<String> amenitiesIcons = [
      'asset/icons/tablet/Pool.svg',
      'asset/icons/tablet/Wifi.svg',
      'asset/icons/tablet/Kitchen.svg',
      'asset/icons/tablet/Air conditioning.svg',
      'asset/icons/tablet/Hot tub.svg',
      'asset/icons/tablet/Gym.svg',
      'asset/icons/tablet/Fireplace.svg',
      'asset/icons/tablet/parking_mobile.svg',
      'asset/icons/tablet/Outdoor dining.svg',
    ];
    return Wrap(
      alignment: WrapAlignment.center,
      direction: Axis.horizontal,
      children: <Widget>[
        for (int index = 0; index < amenitiesIcons.length; index++)
          Container(
            height: 125.ss,
            width: 130.ss,
            margin: EdgeInsets.symmetric(horizontal: 10.ss, vertical: 10.ss),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 0.5,
                      spreadRadius: 0.5),
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(amenitiesIcons[index]),
                SizedBox(
                  height: 5.ss,
                ),
                Center(
                  child: Text(
                    amenitiesName[index],
                    maxLines: 2,
                    style: GoogleFonts.poppins(
                        fontSize: 10.fss,
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w400),
                  ).paddingSymmetric(horizontal: 2.ss),
                )
              ],
            ),
          )
      ],
    );
  }

  Widget _addressView() {
    return CommonCardMobile(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              'asset/icons/tablet/google-maps 1.png',
              height: ScreenConstant.defaultHeightFifty,
            ),
            Container(
              width: 10.ss,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Address Sky View',
                  style: GoogleFonts.poppins(
                      fontSize: 16.fss, fontWeight: FontWeight.w600),
                ),
                Text('Downtown, Dubai',
                    style: GoogleFonts.poppins(
                        fontSize: 14.fss, fontWeight: FontWeight.w400)),
              ],
            )
          ],
        ),
        Container(
          height: 5.ss,
        ),
        Row(
          children: [
            Image.asset(
              'asset/icons/tablet/alarm-clock.png',
              height: ScreenConstant.defaultHeightTwenty,
            ),
            Container(
              width: 5.ss,
            ),
            Expanded(
              child: Text(
                "Find out daily travel time from this property",
                style: GoogleFonts.poppins(
                    fontSize: 12.fss, fontWeight: FontWeight.w300),
              ),
            ),
          ],
        ),
        Container(
            margin: EdgeInsets.only(top: 20.ss, bottom: 20.ss),
            padding: EdgeInsets.symmetric(horizontal: 10.ss, vertical: 10.ss),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade300,
                ),
                borderRadius: BorderRadius.circular(8.ss)),
            child: Row(
              children: [
                SvgPicture.asset(
                  'asset/icons/tablet/pin.svg',
                  height: ScreenConstant.defaultHeightTwenty,
                ),
                Container(
                  width: 5.ss,
                ),
                Expanded(
                  child: Text(
                    "Building or community..",
                    style: GoogleFonts.poppins(
                      fontSize: 13.fss,
                    ),
                  ),
                ),
              ],
            )),
        Row(
          children: [
            Expanded(
                flex: 5,
                child: Column(
                  children: [
                    _totalDurationTextView(
                        placeName: 'Dubai Mall',
                        totalHrs: '1h,14m',
                        totalTime: '2h,14m',
                        placeIcon: 'asset/icons/tablet/place_icon.png',
                        totalHrsIcon: 'asset/icons/tablet/car_icon_parking.png',
                        totalTimeIcon:
                            'asset/icons/tablet/walk_icon_parking.png'),
                    const SizedBox(
                      height: 10,
                    ),
                    _totalDurationTextView(
                        placeName: 'Nemo enim ipsam Voluptatem',
                        totalHrs: '3h,14m',
                        totalTime: '9h,14m',
                        placeIcon: 'asset/icons/tablet/place_icon.png',
                        totalHrsIcon: 'asset/icons/tablet/car_icon_parking.png',
                        totalTimeIcon:
                            'asset/icons/tablet/walk_icon_parking.png'),
                  ],
                )),
            Container(
              width: 30.ss,
            ),
            Expanded(
                flex: 5,
                child: Column(
                  children: [
                    _totalDurationTextView(
                        placeName: 'Dubai Mall',
                        totalHrs: '15h,14m',
                        totalTime: '4h,14m',
                        placeIcon: 'asset/icons/tablet/place_icon.png',
                        totalHrsIcon: 'asset/icons/tablet/car_icon_parking.png',
                        totalTimeIcon:
                            'asset/icons/tablet/walk_icon_parking.png'),
                    const SizedBox(
                      height: 10,
                    ),
                    _totalDurationTextView(
                        placeName: 'Nemo enim ipsam Voluptatem',
                        totalHrs: '2h,14m',
                        totalTime: '6h,14m',
                        placeIcon: 'asset/icons/tablet/place_icon.png',
                        totalHrsIcon: 'asset/icons/tablet/car_icon_parking.png',
                        totalTimeIcon:
                            'asset/icons/tablet/walk_icon_parking.png'),
                  ],
                )),
          ],
        ),
      ],
    )).marginSymmetric(horizontal: 20.ss);
  }

  Widget _totalDurationTextView(
      {required String placeName,
      required String totalHrs,
      required String totalTime,
      required String placeIcon,
      required String totalHrsIcon,
      required String totalTimeIcon}) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              placeIcon,
              height: ScreenConstant.defaultHeightTwenty,
            ),
            SizedBox(
              width: 10.ss,
            ),
            Text(
              placeName,
              style: GoogleFonts.poppins(
                  fontSize: 13.fss, fontWeight: FontWeight.w300),
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              totalHrsIcon,
              height: ScreenConstant.defaultHeightForty,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                totalHrs,
                style: GoogleFonts.poppins(
                    fontSize: 11.fss, fontWeight: FontWeight.w400),
              ),
            ),
            Expanded(
              child: SizedBox(
                  height: 20,
                  child: VerticalDivider(
                    color: Colors.grey.shade400,
                    thickness: 1,
                  )),
            ),
            Image.asset(
              totalTimeIcon,
              height: ScreenConstant.defaultHeightForty - 10,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                totalTime,
                style: GoogleFonts.poppins(
                    fontSize: 11.fss, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
        const Divider()
      ],
    );
  }

  Widget _buildingUnitsTable() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.ss),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          padding: EdgeInsets.symmetric(vertical: 10.ss),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(30),
                  ),
                  child: Center(
                    child: Image.asset(
                      'asset/images/mobile/asset_property_web.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 0,
                  child: SizedBox(
                    width: 25.ss,
                  )),
              Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Container(
                        width: Get.width,
                        height: 30.ss,
                        decoration: BoxDecoration(
                          color: AppColors.darkBlueColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0.ss),
                              child: Text(
                                "Building Units",
                                style: GoogleFonts.poppins(
                                  color: AppColors.whiteColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Table(
                        border: TableBorder.symmetric(
                          outside: BorderSide.none,
                          inside: BorderSide(
                            width: 1,
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ),
                        children: [
                          TableRow(children: [
                            _buildingUnitsTableDataView(
                                icon: 'asset/icons/tablet/ic_bed_mobile.svg',
                                title: 'Bedrooms : ',
                                roomNumber: '401',
                                roomCount: '1'),
                            _buildingUnitsTableDataView(
                              icon: 'asset/icons/tablet/ic_bed_mobile.svg',
                              title: 'Bedrooms : ',
                              roomCount: '2',
                              roomNumber: '402',
                            ).marginOnly(left: 5),
                          ]),
                          TableRow(children: [
                            _buildingUnitsTableDataView(
                                icon: 'asset/icons/tablet/ic_bed_mobile.svg',
                                title: 'Bedrooms : ',
                                roomNumber: '403',
                                roomCount: '3'),
                            _buildingUnitsTableDataView(
                                    icon:
                                        'asset/icons/tablet/ic_bed_mobile.svg',
                                    title: 'Bedrooms : ',
                                    roomNumber: '404',
                                    roomCount: '4')
                                .marginOnly(left: 5),
                          ]),
                          TableRow(children: [
                            _buildingUnitsTableDataView(
                                icon: 'asset/icons/tablet/ic_bed_mobile.svg',
                                title: 'Bedrooms : ',
                                roomNumber: '405',
                                roomCount: '5'),
                            _buildingUnitsTableDataView(
                                    icon:
                                        'asset/icons/tablet/ic_bed_mobile.svg',
                                    title: 'Bedrooms : ',
                                    roomNumber: '406',
                                    roomCount: '6')
                                .marginOnly(left: 5),
                          ]),
                          TableRow(children: [
                            _buildingUnitsTableDataView(
                                icon: 'asset/icons/tablet/ic_bed_mobile.svg',
                                title: 'Bedrooms : ',
                                roomNumber: '407',
                                roomCount: '7'),
                            _buildingUnitsTableDataView(
                                    icon:
                                        'asset/icons/tablet/ic_bed_mobile.svg',
                                    title: 'Bedrooms : ',
                                    roomNumber: '408',
                                    roomCount: '8')
                                .marginOnly(left: 5),
                          ]),
                        ],
                      ),
                    ],
                  )),
            ],
          ).marginSymmetric(horizontal: 20.ss),
        ),
      ),
    );
  }

  Widget _buildingUnitsTableDataView({
    required String icon,
    required String title,
    required String roomNumber,
    required String roomCount,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.ss, vertical: 10.ss),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.primaryColor)),
                child: CircleAvatar(
                  backgroundColor: AppColors.whiteColor,
                  radius: 20,
                  child: SvgPicture.asset(
                    icon,
                    width: 20,
                    height: 20,
                    color: AppColors.darkBlueColor,
                  ),
                ),
              ),
              Positioned(
                top: 0.0,
                right: 0.0,
                child: CircleAvatar(
                  radius: 5.ss,
                  backgroundColor: AppColors.primaryColor,
                  child: Text(roomCount,
                      style: GoogleFonts.poppins(
                        fontSize: 6.fss,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.ss),
            child: Row(
              children: [
                Text(
                  title,
                  style: CustomTextStyles.light10000000TextStyleTablet,
                ),
                Text(
                  roomNumber,
                  style: CustomTextStyles.medium10000000TextStyleTablet,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _similarPropertyListView() {
    return SizedBox(
      height: ScreenConstant.screenHeightOneSeventh + 20,
      child: Swiper(
        viewportFraction: 0.55,
        onIndexChanged: (index) {
          _homeController.activeIndexTablet.value =
              index; // Update the active index when Swiper changes
        },
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 30.ss),
            // Add margin to the right for spacing
            child: _homeController.imagesTablet[index],
          );
        },
        autoplay: false,
        itemCount: _homeController.imagesTablet.length,
        scrollDirection: Axis.horizontal,
      ),
      // child: ListView.separated(
      //   physics: const ClampingScrollPhysics(),
      //   shrinkWrap: true,
      //   padding: EdgeInsets.zero,
      //   scrollDirection: Axis.horizontal,
      //   itemCount: 6,
      //   itemBuilder: (context, i) {
      //     return const Padding(
      //       padding: EdgeInsets.only(bottom: 20),
      //       child: SimilarPropertiesListWidget(),
      //     );
      //   },
      //   separatorBuilder: (BuildContext context, int index) {
      //     return Container(
      //       height: 20.ss,
      //     );
      //   },
      // ).marginSymmetric(horizontal: 20.ss),
    );
  }

  Widget _tableDataView(
      {required String icon, required String title, required String subTitle}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.ss, vertical: 5.ss),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: AppColors.primaryColor,
            radius: 15,
            child: Padding(
              padding: EdgeInsets.all(3.0.ss),
              child: SvgPicture.asset(
                color: AppColors.whiteColor,
                icon,
                height: 13.ss,
              ),
            ),
          ),
          SizedBox(width: 5.ss),
          RichText(
            maxLines: 2,
            text: TextSpan(
              text: title,
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: subTitle,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: const Color(0xff0A2342),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          // RichText(
          //   maxLines: 2,
          //   textAlign: TextAlign.start,
          //   text: TextSpan(
          //     children: [
          //       WidgetSpan(
          //         child: Text(
          //           title,
          //           style: GoogleFonts.poppins(
          //             fontSize: 10.fss,
          //             color: Colors.black,
          //             fontWeight: FontWeight.w600,
          //           ),
          //         ),
          //       ),
          //       WidgetSpan(
          //         child: Text(
          //           subTitle,
          //           maxLines: 3,
          //           overflow: TextOverflow.visible,
          //           style: GoogleFonts.poppins(
          //             fontSize: 10.fss,
          //             color: const Color(0xff0A2342),
          //             fontWeight: FontWeight.w500,
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
