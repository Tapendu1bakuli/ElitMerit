
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/device_manger/screen_constants.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/theme/theme_helper.dart';
import 'package:main/utils/widgets_utils/mobile/common_button.dart';
import 'package:main/utils/widgets_utils/mobile/text_input_field.dart';
import 'package:main/views/dashboard/controller/home_controller.dart';
import 'package:main/views/dashboard/screens/tablet/current_deals_in_progress_tablet_screen.dart';
import 'package:main/views/dashboard/widget/mobile/common_card_mobile.dart';
import 'package:main/views/dashboard/widget/mobile/progress_file_management_table_widget.dart';
import 'package:main/views/dashboard/widget/mobile/timeline_widget_mobile.dart';
import 'package:sizing/sizing_extension.dart';

class ProgressDetailWidget extends StatelessWidget {
   ProgressDetailWidget({super.key});
  final HomeController _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _tabBarListView(),
        _progressDetailView(context),
        SizedBox(
          height: 20.ss,
        ),
        _dealUpdatesView(),
        SizedBox(
          height: 20.ss,
        ),
        _brokerChatView(),
        SizedBox(
          height: 20.ss,
        ),
        _fileManagementView()
      ],
    );
  }

  Widget _dealUpdatesView() {
    return CommonCardMobile(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deal Updates",
            style: GoogleFonts.poppins(
              fontSize: 16.fss,
              fontWeight: FontWeight.w600,
            ),
          ),
          const TimeLineMobileWidget(),
          Center(
            child: CommonButton(
              text: 'Contact',
              height: 35.ss,
              width: 120.ss,
              fontSize: 13.fss,
              onPressed: () {},
            ),
          ),
          SizedBox(height: 30.ss,),
        ],
      ).paddingOnly(bottom: 10.ss),
    );
  }
  
  Widget _fileManagementView(){
    return  CommonCardMobile(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  "File Management",
                  style: GoogleFonts.poppins(
                    fontSize: 16.fss,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              CommonButton(
                text: 'Upload New Files',
                width: 120.ss,
                height: 40.ss,
                fontSize: 12.fss,
                onPressed: () {
                },
              ),
            ],
          ),
          SizedBox(height: 20.ss,),
          SizedBox(height:Get.height/2,child: const ProgressDataTable())
    ],
      ),
    );
  }

  Widget _brokerChatView() {
    return CommonCardMobile(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Broker Conversation Interface",
            style: GoogleFonts.poppins(
              fontSize: 16.fss,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 20.ss,),
          Container(
            padding: EdgeInsets.only(top: 20.ss),
            decoration: BoxDecoration(borderRadius:
            BorderRadius.circular(10.ss),border: Border.all(color: Colors.grey.shade300)),
            child: Column(
              children: [
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    shrinkWrap: true,
                    itemBuilder: (context, int index) {
                      return Column(
                        children: [
                          Align(
                              alignment: Alignment.topRight,
                              child: _rightMessageView()),Align(
                              alignment: Alignment.topRight,
                              child: _rightMessageView()),
                          Align(
                              alignment: Alignment.topLeft,
                              child: _leftMessageView())
                        ],
                      );
                    }),
                Container(
                  margin: EdgeInsets.only(top: 15.ss),
                  height: 40.ss,
                  child: TextInputField(
                    isSuffix: true,
                    fillColor: Colors.grey.shade50,
                    hintText: 'Start typing...',
                    suffixPadding: EdgeInsets.zero,
                    suffixWidget:  Container(
                      height: 40.ss,
                      width: 40.ss,
                      decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(10.ss)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.ss),
                        child: Image.asset("asset/icons/tablet/ic_send.png",
                          scale: 2.0,
                        ),
                      ),
                    ),
                    prefixIcon: Image.asset(
                      'asset/icons/tablet/happy_light.png',scale: 2.0,),
                  )
                  ,)
              ],
            ),
          )
        ],
      ).paddingOnly(bottom: 10.ss),
    );
  }

  Widget _rightMessageView() {
    return Container(
      width: Get.width / 2,
      padding: EdgeInsets.all(5.ss),

      margin: EdgeInsets.only(
        bottom: 10.ss,left: 10.ss,right: 10.ss,
      ),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10.ss))),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "Sed ut perspiciatis",
              style: GoogleFonts.poppins(
                fontSize: 11.fss,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Text(
            "12:15 PM",
            style: GoogleFonts.poppins(
              fontSize: 10.fss,
              fontWeight: FontWeight.w400,
            ),
          ),
          Image.asset('asset/icons/tablet/double_tick.png',scale: 2.4,)
        ],
      ),
    );
  }

  Widget _leftMessageView() {
    return Stack(

      children: [
        Row(
          children: [
            Image.asset('asset/icons/tablet/User_box_duotone_line.png',scale: 2,).marginOnly(left: 10.ss),
            SizedBox(width: 10.ss,),
            Container(
             width: Get.width/2,
              padding: EdgeInsets.all(6.ss),
              margin: EdgeInsets.only(
                bottom: 10.ss,
              ),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  color: AppColors.darkBlueColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15.ss),
                  )),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "John Doe",
                        style: GoogleFonts.poppins(
                          fontSize: 12.fss,
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "12:15 PM",
                        style: GoogleFonts.poppins(
                          fontSize: 9.fss,
                          color: AppColors.whiteColor,
                        ),
                      )
                    ],
                  ),
                  Text(
                    "Sed ut perspiciatis unde omnis iste natus error sit voluptatem",
                    style: GoogleFonts.poppins(
                      color: AppColors.whiteColor,
                      fontSize: 9.fss,
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
        Positioned(
            top: 20.ss,
            left: 45.ss,
            child: Image.asset('asset/icons/tablet/chat_vector.png',scale: 2.5.ss,)),
      ],
    );
  }

  Widget _progressBarTextView() {
    return Column(
      children: [
        Text(
          "12/03/2021",
          style: GoogleFonts.poppins(
              fontSize: 12.fss,
              fontWeight: FontWeight.w600,
              color: AppColors.darkBlueColor),
        ),
        Text(
          "Lorem ipsum dolor sit\namet, consectetur\nadipiscing elit, sed do\neiusmod tempo",
          style: GoogleFonts.poppins(
            fontSize: 10.fss,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _progressDetailView(context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Center(
      child: CommonCardMobile(
        child: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: ScreenConstant.screenHeightOneSeventh,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.ss),
                    child: Image.asset(
                        "asset/images/tablet/modern-house-with-sky.jpg"),
                  )),
              Container(
                height: mediaQuery.height * 0.03,
              ),
              Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.ss, vertical: 5.ss),
                    decoration: BoxDecoration(
                        color: const Color(0xff0A2342),
                        borderRadius: BorderRadius.circular(5.ss)),
                    child: Text(
                      "For Sale: 54,300,000 AED",
                      style: GoogleFonts.poppins(
                          textStyle:
                              TextStyle(fontSize: 12.ss, color: Colors.white)),
                    ),
                  ),
                  SizedBox(
                    width: 5.ss,
                  ),
                  Expanded(
                    child: Text(
                      "12 Jan 12:32:43",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontSize: 10.ss,
                      )),
                    ),
                  ),
                  Image.asset(
                    "asset/icons/tablet/MSG icon.png",
                    scale: 1.8.ss,
                  ).marginOnly(bottom: 8.ss),
                  Image.asset(
                    "asset/icons/tablet/FILE_Icon.png",
                    scale: 1.8.ss,
                  ).marginOnly(bottom: 8.ss),
                ],
              ),
              Text(
                "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia",
                style: GoogleFonts.poppins(
                  fontSize: 14.fss,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                height: mediaQuery.height * 0.02,
              ),
              Row(
                children: [
                  SvgPicture.asset('asset/icons/tablet/pin.svg'),
                  Container(
                    width: 2.ss,
                  ),
                  Text(
                    "12 no Excepteur sint occa",
                    style: GoogleFonts.poppins(
                      fontSize: 10.fss,
                    ),
                  ),
                  SizedBox(
                    width: 2.ss,
                  ),
                  SvgPicture.asset(
                    "asset/icons/tablet/ic_bed_mobile.svg",
                  ),
                  Container(
                    width: 3.ss,
                  ),
                  Text(
                    "3",
                    style: GoogleFonts.poppins(
                      fontSize: 10.fss,
                      color: AppColors.darkBlueColor,
                    ),
                  ),
                  SizedBox(
                    width: 5.ss,
                  ),
                  Container(
                    width: 1.ss,
                    height: 13.ss,
                    color: const Color(0xffD9D9D9),
                  ),
                  SizedBox(
                    width: 2.ss,
                  ),
                  SvgPicture.asset(
                    "asset/icons/tablet/ic_shower_mobile.svg",
                  ),
                  Container(
                    width: 5.ss,
                  ),
                  Text(
                    "3",
                    style: GoogleFonts.poppins(
                      fontSize: 10.fss,
                      color:  AppColors.darkBlueColor,
                    ),
                  ),
                  SizedBox(
                    width: 5.ss,
                  ),
                  Container(
                    width: 1.ss,
                    height: 13.ss,
                    color: const Color(0xffD9D9D9),
                  ),
                  SizedBox(
                    width: 5.ss,
                  ),
                  SvgPicture.asset(
                    "asset/icons/tablet/alt.svg",
                  ),
                  Container(
                    width: 5.ss,
                  ),
                  Expanded(
                    child: Text(
                      "12,254 ",
                      style: GoogleFonts.poppins(
                        fontSize: 10.fss,
                        color:  AppColors.darkBlueColor,

                      ),
                    ),
                  ),
                  Text(
                    "sqft",
                    style: GoogleFonts.poppins(
                      fontSize: 10.fss,
                    ),
                  ),
                  Container(
                    width: 5.ss,
                  ),
                ],
              ),
              _progressStatusView(Get.context),
            ],
          ),
          Positioned(top: 20, left: 10, child: _moreOptionView()),
        ]),
      ),
    );
  }

  Widget _progressStatusView(context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.primaryColor,
                radius: 13,
                child: SvgPicture.asset("asset/icons/tablet/dock.svg"),
              ),
              SizedBox(width: 5.ss),
              Text(
                'Current Status:  ',
                style: GoogleFonts.poppins(
                  fontSize: 11.fss,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff0A2342),
                ),
                child: Center(
                  child: Text(
                    'Under Negotiation',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 11.fss,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Divider(
          color: Colors.black.withOpacity(0.08),
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.primaryColor,
                radius: 13,
                child: SvgPicture.asset(
                  "asset/icons/tablet/cal.svg",
                  width: 13,
                  height: 13,
                ),
              ),
              SizedBox(width: 5.ss),
              Text(
                'Last Update:  ',
                style: GoogleFonts.poppins(
                  fontSize: 11.fss,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Expanded(
                child: Text(
                  'The seller has reduced the price to 12 million',
                  style: GoogleFonts.poppins(
                    fontSize: 11.fss,
                    color: const Color(0xff0A2342),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              )
            ],
          ),
        ),
        Divider(
          color: Colors.black.withOpacity(0.08),
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.primaryColor,
                radius: 13,
                child: SvgPicture.asset(
                  "asset/icons/tablet/tag.svg",
                  width: 15,
                  height: 15,
                ),
              ),
              SizedBox(width: 5.ss),
              Text(
                'Current Price: ',
                style: GoogleFonts.poppins(
                  fontSize: 11.fss,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                ' 12,000,000 AED',
                style: GoogleFonts.poppins(
                  fontSize: 11.fss,
                  color: const Color(0xff0A2342),
                  fontWeight: FontWeight.normal,
                ),
              )
            ],
          ),
        ),
        Divider(
          color: Colors.black.withOpacity(0.08),
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.primaryColor,
                radius: 13,
                child: SvgPicture.asset("asset/icons/tablet/progress.svg"),
              ),
              SizedBox(width: 5.ss),
              Text(
                'Progress:',
                style: GoogleFonts.poppins(
                  fontSize: 11.fss,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 8.0,
                  thumbColor: AppColors.primaryColor, // Inner color of the thumb
                  overlayColor: appTheme.green40001,
                  activeTrackColor: AppColors.primaryColor,
                  inactiveTrackColor: const Color(0xFF0A2342),
                  thumbShape: const CustomThumbShape(
                    thumbRadius: 12.0, // Radius of the thumb
                    borderThickness: 2.0, // Thickness of the border
                  ),
                  overlayShape: const RoundSliderOverlayShape(overlayRadius: 16.0),
                  trackShape: const RoundedRectSliderTrackShape(),
                ),
                child: Slider(
                  value: 0.75,
                  onChanged: (value) {},
                ),
              ),
              Expanded(
                child: Text(
                  '75%',
                  style: GoogleFonts.poppins(
                    fontSize: 11.fss,
                    color: AppColors.darkBlueColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.ss,
        ),
      ],
    );
  }

  Widget _moreOptionView() {
    return Row(
      children: [
        Container(
          height: 20.ss,
          width: 20.ss,
          decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(20)),
          child: const Icon(
            Icons.favorite_border_rounded,
            size: 16,
            color: Colors.white,
          ),
        ),
        Container(
          width: 10.ss,
        ),
        Container(
          height: 20.ss,
          width: 20.ss,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: SvgPicture.asset(
            "asset/icons/tablet/more-one.svg",
            color: Colors.black,
          ),
        )
      ],
    );
  }

  Widget _tabBarListView() {
    List<String> numbers = [
      'Overview',
      'Deal Updates',
      'Live Chat',
      'Filter',
    ];
    return Container(
      height: 40.ss,
      margin: EdgeInsets.only(top: 10.ss, bottom: 10.ss),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: numbers.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, int index) {
            return Obx(
                  () =>InkWell(
                    highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: (){
                  _homeController.selectedIndex.value = index;
                },
                child: Container(
                  margin: EdgeInsets.only(right: 10.ss),
                  padding: EdgeInsets.symmetric(horizontal: 5.ss),
                  height: 40.ss,
                  width: 100.ss,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.ss),
                      color: _homeController.selectedIndex.value == index
                          ? AppColors.primaryColor
                          : AppColors.whiteColor,
                      border: Border.all(
                          color: _homeController.selectedIndex.value == index
                              ? AppColors.primaryColor
                              : Colors.grey.shade300)),
                  child: Text(
                    numbers[index],
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color:
                      _homeController.selectedIndex.value == index ? AppColors.whiteColor : Colors.grey.shade800,
                      fontSize: 12.fss,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
