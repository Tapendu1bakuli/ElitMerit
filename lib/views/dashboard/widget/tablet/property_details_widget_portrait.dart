import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/device_manger/screen_constants.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:main/utils/widgets_utils/mobile/common_button.dart';
import 'package:main/views/dashboard/widget/mobile/common_card_mobile.dart';
import 'package:main/views/dashboard/widget/mobile/similar_properties_list_Widget.dart';
import 'package:sizing/sizing.dart';

import '../../controller/home_controller.dart';

class PropertyDetailWidgetPortrait extends StatelessWidget {
  PropertyDetailWidgetPortrait({super.key});
  final HomeController _homeController =
  Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return _bodyView();
  }

  Widget _bodyView() {
    return Column(
      children: [
        CommonCardMobile(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _toggleButtonView(),
              SizedBox(
                height: 10.ss,
              ),
              Row(
                children: [
                  SvgPicture.asset('asset/icons/tablet/pin.svg'),
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
              SizedBox(
                height: 10.ss,
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
                    _tableDataView(
                        icon: 'asset/icons/tablet/Apartment.svg',
                        title: 'Type : ',
                        subTitle: 'Apartment'),
                    _tableDataView(
                        icon: 'asset/icons/tablet/dock.svg',
                        title: 'Status : ',
                        subTitle: 'Ready,\nvacant,under')
                        .marginOnly(left: 5),
                  ]),
                  TableRow(children: [
                    _tableDataView(
                        icon: 'asset/icons/tablet/Full_alt_light.svg',
                        title: 'Size : ',
                        subTitle: '1,235 sqft'),
                    _tableDataView(
                        icon: 'asset/icons/tablet/armchair_1.svg',
                        title: 'Furnished : ',
                        subTitle: 'Fully')
                        .marginOnly(left: 5),
                  ]),
                  TableRow(children: [
                    _tableDataView(
                        icon: 'asset/icons/tablet/Layers_light.svg',
                        title: 'Floor : ',
                        subTitle: '32'),
                    _tableDataView(
                        icon: 'asset/icons/tablet/parking.svg',
                        title: 'Parking : ',
                        subTitle: '2')
                        .marginOnly(left: 5),
                  ]),
                ],
              ),
              SizedBox(
                height: 10.ss,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Excepteur sint occaecat cuoidatat",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                      fontSize: 16.fss, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 10.ss,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
                    " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
                    "Excepteur sint occaecat cupidatat non proident, sunt in culpa ",
                style: GoogleFonts.poppins(
                    fontSize: 12.fss, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10.ss,
              ),
              CommonButton(
                text: 'Show More',
                fontSize: 14.ss,
                width: 120.ss,
                height: 35.ss,
                onPressed: () {},
              ),
            ],
          ),
        ).paddingOnly(left: 20, right: 20),
        SizedBox(
          height: 20.ss,
        ),
        _headingTextView(title: 'Amenities'),
        _amenitiesGridView(),
        SizedBox(
          height: 20.ss,
        ),
        CommonButton(
          text: 'Show All Amenities',
          fontSize: 14.ss,
          width: 200.ss,
          height: 35.ss,
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
        _headingTextView(title: 'Building Units'),
        _buildingUnitsTable(),
        SizedBox(
          height: 20.ss,
        ),
        _headingTextView(title: 'Similar Property'),
        _similarPropertyListView(),
        SizedBox(
          height: 10.ss,
        ),
        Obx(()=>_homeController.activeIndex.value!=0? Container(
          margin: EdgeInsets.symmetric(horizontal: 10.ss),
          width: Get.width,
          height: 10.ss,
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: _homeController.images.length,
            scrollDirection: Axis.horizontal,
            physics: NeverScrollableScrollPhysics(),
            separatorBuilder: (BuildContext context, int index) => Container(width: 5.ss,),
            itemBuilder: (BuildContext context, int index) {
              return ClipRRect(borderRadius: BorderRadius.circular(20),child: Container(height: 10,width: 15,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: _homeController.activeIndex.value==index?Colors.white:Color(0xFF0A2342),border: Border.all(color: Color(0xFF0A2342))),));
            },
          ),
        ): Container(
          margin: EdgeInsets.symmetric(horizontal: 10.ss),
          width: Get.width,
          height: 10.ss,
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: _homeController.images.length,
            scrollDirection: Axis.horizontal,
            physics: NeverScrollableScrollPhysics(),
            separatorBuilder: (BuildContext context, int index) => Container(width: 10.ss,),
            itemBuilder: (BuildContext context, int index) {
              return ClipRRect(borderRadius: BorderRadius.circular(20),child: Container(height: 10,width: 15,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: _homeController.activeIndex.value==index?Colors.white:Color(0xFF0A2342),border: Border.all(color: Color(0xFF0A2342))),));
            },
          ),
        ),
        )
        ,        SizedBox(
          height: 50.ss,
        ),
        Container(height: 58.ss,margin:EdgeInsets.symmetric(horizontal: 20.ss),decoration: BoxDecoration(color: Color(0xFF0A2342),borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Expanded(flex:3,child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment:MainAxisAlignment.center,children: [
                Image.asset("asset/images/tablet/call_current.png",height: ScreenConstant.defaultHeightTwentyThree,),

                Text("Call",style: CustomTextStyles.medium12WithoutFsizeMobile,)
              ],)),
              Container(height: 58.ss,color: Color(0xFFFFFFFF).withOpacity(0.25),width: 2.ss,),
              Expanded(flex:3,child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment:MainAxisAlignment.center,children: [
                Image.asset("asset/images/tablet/whats_app_current.png",height: ScreenConstant.defaultHeightTwentyThree-5,),
                Container(height: 3.ss,),
                Text("WhatsApp",style: CustomTextStyles.medium12WithoutFsizeMobile,)
              ],)),
              Container(height: 58.ss,color: Color(0xFFFFFFFF).withOpacity(0.25),width: 2.ss,),
              Expanded(flex:3,child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment:MainAxisAlignment.center,children: [
                Image.asset("asset/images/tablet/email_current.png",height: ScreenConstant.defaultHeightTwentyThree,),
                Text("Email",style: CustomTextStyles.medium12WithoutFsizeMobile,)
              ],)),
              Container(height: 58.ss,color: Color(0xFFFFFFFF).withOpacity(0.25),width: 2.ss,),
              Expanded(flex:3,child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment:MainAxisAlignment.center,children: [
                Image.asset("asset/images/tablet/wechat_current.png",height: ScreenConstant.defaultHeightTwentyThree,),
                Text("Live Chat",style: CustomTextStyles.medium12WithoutFsizeMobile,)
              ],)),
            ],
          ),
        )
      ],
    );
  }

  Widget _tableDataView(
      {required String icon, required String title, required String subTitle}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.ss, vertical: 15.ss),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: AppColors.primaryColor,
            radius: 13,
            child: SvgPicture.asset(
              color: AppColors.whiteColor,
              icon,
              width: 15,
              height: 15,
            ),
          ),
          SizedBox(width: 5.ss),
          RichText(
            maxLines: 2,
            text: TextSpan(
              text: title,
              style: GoogleFonts.poppins(
                fontSize: 10.fss,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: subTitle,
                  style: GoogleFonts.poppins(
                    fontSize: 10.fss,
                    color: const Color(0xff0A2342),
                    fontWeight: FontWeight.w500,
                  ),),
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

  Widget _buildingUnitsTable() {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(30),
            ),
            child: Center(
              child: Image.asset(
                'asset/images/mobile/Rectangle 4231-1.png',
                fit: BoxFit.cover,
                height: Get.height / 2.9,
              ),
            ),
          ),
        ),
        Expanded(flex:0,child: SizedBox(width: 25.ss,)),
        Expanded(
          flex: 6,
          child: Table(
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
                    roomCount: '1'
                ),
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
                    roomCount: '3'
                ),
                _buildingUnitsTableDataView(
                    icon: 'asset/icons/tablet/ic_bed_mobile.svg',
                    title: 'Bedrooms : ',
                    roomNumber: '404',
                    roomCount: '4'
                ).marginOnly(left: 5),
              ]),
              TableRow(children: [
                _buildingUnitsTableDataView(
                    icon: 'asset/icons/tablet/ic_bed_mobile.svg',
                    title: 'Bedrooms : ',
                    roomNumber: '405',
                    roomCount: '5'
                ),
                _buildingUnitsTableDataView(
                    icon: 'asset/icons/tablet/ic_bed_mobile.svg',
                    title: 'Bedrooms : ',
                    roomNumber: '406',
                    roomCount: '6'
                ).marginOnly(left: 5),
              ]),
              TableRow(children: [
                _buildingUnitsTableDataView(
                    icon: 'asset/icons/tablet/ic_bed_mobile.svg',
                    title: 'Bedrooms : ',
                    roomNumber: '407',
                    roomCount: '7'
                ),
                _buildingUnitsTableDataView(
                    icon: 'asset/icons/tablet/ic_bed_mobile.svg',
                    title: 'Bedrooms : ',
                    roomNumber: '408',
                    roomCount: '8'
                ).marginOnly(left: 5),
              ]),
            ],
          ),
        ),
      ],
    ).marginSymmetric(horizontal: 20.ss);
  }

  Widget _buildingUnitsTableDataView({
    required String icon,
    required String title,
    required String roomNumber,
    required String roomCount,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.ss, vertical: 5.ss),
      child: Column(
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
                top: 2.0,
                right: 0.0,
                child: CircleAvatar(radius: 5.ss,
                  backgroundColor: AppColors.primaryColor,
                  child: Text(roomCount,style: GoogleFonts.poppins(
                    fontSize: 6,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  )),),
              )
            ],
          ),
          SizedBox(height: 2.ss),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  title,
                  style: CustomTextStyles.light8WithoutFsizeMobile,
                ),
              ),
              Flexible(
                child: Text(
                  roomNumber,
                  style: CustomTextStyles.medium8WithoutFsizeMobile,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _amenitiesGridView() {
    List<String> amenitiesName = [
      'Swimming pool',
      'Wifi',
      'Kitchen',
      'Air conditioning',
      'Hot tub',
      'Outdoor dining',
      'Gym',
      'Fireplace',
      'Parking'
    ];
    List<String> amenitiesIcons = [
      'asset/icons/tablet/Pool.svg',
      'asset/icons/tablet/Wifi.svg',
      'asset/icons/tablet/Kitchen.svg',
      'asset/icons/tablet/Air conditioning.svg',
      'asset/icons/tablet/Hot tub.svg',
      'asset/icons/tablet/Outdoor dining.svg',
      'asset/icons/tablet/Gym.svg',
      'asset/icons/tablet/Fireplace.svg',
      'asset/icons/tablet/parking_mobile.svg'
    ];
    return GridView.builder(
      padding: const EdgeInsets.only(left: 20, right: 20),
      itemCount: 9,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => Container(
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
                    fontSize: 12.fss,
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w400),
              ).paddingSymmetric(horizontal: 2.ss),
            )
          ],
        ),
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1.2,
      ),
    );
  }

  Widget _addressView() {
    return CommonCardMobile(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 5),
              title: Text(
                'Address Sky View',
                style: GoogleFonts.poppins(
                    fontSize: 16.fss, fontWeight: FontWeight.w600),
              ),
              trailing: Image.asset(
                'asset/icons/tablet/google-maps 1.png',
                scale: 2.9.ss,
              ),
              subtitle: Text('Downtown, Dubai',
                  style: GoogleFonts.poppins(
                      fontSize: 14.fss, fontWeight: FontWeight.w400)),
            ),
            Row(
              children: [
                Image.asset(
                  'asset/icons/tablet/alarm-clock.png',
                  scale: 2.9.ss,
                ),
                Container(
                  width: 2.ss,
                ),
                Expanded(
                  child: Text(
                    "Find out daily travel time from this property",
                    style: GoogleFonts.poppins(
                      fontSize: 10.fss,
                    ),
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
                    SvgPicture.asset('asset/icons/tablet/pin.svg'),
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
            _totalDurationTextView(
                placeName: 'Dubai Mall',
                totalHrs: '1h,14m',
                totalTime: '2h,14m',
                placeIcon: 'asset/icons/tablet/Vector.png',
                totalHrsIcon: 'asset/icons/tablet/car.png',
                totalTimeIcon: 'asset/icons/tablet/men_walking.png'),
            const SizedBox(
              height: 10,
            ),
            _totalDurationTextView(
                placeName: 'Nemo enim ipsam Voluptatem',
                totalHrs: '3h,14m',
                totalTime: '9h,14m',
                placeIcon: 'asset/icons/tablet/Vector.png',
                totalHrsIcon: 'asset/icons/tablet/car.png',
                totalTimeIcon: 'asset/icons/tablet/men_walking.png'),
            const SizedBox(
              height: 10,
            ),
            _totalDurationTextView(
                placeName: 'Dubai Mall',
                totalHrs: '15h,14m',
                totalTime: '4h,14m',
                placeIcon: 'asset/icons/tablet/Vector.png',
                totalHrsIcon: 'asset/icons/tablet/car.png',
                totalTimeIcon: 'asset/icons/tablet/men_walking.png'),
            const SizedBox(
              height: 10,
            ),
            _totalDurationTextView(
                placeName: 'Nemo enim ipsam Voluptatem',
                totalHrs: '2h,14m',
                totalTime: '6h,14m',
                placeIcon: 'asset/icons/tablet/Vector.png',
                totalHrsIcon: 'asset/icons/tablet/car.png',
                totalTimeIcon: 'asset/icons/tablet/men_walking.png'),
            const SizedBox(
              height: 10,
            ),
          ],
        )).marginSymmetric(horizontal: 20.ss);
  }

  Widget _similarPropertyListView() {
    return SizedBox(
      height: Get.height * 0.5,
      child:   Swiper(
        viewportFraction: 0.8,
        onIndexChanged: (index) {
          _homeController.activeIndex.value = index; // Update the active index when Swiper changes
        },
        itemBuilder: (context, index) {
          return _homeController.images[index];
        },
        autoplay: false,
        itemCount:_homeController.images.length,
        scrollDirection: Axis.horizontal,
        // pagination: SwiperPagination(
        //   builder: DotSwiperPaginationBuilder(
        //     color: Colors.red,
        //     activeColor: Color(0xFF0A2342)
        //   ),
        //     margin: EdgeInsets.only(bottom: 0.ss,left: 10.ss),
        //     alignment: Alignment.bottomLeft),
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
              scale: 2.5.ss,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              placeName,
              style: GoogleFonts.poppins(
                  fontSize: 13.fss, fontWeight: FontWeight.w400),
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Image.asset(
              totalHrsIcon,
              scale: 2.8.ss,
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
              scale: 2.8.ss,
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

  Widget _headingTextView({required String title}) {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.only(left: 10, top: 8, bottom: 8),
      decoration: BoxDecoration(
          color: AppColors.darkBlueColor,
          borderRadius: BorderRadius.circular(5)),
      child: Text(
        title,
        style: GoogleFonts.poppins(
            fontSize: 14.fss,
            color: AppColors.whiteColor,
            fontWeight: FontWeight.w400),
      ),
    ).marginOnly(left: 20.ss, right: 20.ss, bottom: 20.ss);
  }

  Widget _toggleButtonView() {
    return Container(
      height: 40.ss,
      width: ScreenConstant.screenHeightHalf-50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.darkBlueColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            height: 40.ss,
            margin: const EdgeInsets.only(right: 10),
            width: 100.ss,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'For Sale:',
              style: CustomTextStyles.medium14WithOutFsizeFFFFFFMobile,
            ),
          ),
          Expanded(
            child: Text(
              '54,300,000 AED',
              style: CustomTextStyles.medium14WithOutFsizeFFFFFFMobile,
            ),
          ),
        ],
      ),
    );
  }
}
