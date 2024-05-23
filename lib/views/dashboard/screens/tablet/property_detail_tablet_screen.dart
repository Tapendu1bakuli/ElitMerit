import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/tablet_size_utils.dart';
import 'package:sizing/sizing.dart';

import '../../../../device_manger/screen_constants.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/theme/custom_text_style.dart';
import '../../../../utils/widgets_utils/mobile/common_button.dart';
import '../../controller/home_controller.dart';
import '../../widget/mobile/common_card_mobile.dart';
import '../../widget/tablet/property_details_widget_portrait.dart';

class PropertyDetailTablet extends StatelessWidget {
  PropertyDetailTablet({super.key});
  final HomeController _homeController =
  Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'asset/images/mobile/Rectangle 4231-1.png',
      'asset/images/mobile/Rectangle 4231-1.png',
      'asset/images/mobile/Rectangle 4231-1.png'
    ];
    bool? isLandscape =
        MediaQuery.of(context).orientation == Orientation.portrait;
    print("Landscape:$isLandscape");
    return isLandscape?Scaffold(body: SingleChildScrollView(child: Column(children: [
      Stack(
        children: [
          SizedBox(
            height: Get.height / 2,
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
                  margin: EdgeInsets.only(bottom: 50.ss),
                  alignment: Alignment.bottomCenter),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: CircleAvatar(
                    radius: 15.ss,
                    backgroundColor: Colors.black54,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.whiteColor,
                      size: 15.ss,
                    )),
              ),
              const Spacer(),
              CircleAvatar(
                  radius: 15.ss,
                  backgroundColor: Colors.black54,
                  child: Image.asset(
                    'asset/images/mobile/ic_favorite.png',
                    scale: 2,
                    color: AppColors.whiteColor,
                  )),
              SizedBox(
                width: 5.ss,
              ),
              CircleAvatar(
                  radius: 15.ss,
                  backgroundColor: Colors.black54,
                  child: Image.asset(
                    'asset/images/mobile/ic_share.png',
                    scale: 2,
                    color: AppColors.whiteColor,
                  )),
              SizedBox(
                width: 5.ss,
              ),
              CircleAvatar(
                  radius: 15.ss,
                  backgroundColor: Colors.black54,
                  child: Image.asset(
                    'asset/images/mobile/ic_call.png',
                    scale: 2,
                    color: AppColors.whiteColor,
                  )),
            ],
          ).marginOnly(top: 30.ss, right: 20.ss, left: 10.ss),

        ],
      ),
      Transform.translate(
          offset: Offset(0,-30.ss),
          child:  PropertyDetailWidgetPortrait()),
    ],).marginOnly(bottom: 20.ss),),):Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Color(0xFF1E1E1E).withOpacity(0.1)),
          child: Column(
            children: [
              Container(height: 50.ss,),
              Stack(
                children: [
                  Row(
                    children: [
                      Expanded(flex:8,child: Padding(
                        padding: EdgeInsets.only(left: 18.0.ss),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.ss),
                          child: Container(
                            height: Get.height /1.1,

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
                                  margin: EdgeInsets.only(bottom: 20.ss),
                                  alignment: Alignment.bottomCenter),
                            ),
                          ),
                        ),
                      ),),
                      Expanded(flex:2,child: Container())
                    ],
                  ),
                  Positioned(left:30.ss,top:20.ss,child:  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: CircleAvatar(
                        radius: 10.ss,
                        backgroundColor: Colors.black54,
                        child:Image.asset(
                          'asset/images/tablet/arrow_back.png',
                          scale: 2,
                          color: AppColors.whiteColor,
                        )),
                  ),),

                  Positioned(
                      right: 15.ss,
                      top: 25.ss,
                      bottom: 25.ss,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.ss,vertical: 10.ss),
                          // height: Get.height/1.5,
                          width: ScreenConstant.screenHeightOneSeventh-30,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 30.ss,
                                width: ScreenConstant.screenHeightThird,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: AppColors.darkBlueColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 30.ss,
                                      margin: const EdgeInsets.only(right: 10),
                                      width: 60.ss,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: AppColors.primaryColor,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        'For Sale:',
                                        style: CustomTextStyles.medium14TextStyleTablet,
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        '54,300,000 AED',
                                        style: CustomTextStyles.medium14TextStyleTablet,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
                              Text(
                                "Excepteur sint occaecat cuoidatat",
                                textAlign: TextAlign.start,
                                style: GoogleFonts.poppins(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5.ss,
                              ),
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
                                    " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
                                    "Excepteur sint occaecat cupidatat non proident, sunt in culpa ",
                                style: GoogleFonts.poppins(
                                    fontSize: 12, fontWeight: FontWeight.w400),overflow: TextOverflow.ellipsis,maxLines: 3,
                              ),
                              SizedBox(
                                height: 10.ss,
                              ),
                              CommonButton(
                                text: 'Show More',
                                fontSize: 14,
                                width: 100.ss,
                                height:30.ss,
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      )),
                  Positioned(
                    top: 20.ss,
                    right: ScreenConstant.screenHeightOneSeventh,
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
                        SizedBox(width: 10.ss,),
                        CircleAvatar(
                            radius: 10.ss,
                            backgroundColor: Colors.black54,
                            child: Image.asset(
                              'asset/images/mobile/ic_share.png',
                              scale: 2,
                              color: AppColors.whiteColor,
                            )),
                        SizedBox(width: 10.ss,),
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
              SizedBox(
                height: 20.ss,
              ),
              _headingTextView(title: 'Amenities'),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0.ss),
                child: _amenitiesGridView(),
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
                height: 20.ss,
              ),
              Obx(()=>_homeController.activeIndexTablet.value!=0? Container(
                margin: EdgeInsets.symmetric(horizontal: 10.ss),
                width: Get.width,
                height: 10.ss,
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: _homeController.imagesTablet.length,
                  scrollDirection: Axis.horizontal,
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (BuildContext context, int index) => Container(width: 10.ss,),
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(borderRadius: BorderRadius.circular(20),child: Container(height: 10.ss,width: 10.ss,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: _homeController.activeIndexTablet.value==index?Colors.white:Color(0xFF0A2342),border: Border.all(color: Color(0xFF0A2342))),));
                  },
                ),
              ): Container(
                margin: EdgeInsets.symmetric(horizontal: 10.ss),
                width: Get.width,
                height: 10.ss,
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: _homeController.imagesTablet.length,
                  scrollDirection: Axis.horizontal,
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (BuildContext context, int index) => Container(width: 10.ss,),
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(borderRadius: BorderRadius.circular(20),child: Container(height: 10.ss,width: 10.ss,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: _homeController.activeIndexTablet.value==index?Colors.white:Color(0xFF0A2342),border: Border.all(color: Color(0xFF0A2342))),));
                  },
                ),
              ),
              ),
              SizedBox(
                height: 20.ss,
              ),
              Container(height: ScreenConstant.defaultHeightSeventy+10,padding:EdgeInsets.symmetric(vertical: 5.ss),margin:EdgeInsets.symmetric(horizontal: 10.ss),decoration: BoxDecoration(color: Color(0xFF0A2342),borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Expanded(flex:3,child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment:MainAxisAlignment.center,children: [
                      Image.asset("asset/images/tablet/call_current.png",height: ScreenConstant.defaultHeightTwentyThree+5,),

                      Text("Call",style: CustomTextStyles.medium12Tablet,)
                    ],)),
                    Container(height: 58.ss,color: Color(0xFFFFFFFF).withOpacity(0.25),width: 2.ss,),
                    Expanded(flex:3,child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment:MainAxisAlignment.center,children: [
                      Image.asset("asset/images/tablet/whats_app_current.png",height: ScreenConstant.defaultHeightTwentyThree,),
                      Container(height: 3.ss,),
                      Text("WhatsApp",style: CustomTextStyles.medium12Tablet,)
                    ],)),
                    Container(height: 58.ss,color: Color(0xFFFFFFFF).withOpacity(0.25),width: 2.ss,),
                    Expanded(flex:3,child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment:MainAxisAlignment.center,children: [
                      Image.asset("asset/images/tablet/email_current.png",height: ScreenConstant.defaultHeightTwentyThree+5,),
                      Text("Email",style: CustomTextStyles.medium12Tablet,)
                    ],)),
                    Container(height: 58.ss,color: Color(0xFFFFFFFF).withOpacity(0.25),width: 2.ss,),
                    Expanded(flex:3,child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment:MainAxisAlignment.center,children: [
                      Image.asset("asset/images/tablet/wechat_current.png",height: ScreenConstant.defaultHeightTwentyThree+5,),
                      Text("Live Chat",style: CustomTextStyles.medium12Tablet,)
                    ],)),
                  ],
                ),
              ),
              SizedBox(
                height: 20.ss,
              ),
            ],
          ),
        ),
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
      child: Text(
        title,
        style: GoogleFonts.poppins(
            fontSize: 16.fss,
            color: AppColors.whiteColor,
            fontWeight: FontWeight.w400),
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
      itemCount: 10,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        if(index == 9){
          return Container(
            margin: EdgeInsets.only(top: ScreenConstant.screenHeightEight),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              border: Border.all(color:Colors.transparent),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: FittedBox(
                child: Text(
                  "Show All Amenities",
                  style: GoogleFonts.poppins(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w600,
                    fontSize:10.fss,
                  ),
                ),
              ),
            ),
          );
        }else{
          return Container(
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
          );
        }
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 6,
        mainAxisSpacing: 15.ss,
        crossAxisSpacing: 15.ss,
        childAspectRatio: 1.2,
      ),
    );
  }
  Widget _addressView() {
    return CommonCardMobile(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Image.asset(
                'asset/icons/tablet/google-maps 1.png',
                height: ScreenConstant.defaultHeightFifty,
              ),
              Container(width: 10.ss,),
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
            ],),
            Container(height: 5.ss,),
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
                        fontSize: 12.fss,
                        fontWeight: FontWeight.w300
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
                    SvgPicture.asset('asset/icons/tablet/pin.svg',    height: ScreenConstant.defaultHeightTwenty,),
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
                Expanded(flex:5,child: Column(children: [
                  _totalDurationTextView(
                      placeName: 'Dubai Mall',
                      totalHrs: '1h,14m',
                      totalTime: '2h,14m',
                      placeIcon: 'asset/icons/tablet/place_icon.png',
                      totalHrsIcon: 'asset/icons/tablet/car_icon_parking.png',
                      totalTimeIcon: 'asset/icons/tablet/walk_icon_parking.png'),
                  const SizedBox(
                    height: 10,
                  ),
                  _totalDurationTextView(
                      placeName: 'Nemo enim ipsam Voluptatem',
                      totalHrs: '3h,14m',
                      totalTime: '9h,14m',
                      placeIcon: 'asset/icons/tablet/place_icon.png',
                      totalHrsIcon: 'asset/icons/tablet/car_icon_parking.png',
                      totalTimeIcon: 'asset/icons/tablet/walk_icon_parking.png'),
                ],)),
                Container(width: 30.ss,),
                Expanded(flex:5,child: Column(children: [
                  _totalDurationTextView(
                      placeName: 'Dubai Mall',
                      totalHrs: '15h,14m',
                      totalTime: '4h,14m',
                      placeIcon: 'asset/icons/tablet/place_icon.png',
                      totalHrsIcon: 'asset/icons/tablet/car_icon_parking.png',
                      totalTimeIcon: 'asset/icons/tablet/walk_icon_parking.png'),
                  const SizedBox(
                    height: 10,
                  ),
                  _totalDurationTextView(
                      placeName: 'Nemo enim ipsam Voluptatem',
                      totalHrs: '2h,14m',
                      totalTime: '6h,14m',
                      placeIcon: 'asset/icons/tablet/place_icon.png',
                      totalHrsIcon: 'asset/icons/tablet/car_icon_parking.png',
                      totalTimeIcon: 'asset/icons/tablet/walk_icon_parking.png'),
                ],)),
              ],),

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
              height: ScreenConstant.defaultHeightForty-10,
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
    return Row(
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
                'asset/images/mobile/property_for.png',
                fit: BoxFit.fitWidth,
                height: Get.height / 2,
              ),
            ),
          ),
        ),
        Expanded(flex:0,child: SizedBox(width: 25.ss,)),
        Expanded(
          flex: 3,
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
      padding: EdgeInsets.symmetric(horizontal: 15.ss, vertical: 15.ss),
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
                child: CircleAvatar(radius: 5.ss,
                  backgroundColor: AppColors.primaryColor,
                  child: Text(roomCount,style: GoogleFonts.poppins(
                    fontSize: 6.fss,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  )),),
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
      height: ScreenConstant.screenHeightOneSeventh+20,
      child:   Swiper(
        viewportFraction: 0.55,
        onIndexChanged: (index) {
          _homeController.activeIndexTablet.value = index; // Update the active index when Swiper changes
        },
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 30.ss), // Add margin to the right for spacing
            child: _homeController.imagesTablet[index],
          );
        },
        autoplay: false,
        itemCount:_homeController.imagesTablet.length,
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
      padding: EdgeInsets.symmetric(horizontal: 5.ss, vertical: 10.ss),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: AppColors.primaryColor,
            radius: 13,
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
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: subTitle,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
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
}
