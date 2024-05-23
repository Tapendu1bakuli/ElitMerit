import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/phone_size_utils.dart';
import 'package:main/utils/tablet_size_utils.dart';
import 'package:main/utils/widgets_utils/ColumnChart.dart';
import 'package:main/utils/widgets_utils/mobile/common_button.dart';
import 'package:main/utils/widows_size_utilis.dart';
import 'package:main/views/dashboard/widget/mobile/common_card_mobile.dart';
import 'package:main/views/dashboard/widget/tablet/toggel_button_widget.dart';
import 'package:sizing/sizing_extension.dart';
import '../../../../device_manger/screen_constants.dart';
import '../../../../utils/theme/custom_text_style.dart';
import '../../../../utils/widgets_utils/line_chart.dart';
import '../../../authentication/controller/authentication_controller.dart';
import '../../controller/home_controller.dart';

class FilterWidgetWeb extends StatelessWidget {
  FilterWidgetWeb({super.key});
   final AuthenticationController _authenticationController =
   Get.put(AuthenticationController());
   final HomeController _homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return _bodyView(context);
  }

  Widget _bodyView(context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      height: mediaQuery.height,
      color: AppColors.webBgColor,
      padding: getWebMargin(left: 5.ss,right: 5.ss),
      child: Center(
        child: Container(
          width: 1000.ss,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                CommonCardMobile(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child:   Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 5,
                              child:  Obx(
                                    () => GestureDetector(
                                  onTap: () {
                                    _authenticationController.favotitesSelected.value = true;
                                    _authenticationController.savedSelected.value = false;
                                  },
                                  child: SizedBox(
                                    height: 55,
                                    child: ToggleButtonWidgetTablet(
                                      fontSize:
                                      16,
                                      unselectedColor: Colors.black,
                                      isSelected: _authenticationController.favotitesSelected.value,
                                      text: 'Rent',
                                    ),
                                  ),
                                ),
                              ),),
                            Expanded(flex:5,child:   Obx(
                                  () => GestureDetector(
                                onTap: () {
                                  _authenticationController.favotitesSelected.value = false;
                                  _authenticationController.savedSelected.value = true;
                                },
                                child: SizedBox(
                                  height: 55,
                                  child: ToggleButtonWidgetTablet(
                                    fontSize:
                                    16,
                                    unselectedColor: Colors.black,
                                    isSelected: _authenticationController.savedSelected.value,
                                    text: 'Purchase',
                                  ),
                                ),
                              ),
                            ),)


                          ],
                        ),
                      ),
                      SizedBox(
                        width: getWebSize(40),
                      ),
                      Expanded(
                        flex: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 5,
                              child:  Obx(
                                    () => GestureDetector(
                                  onTap: () {
                                    _authenticationController.favotitesSelected1.value = true;
                                    _authenticationController.savedSelected1.value = false;
                                  },
                                  child: SizedBox(
                                    height: 55,
                                    child: ToggleButtonWidgetTablet(
                                      fontSize:
                                      15,
                                      unselectedColor: Colors.black,
                                      isSelected: _authenticationController.favotitesSelected1.value,
                                      text: 'Residential',
                                    ),
                                  ),
                                ),
                              ),),
                            Expanded(flex:5,child:   Obx(
                                  () => GestureDetector(
                                onTap: () {
                                  _authenticationController.favotitesSelected1.value = false;
                                  _authenticationController.savedSelected1.value = true;
                                },
                                child: SizedBox(
                                  height: 55,
                                  child: ToggleButtonWidgetTablet(
                                    fontSize:
                                    15,
                                    unselectedColor: Colors.black,
                                    isSelected: _authenticationController.savedSelected1.value,
                                    text: 'Commercial',
                                  ),
                                ),
                              ),
                            ),)


                          ],
                        ),
                      ),
                      SizedBox(
                        width: getWebSize(40),
                      ),
                      Expanded(
                        flex: 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 5,
                              child:  Obx(
                                    () => GestureDetector(
                                  onTap: () {
                                    _authenticationController.favotitesSelected2.value = true;
                                    _authenticationController.savedSelected2.value = false;
                                  },
                                  child: SizedBox(
                                    height: 55,
                                    child: ToggleButtonWidgetTablet(
                                      fontSize:
                                      16,
                                      unselectedColor: Colors.black,
                                      isSelected: _authenticationController.favotitesSelected2.value,
                                      text: 'Ready',
                                    ),
                                  ),
                                ),
                              ),),
                            Expanded(flex:5,child:   Obx(
                                  () => GestureDetector(
                                onTap: () {
                                  _authenticationController.favotitesSelected2.value = false;
                                  _authenticationController.savedSelected2.value = true;
                                },
                                child: SizedBox(
                                  height: 55,
                                  child: ToggleButtonWidgetTablet(

                                    fontSize:
                                    14,
                                    unselectedColor: Colors.black,
                                    isSelected: _authenticationController.savedSelected2.value,
                                    text: 'Under Construction',
                                  ),
                                ),
                              ),
                            ),)


                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.ss,
                ),
                Container(
                  height: 130,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 4,
                          child: Container(
                            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 5,
                                    child: Container(
                                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                                      padding: EdgeInsets.symmetric(vertical: 10.ss,horizontal: 5.ss),

                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Flexible(
                                              flex: 7,
                                              child: Container(
                                                child: _titleWidget(
                                                    title: 'Apartment Status',
                                                    fontSize:12.fss),
                                              )),
                                          SizedBox(height: getWebSize(20),),
                                          Obx(()=> Container(
                                              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                      flex: 5,
                                                      child: Container(
                                                        padding: EdgeInsets.only(right: 10),
                                                        child: InkWell(
                                                          onTap: (){
                                                            print("Clad onTap");
                                                            _homeController.isOnClad.value = true;
                                                            _homeController.isOnFrame.value = false;
                                                          },
                                                          child: Container(
                                                            padding: EdgeInsets.symmetric(vertical: 5.ss),
                                                            decoration: _homeController.isOnClad.value ?BoxDecoration(color: AppColors.primaryColor,border: Border.all(color: AppColors
                                                                .primaryColor)):BoxDecoration(border: Border.all(color: AppColors
                                                                .blackColor)),
                                                            child: _titleWidget(
                                                                title: "Clad",
                                                                fontColor: _homeController.isOnClad.value ?AppColors.whiteColor:AppColors.blackColor,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w400),
                                                          ),
                                                        ),
                                                      )),
                                                  Expanded(
                                                      flex: 5,
                                                      child: InkWell(
                                                        onTap: (){
                                                          _homeController.isOnClad.value = false;
                                                          _homeController.isOnFrame.value = true;
                                                          print("onFrame onTap");
                                                        },
                                                        child: Container(
                                                          padding: EdgeInsets.symmetric(vertical: 5.ss),
                                                          decoration: _homeController.isOnFrame.value ?BoxDecoration(color: AppColors.primaryColor,border: Border.all(color: AppColors
                                                              .primaryColor)):BoxDecoration(border: Border.all(color: AppColors
                                                              .blackColor)),
                                                          child:_titleWidget(
                                                              title: "on Frame",
                                                              fontColor: _homeController.isOnFrame.value ?AppColors.whiteColor:AppColors.blackColor,
                                                              fontSize: 15,
                                                              fontWeight: FontWeight.w400),
                                                        ),
                                                      )),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                                Expanded(
                                    flex: 5,
                                    child: Container(
                                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                                      padding: EdgeInsets.symmetric(vertical: 10.ss,horizontal: 5.ss),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Flexible(
                                              flex: 7,
                                              child: Container(
                                                child: _titleWidget(
                                                    title: 'Furniture Options',
                                                    fontSize:
                                                        12.fss),
                                              )),
                                          SizedBox(height: getWebSize(20),),
                                          Obx(()=> Row(
                                              children: [
                                                Expanded(
                                                    flex: 3,
                                                    child: InkWell(
                                                      onTap: (){
                                                        print("Full");
                                                        _homeController.isFull.value = true;
                                                        _homeController.isPartial.value = false;
                                                        _homeController.isNo.value = false;
                                                      },
                                                      child: Container(
                                                        margin: EdgeInsets.only(right: 5),
                                                        padding: EdgeInsets.symmetric(vertical: 5.ss),
                                                        decoration: _homeController.isFull.value?BoxDecoration(color: AppColors.primaryColor,border: Border.all(color: AppColors
                                                            .primaryColor)):BoxDecoration(border: Border.all(color: AppColors
                                                            .blackColor)),
                                                        child: _titleWidget(
                                                            title: "Full",
                                                            fontColor: _homeController.isFull.value?AppColors.whiteColor:AppColors.blackColor,
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w400),
                                                      ),
                                                    )),
                                                Expanded(
                                                    flex: 4,
                                                    child: InkWell(
                                                      onTap: (){
                                                        print("Partial");
                                                        _homeController.isFull.value = false;
                                                        _homeController.isPartial.value = true;
                                                        _homeController.isNo.value = false;
                                                      },
                                                      child: Container(
                                                        margin: EdgeInsets.only(right: 5),
                                                        padding: EdgeInsets.symmetric(vertical: 5.ss),
                                                        decoration: _homeController.isPartial.value?BoxDecoration(color: AppColors.primaryColor,border: Border.all(color: AppColors
                                                            .primaryColor)):BoxDecoration(border: Border.all(color: AppColors
                                                            .blackColor)),
                                                        child:_titleWidget(
                                                            title: "Partial",
                                                            fontColor: _homeController.isPartial.value?AppColors.whiteColor:AppColors.blackColor,
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w400),
                                                      ),
                                                    )),
                                                Expanded(
                                                    flex: 3,
                                                    child: InkWell(
                                                      onTap: (){
                                                        print("No");
                                                        _homeController.isFull.value = false;
                                                        _homeController.isPartial.value = false;
                                                        _homeController.isNo.value = true;
                                                      },
                                                      child: Container(
                                                        padding: EdgeInsets.symmetric(vertical: 5.ss),
                                                        decoration: _homeController.isNo.value?BoxDecoration(color: AppColors.primaryColor,border: Border.all(color: AppColors
                                                            .primaryColor)):BoxDecoration(border: Border.all(color: AppColors
                                                            .blackColor)),
                                                        child:_titleWidget(
                                                            title: "No",
                                                            fontColor: _homeController.isNo.value?AppColors.whiteColor:AppColors.blackColor,
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w400),
                                                      ),
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                          )),
                      Container(
                        width: getWebSize(15),
                      ),
                      Expanded(
                          flex: 6,
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 5,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(vertical: 5.ss,horizontal: 10.ss),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          _titleWithIconWidget(
                                            icon:
                                                'asset/icons/tablet/ic_bed_mobile.svg',
                                          ),
                                          SizedBox(height: getWebSize(10),),
                                          Container(
                                            child: _numbersList1(),
                                          ),
                                        ],
                                      ),
                                    )),
                                Expanded(
                                    flex: 5,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(vertical: 5.ss,horizontal: 10.ss),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          _titleWithIconWidget(
                                              title: 'Bathrooms',
                                              icon:
                                                  'asset/icons/tablet/ic_shower_mobile.svg'),
                                          SizedBox(height: getWebSize(10),),
                                          Container(
                                            child: _numbersList2(),
                                          ),
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.ss,
                ),
                CommonCardMobile(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _titleWidget(
                        title: 'Property Type',
                      ),
                      Center(child: _propertyTypeListView()),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.ss,
                ),
                Row(
                  children: [
                    Expanded(
                      flex:4,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(12.ss),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal:16.ss),
                                  child: _titleWidget(
                                    title: 'Price Range',
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20.ss,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width/2.5,
                                padding: EdgeInsets.only(
                                    top: 15.ss, right: 10.ss, bottom: 10.ss),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: AppColors.darkBackgroundColor, width: 1.3),
                                    borderRadius: BorderRadius.circular(2)),
                                child: ColumnChart(),
                              ),
                              SizedBox(
                                height: 20.ss,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.ss),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: _dropdownView(title: 'Min'),
                                    ),
                                    SizedBox(
                                      width: 10.ss,
                                    ),
                                    Expanded(
                                      child: _dropdownView(title: 'Max'),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10.ss,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(width: 10.ss,),
                    Expanded(flex:4,child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(12.ss),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.ss),
                                child: _titleWidget(
                                  title: 'Price & Area',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.ss,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width/2.5,
                              padding: EdgeInsets.only(
                                  top: 15.ss, right: 10.ss, bottom: 10.ss),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColors.darkBackgroundColor, width: 1.3),
                                  borderRadius: BorderRadius.circular(2)),
                              child: const LineChart(),
                            ),
                            SizedBox(
                              height: 20.ss,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.ss),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: _dropdownView(title: 'Min'),
                                  ),
                                  SizedBox(
                                    width: 10.ss,
                                  ),
                                  Expanded(
                                    child: _dropdownView(title: 'Max'),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10.ss,
                            ),
                          ],
                        ),
                      ),
                    ),)
                  ],
                ),
                SizedBox(
                  height: 20.ss,
                ),
                Row(
                  children: [
                  Expanded(flex:6,child:   ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      color: const Color(0xFF50C878),
                      height: ScreenConstant.defaultHeightEightyTwo,
                      padding: EdgeInsets.all(5.ss),
                      child: Center(
                        child: TextFormField(
                          controller: TextEditingController(),
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
                            hintText: "Search",
                            hintStyle: CustomTextStyles.medium12WithHeight2TextStyleTablet.copyWith(height:1.8),
                            errorStyle: TextStyle(
                              color: const Color(0xFFE8503A),
                              fontSize: 12.fss,
                              fontFamily: 'Gordita',
                            ),
                            prefixIcon: const Padding(
                              padding:  EdgeInsets.only(left: 20,right: 10,top: 5),
                              child: Icon(
                                Icons.search_rounded,
                                color: Color(0xFF0A2342),
                                size: 30,
                              ),
                            ),

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
                  ),)  ,
                    SizedBox(
                      width: 15.ss,
                    ),
                    Expanded(flex:2,child:  CommonButton(
                      text: 'Apply Filter',
                      height: ScreenConstant.defaultHeightEightyTwo,
                      width: 399.ss,
                      fontSize: 16.fss,
                      onPressed: () {},
                    ),),
                    SizedBox(
                      width: 15.ss,
                    ),
                    Expanded(flex:2,child:  CommonButton(
                      buttonColor: AppColors.whiteColor,
                      textColor: AppColors.darkBlueColor,
                      buttonBorderColor: AppColors.darkBlueColor,
                      text: 'Clear Filter',
                      height: ScreenConstant.defaultHeightEightyTwo,
                      width: 399.ss,
                      fontSize: 16.fss,
                      onPressed: () {},
                    ),)
                  ],
                ),

                SizedBox(
                  height: 20.ss,
                ),
                SizedBox(
                  height: 20.ss,
                ),
                Container(height: ScreenConstant.defaultHeightEightyTwo,
                  padding:EdgeInsets.symmetric(vertical: 5.ss),
                  decoration: BoxDecoration(color: const Color(0xFF0A2342),borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Expanded(flex:3,child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment:MainAxisAlignment.center,children: [
                        Image.asset("asset/images/tablet/call_current.png",height: ScreenConstant.defaultHeightTwentyThree+5,),

                        Text("Call",style: CustomTextStyles.medium12Tablet,)
                      ],)),
                      Container(height: 58.ss,color: const Color(0xFFFFFFFF).withOpacity(0.25),width: 2.ss,),
                      Expanded(flex:3,child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment:MainAxisAlignment.center,children: [
                        Image.asset("asset/images/tablet/whats_app_current.png",height: ScreenConstant.defaultHeightTwentyThree,),
                        Container(height: 3.ss,),
                        Text("WhatsApp",style: CustomTextStyles.medium12Tablet,)
                      ],)),
                      Container(height: 58.ss,color: const Color(0xFFFFFFFF).withOpacity(0.25),width: 2.ss,),
                      Expanded(flex:3,child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment:MainAxisAlignment.center,children: [
                        Image.asset("asset/images/tablet/email_current.png",height: ScreenConstant.defaultHeightTwentyThree+5,),
                        Text("Email",style: CustomTextStyles.medium12Tablet,)
                      ],)),
                      Container(height: 58.ss,color: const Color(0xFFFFFFFF).withOpacity(0.25),width: 2.ss,),
                      Expanded(flex:3,child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment:MainAxisAlignment.center,children: [
                        Image.asset("asset/images/tablet/wechat_current.png",height: ScreenConstant.defaultHeightTwentyThree+5,),
                        Text("Live Chat",style: CustomTextStyles.medium12Tablet,)
                      ],)),
                    ],
                  ),
                ),
              ],
            ).marginOnly(left: 10.ss, right: 10.ss, top: 10.ss, bottom: 10.ss),
          ),
        ),
      ),
    );
  }



  Widget _propertyTypeListView() {
    return  Obx(
          () => GridView.count(
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
              childAspectRatio: 3 / 3,
          crossAxisCount: 4,
          crossAxisSpacing: 0,
          children: List.generate(
              _homeController.propertyTypeForFilter.length, (index) {
                    return InkWell(
                      onTap: (){
                        debugPrint("_homeController.isTapped.value");
                        _homeController.propertyTypeForFilter.forEach(
                                (element) => element.isColoured = false);
                        debugPrint("index:$index");
                        _homeController.propertyTypeForFilter[index].isColoured =
                        !_homeController
                            .propertyTypeForFilter[index].isColoured!;
                        _homeController.propertyTypeForFilter.refresh();
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.ss,vertical: 25.ss),
                        decoration: BoxDecoration(border:Border.all(color:_homeController.propertyTypeForFilter[index].isColoured? AppColors.primaryColor:Color(0xFF000000).withOpacity(0.2)),color:  _homeController.propertyTypeForFilter[index].isColoured? AppColors.primaryColor:Color(0xFF000000).withOpacity(0.05),borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.symmetric(horizontal: 10.ss,vertical: 5.ss),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10.ss),
                              margin: EdgeInsets.symmetric(horizontal:30.ss,),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: _homeController.propertyTypeForFilter[index].isColoured?Color(0xFFffffff):AppColors.primaryColor,
                                  borderRadius: BorderRadius.circular(3)),
                              child: SvgPicture.asset(
                                alignment: Alignment.center,
                                _homeController.propertyTypeForFilter[index].image??"",
                                height: ScreenConstant.defaultHeightSixty,
                                color: _homeController.propertyTypeForFilter[index].isColoured?Colors.black.withOpacity(0.5):Colors.white,
                              ),
                            ),
                            Container(height: getWebSize(15)),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: _titleWidget(
                                  title: _homeController.propertyTypeForFilter[index].title??"",
                                  fontColor: _homeController.propertyTypeForFilter[index].isColoured?Colors.white:Colors.black,
                                  fontSize: 17,
                                  maxLines: 2,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    );
          })),
    );
  }



  Widget _dropdownView({required String title}) {
    return SizedBox(
      height: ScreenConstant.screenHeightTenth,
      child: DropdownButtonFormField(
        decoration: const InputDecoration(
          filled: true,
          fillColor: Colors.white,

          focusedBorder: OutlineInputBorder(

            borderSide: BorderSide(
                color: Color(0xFF50C878),
                width: 1,
                style: BorderStyle.solid),
          ),
          disabledBorder: OutlineInputBorder(

            borderSide: BorderSide(
                color: Color(0xFFC4C4C4),
                width: 1,
                style: BorderStyle.solid),
          ),
          enabledBorder: OutlineInputBorder(

            borderSide: BorderSide(
                color: Color(0xFF50C878),
                width: 1,
                style: BorderStyle.solid),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
                color: Color(0xFFE8503A),
                width: 1,
                style: BorderStyle.solid),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
                color: Color(0xFFE8503A),
                width: 1,
                style: BorderStyle.solid),
          ),
        ),
        hint: Text(
          title,
          style: CustomTextStyles
              .regular15ssDropDownTextStyleTablet,
        ),
        icon: Image.asset(
          "asset/icons/tablet/download_10.png",
        ),
        isExpanded: true,
        iconSize: getWebSize(24),
        style: CustomTextStyles
            .regular15TextStyleTablet,
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
    );
  }

  Widget _decoratedContainer(
      {required String title,
      Color? fontColor,
      required Color borderColor,
      Color? fillColor}) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(3),
        color: fillColor ?? AppColors.primaryColor,
      ),
      child: _titleWidget(
          title: title,
          fontColor: fontColor,
          fontSize: 10.fss,
          fontWeight: FontWeight.w400),
    );
  }

  Widget _titleWidget(
      {required String title,
      int? maxLines,
      double? fontSize,
      FontWeight? fontWeight,
      Color? fontColor}) {
    return Text(
      title,
      maxLines: maxLines ?? 1,
      style: GoogleFonts.poppins(
        color: fontColor,
        fontWeight: fontWeight ?? FontWeight.w500,
        fontSize: fontSize ?? 16.fss,
      ),
      textAlign: TextAlign.center,
    );
  }


  Widget _titleWithIconWidget(
      {String? icon, String? title, double? iconHeight, double? iconWidget}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: SvgPicture.asset(
            height: iconHeight ?? 25.ss,
            width: iconWidget ?? 25.ss,
            icon ?? "asset/icons/tablet/bed.svg",
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top:5.0.ss,),
            child: Text(
              title ?? 'Bedrooms',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 12.fss,
              ),
            ).marginOnly(left: 5.ss),
          ),
        ),
      ],
    );
  }

  Widget _numbersList1() {
    return SizedBox(
      height: 30,
      child: Obx(()=>ListView.builder(
            shrinkWrap: true,
            itemCount: _homeController.listOfNumber.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, int index) {
              return InkWell(
                onTap: (){
                  _homeController.listOfNumber.forEach(
                          (element) => element.isColoured = false);
                  debugPrint("index:$index");
                  _homeController.listOfNumber[index].isColoured =
                  !_homeController.listOfNumber[index].isColoured!;
                  _homeController.listOfNumber.refresh();
                },
                child: Container(
                  padding: getWebPadding(all: 3),
                  margin: getWebPadding(right: 7),
                  height: 35,
                  width: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color:
                      _homeController.listOfNumber[index].isColoured ? AppColors.whiteColor : Colors.grey.shade100,
                      border: Border.all(
                          color: _homeController.listOfNumber[index].isColoured
                              ? AppColors.primaryColor
                              : Colors.grey.shade300)),
                  child: Text(
                    _homeController.listOfNumber[index].title??"",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 10.fss,
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
  Widget _numbersList2() {
    return SizedBox(
      height: 30,
      child: Obx(()=>ListView.builder(
          shrinkWrap: true,
          itemCount: _homeController.listOfNumberSecond.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, int index) {
            return InkWell(
              onTap: (){
                _homeController.listOfNumberSecond.forEach(
                        (element) => element.isColoured = false);
                debugPrint("index:$index");
                _homeController.listOfNumberSecond[index].isColoured =
                !_homeController.listOfNumberSecond[index].isColoured!;
                _homeController.listOfNumberSecond.refresh();
              },
              child: Container(
                padding: getWebPadding(all: 3),
                margin: getWebPadding(right: 7),
                height: 35,
                width: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color:
                    _homeController.listOfNumberSecond[index].isColoured ? AppColors.whiteColor : Colors.grey.shade100,
                    border: Border.all(
                        color: _homeController.listOfNumberSecond[index].isColoured
                            ? AppColors.primaryColor
                            : Colors.grey.shade300)),
                child: Text(
                  _homeController.listOfNumberSecond[index].title??"",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 10.fss,
                  ),
                ),
              ),
            );
          }),
      ),
    );
  }
}




class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double? y;
}