import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/widgets_utils/ColumnChart.dart';
import 'package:main/utils/widgets_utils/line_chart.dart';
import 'package:main/utils/widgets_utils/mobile/common_button.dart';
import 'package:main/views/dashboard/widget/mobile/common_card_mobile.dart';
import 'package:main/views/dashboard/widget/mobile/toggle_button_widget_mobile.dart';
import 'package:sizing/sizing_extension.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../../device_manger/screen_constants.dart';
import '../../../../utils/phone_size_utils.dart';
import '../../../../utils/tablet_size_utils.dart';
import '../../../../utils/theme/custom_text_style.dart';
import '../../../../utils/widows_size_utilis.dart';
import '../../../authentication/controller/authentication_controller.dart';
import '../../controller/home_controller.dart';

class FilterWidget extends StatelessWidget {
   FilterWidget({super.key});
  final AuthenticationController _authenticationController =
  Get.put(AuthenticationController());
   final HomeController _homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
        data:MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: _bodyView(context));
  }

  Widget _bodyView(context) {
    bool? isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;

    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      height: mediaQuery.height,
      color: const Color(0xFF1E1E1E).withOpacity(0.1),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonCardMobile(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex:5,
                        child: Row(
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
                                  child: ToggleButtonWidgetMobile(
                                    fontSize: 10.fss,
                                    unselectedColor: Colors.black,
                                    isSelected: _authenticationController.favotitesSelected.value,
                                    text: 'Rent',
                                  ),
                                ),
                              ),),
                            Expanded(flex:5,child:   Obx(
                                  () => GestureDetector(
                                onTap: () {
                                  _authenticationController.favotitesSelected.value = false;
                                  _authenticationController.savedSelected.value = true;
                                },
                                child: ToggleButtonWidgetMobile(
                                  fontSize: 10.fss,
                                  unselectedColor: Colors.black,
                                  isSelected: _authenticationController.savedSelected.value,
                                  text: 'Purchase',
                                ),
                              ),
                            ),)


                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15.ss,
                      ),
                      Expanded(
                        flex:5,
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
                                  child: ToggleButtonWidgetMobile(
                                    fontSize: 10.fss,
                                    unselectedColor: Colors.black,
                                    isSelected: _authenticationController.favotitesSelected1.value,
                                    text: 'Residential',
                                  ),
                                ),
                              ),),
                            Expanded(flex:5,child:   Obx(
                                  () => GestureDetector(
                                onTap: () {
                                  _authenticationController.favotitesSelected1.value = false;
                                  _authenticationController.savedSelected1.value = true;
                                },
                                child: ToggleButtonWidgetMobile(
                                  fontSize: 10.fss,
                                  unselectedColor: Colors.black,
                                  isSelected: _authenticationController.savedSelected1.value,
                                  text: 'Commercial',
                                ),
                              ),
                            ),)


                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.ss,
                  ),
                  Row(
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
                            child: ToggleButtonWidgetMobile(
                              fontSize: 10.fss,
                              unselectedColor: Colors.black,
                              isSelected: _authenticationController.favotitesSelected2.value,
                              text: 'Ready',
                            ),
                          ),
                        ),),
                      Expanded(flex:5,child:   Obx(
                            () => GestureDetector(
                          onTap: () {
                            _authenticationController.favotitesSelected2.value = false;
                            _authenticationController.savedSelected2.value = true;
                          },
                          child: ToggleButtonWidgetMobile(
                            fontSize: 10.fss,
                            unselectedColor: Colors.black,
                            isSelected: _authenticationController.savedSelected2.value,
                            text: 'Under Construction',
                          ),
                        ),
                      ),)


                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.ss,
            ),
            CommonCardMobile(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _titleWithIconWidget(icon: 'asset/icons/tablet/ic_bed_mobile.svg'),
                  Container(height: 10,),
                  _numbersList1(),
                  Container(height: 10,),
                  _titleWithIconWidget(title: 'Bathrooms',icon: 'asset/icons/tablet/ic_shower_mobile.svg'),
                  Container(height: 10,),
                  _numbersList2(),
                ],
              ),
            ),
            SizedBox(
              height: 20.ss,
            ),
            CommonCardMobile(child:
            Row(
              children: [
                Expanded(flex:4,child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _titleWidget(title: 'Apartment Status',fontSize: 13.fss),
                    Container(height: 10.ss,),
                    // Row(children: [
                    //   Expanded(flex:4,child: _decoratedContainer(title: 'Clad',fontColor: AppColors.whiteColor,borderColor: Colors.transparent),),
                    //   Container(width: 5.ss,),
                    //   Expanded(flex:6,child:  _decoratedContainer(title: 'on Frame',borderColor: AppColors.blackColor, fillColor: AppColors.whiteColor),),
                    // ],)
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
                                    child: Center(
                                      child: _titleWidget(
                                          title: "Clad",
                                          fontColor: _homeController.isOnClad.value ?AppColors.whiteColor:AppColors.blackColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
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
                                  child:Center(
                                    child: _titleWidget(
                                        title: "on Frame",
                                        fontColor: _homeController.isOnFrame.value ?AppColors.whiteColor:AppColors.blackColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                    ),
                  ],
                )),
                Container(width: 10.ss,),
                Expanded(flex:6,child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  _titleWidget(title: 'Furniture Options',fontSize: 13.fss),
                    Container(height: 10.ss,),
                  // Row(
                  //   children: [
                  //     Expanded(flex:4,child: _decoratedContainer(title: 'Full',fontColor: AppColors.whiteColor,borderColor: Colors.transparent)),
                  //     Container(width: 5.ss,),
                  //     Expanded(flex:4,child:  _decoratedContainer(title: 'Partial',borderColor: AppColors.blackColor, fillColor: AppColors.whiteColor),),
                  //     Container(width: 5.ss,),
                  //     Expanded(flex:2,child: _decoratedContainer(title: 'No',borderColor: AppColors.blackColor, fillColor: AppColors.whiteColor)),
                  //   ],
                  // )
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
                                child: Center(
                                  child: _titleWidget(
                                      title: "Full",
                                      fontColor: _homeController.isFull.value?AppColors.whiteColor:AppColors.blackColor,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
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
                                child:Center(
                                  child: _titleWidget(
                                      title: "Partial",
                                      fontColor: _homeController.isPartial.value?AppColors.whiteColor:AppColors.blackColor,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
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
                                child:Center(
                                  child: _titleWidget(
                                      title: "No",
                                      fontColor: _homeController.isNo.value?AppColors.whiteColor:AppColors.blackColor,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            )),
                      ],
                    ),
                    ),
                ],)),
              ],
            )
            ) ,
            SizedBox(
              height: 20.ss,
            ),
            CommonCardMobile(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              _titleWidget(title: 'Property Type',),
                SizedBox(
                  height: 10.ss,
                ),
                _propertyTypeListView1(),
            ],),),
            SizedBox(
              height: 20.ss,
            ),
            CommonCardMobile(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,children: [
              _titleWidget(title: 'Price Range',),
              SizedBox(
                height: 20.ss,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(
                    top: 15.ss, right: 10.ss, bottom: 10.ss),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: AppColors.darkBackgroundColor, width: 1.3),
                    borderRadius: BorderRadius.circular(2)),
                child: ColumnChart(),
              ),
              SizedBox(height: 20.ss,),
              Row(children: [
                Expanded(
                  child: _dropdownView(title: 'Min'),
                ),
                SizedBox(width: 10.ss,),
                Expanded(
                  child: _dropdownView(title: 'Max'),
                ),
              ],),
              SizedBox(height: 10.ss,),
            ],),),
            SizedBox(
              height: 20.ss,
            ),
            CommonCardMobile(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,children: [
              _titleWidget(title: 'Price & Area',),
              SizedBox(
                height: 20.ss,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(
                    top: 15.ss, right: 10.ss, bottom: 10.ss),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: AppColors.darkBackgroundColor, width: 1.3),
                    borderRadius: BorderRadius.circular(2)),
                child: const LineChart(),
              ),
              SizedBox(height: 20.ss,),
              Row(children: [
                Expanded(
                  child: _dropdownView(title: 'Min'),
                ),
                SizedBox(width: 10.ss,),
                Expanded(
                  child: _dropdownView(title: 'Max'),
                ),
              ],),
              SizedBox(height: 10.ss,),

            ],),),
            SizedBox(
              height: 20.ss,
            ),
            CommonCardMobile(color: AppColors.primaryColor,child:
            _searchFieldView(),),
            SizedBox(
              height: 20.ss,
            ),
            Row(children: [
              Expanded(
                child: CommonButton(
                  text: 'Apply Filter',
                  height: 40.ss,
                  fontWeight: FontWeight.w400,
                  fontSize: 12.fss,
                  onPressed: () {

                  },
                ),
              ),
              SizedBox(
                width: 20.ss,
              ),
              Expanded(

                child: CommonButton(
                  buttonColor: AppColors.whiteColor,
                  textColor: AppColors.darkBlueColor,
                  buttonBorderColor: AppColors.darkBlueColor,
                  text: 'Clear Filter',
                  height: 40.ss,
                  fontWeight: FontWeight.w400,
                  fontSize: 12.fss,
                  onPressed: () {
                  },
                ),
              ),
            ],),
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

          ],
        ).marginOnly(left: 10.ss, right: 10.ss, top: 10.ss,bottom: 10.ss),
      ),
    );
  }

  Widget _searchFieldView(){
    return TextFormField(
      controller: TextEditingController(),
      keyboardType: TextInputType.text,
      autofocus: false,
      maxLines: 1,

      cursorColor:  AppColors.primaryColor,
      textInputAction: TextInputAction.done,
      onTap: () {

      },
      style: TextStyle(
        color:AppColors.textColor,
        fontSize: 16.fss,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(2),
        fillColor:  const Color(0xFFF6F8FA),
        filled: true,
        hintText: "Search",
        hintStyle: TextStyle(
          color: AppColors.textColor,
          fontSize: 16.fss,
        ),
        prefixIcon:  Image.asset('asset/icons/tablet/Search_light.png',color: AppColors.blackColor,),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
              color: Color(0xFFF6F8FA),
              width: 1,
              style: BorderStyle.solid),
        ),
        disabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
              color: Color(0xFFEAF0F5),
              width: 1,
              style: BorderStyle.solid),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
              color: Color(0xFFEAF0F5),
              width: 1,
              style: BorderStyle.solid),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
              color: Color(0xFFE8503A),
              width: 1,
              style: BorderStyle.solid),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
              color: Color(0xFFE8503A),
              width: 1,
              style: BorderStyle.solid),
        ),
      ),
    );
  }
   Widget _propertyTypeListView1() {
     return  Obx(
           () => GridView.count(
           physics: const ClampingScrollPhysics(),
           shrinkWrap: true,
            childAspectRatio: 6/10,
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
                 margin: EdgeInsets.symmetric(horizontal: 5),
                 decoration: BoxDecoration(border:Border.all(color:_homeController.propertyTypeForFilter[index].isColoured? AppColors.primaryColor:Color(0xFF000000).withOpacity(0.2)),color:  _homeController.propertyTypeForFilter[index].isColoured? AppColors.primaryColor:Color(0xFF000000).withOpacity(0.05),borderRadius: BorderRadius.circular(12)),
                 padding: EdgeInsets.symmetric(horizontal: 5.ss,vertical: 8.ss),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(
                       padding: EdgeInsets.symmetric(vertical: 5),
                       margin: EdgeInsets.symmetric(horizontal:10.ss,),
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
                     Container(height: 15),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 8.0),
                       child: _titleWidget(
                           title: _homeController.propertyTypeForFilter[index].title??"",
                           fontColor: _homeController.propertyTypeForFilter[index].isColoured?Colors.white:Colors.black,
                           fontSize: 12,
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
  Widget _propertyTypeListView(){
    List <String> listTitle = ['Apartment' ,'Villa', 'Hotel Apartment','Townhouse'];
    List <String> listIcon = ['asset/icons/tablet/apartment_mobile.svg' ,'asset/icons/tablet/villa_mobile.svg',
      'asset/icons/tablet/hotel_apartment_mobile.svg','asset/icons/tablet/townhouse_mobile.svg'];
    return   GridView.count(
         physics: ClampingScrollPhysics(),
         shrinkWrap: true,
         crossAxisCount: 4,
         crossAxisSpacing: 0,
         children: List.generate(
             _homeController.propertyType.length, (index) {
           // return AddPropertyTabletCardWidget(
           //   image: _homeController.propertyType[index].image,
           //   title: _homeController.propertyType[index].title,
           //   onTap: () {
           //     print("_homeController.isTapped.value");
           //     _homeController.propertyType.forEach(
           //             (element) => element.isColoured = false);
           //     print("index:$index");
           //     _homeController.propertyType[index].isColoured =
           //     !_homeController
           //         .propertyType[index].isColoured!;
           //     _homeController.propertyType.refresh();
           //   },
           //   isColoured:
           //   _homeController.propertyType[index].isColoured,
           // );
           return Container(
            //width: getTabletSize(300),
             margin: EdgeInsets.symmetric(horizontal: 10.ss),
             decoration: BoxDecoration(border:Border.all(color: Color(0xFF000000).withOpacity(0.2)),color: Color(0xFF000000).withOpacity(0.05),borderRadius: BorderRadius.circular(12)),
             padding: EdgeInsets.symmetric(horizontal: 5.ss,vertical: 8.ss),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Expanded(
                   flex: 5,
                   child: Container(
                     padding: EdgeInsets.symmetric(vertical: 5.ss),
                     margin: EdgeInsets.symmetric(horizontal:10.ss,),
                     alignment: Alignment.center,
                     decoration: BoxDecoration(
                         color: AppColors.primaryColor,
                         borderRadius: BorderRadius.circular(3)),
                     child: SvgPicture.asset(
                       alignment: Alignment.center,
                       listIcon[index],
                       height: ScreenConstant.defaultHeightFifty,
                     ),
                   ),
                 ),
                 Container(height: 20),
                 Expanded(
                   flex:5,
                   child: _titleWidget(
                       title: listTitle[index],
                       fontSize: 12.fss,
                       maxLines: 2,
                       fontWeight: FontWeight.w400),
                 ),
               ],
             ),
           );
         }));
  }

  Widget _socialShareListView(){
    List <String> listTitle = ['Call' ,'WhatsApp', 'Email','Live Chat'];
    List <String> listIcon = ['asset/icons/tablet/phone-outgoing.svg' ,'asset/icons/tablet/ic_whatsp.svg',
      'asset/icons/tablet/envelope-one.svg','asset/icons/tablet/wechat.svg'];
    return   SizedBox(
      height: 70.ss,

      child: ListView.builder(
          itemCount: 4,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context , int index){
            return Container(
              padding: EdgeInsets.only(right: 15.ss,left: 10.ss,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        alignment: Alignment.center,
                        listIcon[index],
                        height: 30.ss,
                      ),
                    SizedBox(height: 2.ss,),
                      _titleWidget(title: listTitle[index],fontColor: AppColors.whiteColor,
                          fontSize: 13.fss,maxLines: 1,fontWeight: FontWeight.w400),
                    ],
                  ).marginOnly(right: 15.ss),
                  index == 3 ? Container():Container(color: AppColors.whiteColor,width: 2,)
                ],
              ),
            );
          }),
    );
  }

  Widget _dropdownView({required String title}){
    return Container(

      height: 40.ss,
      alignment: Alignment.center,
      // decoration: BoxDecoration(border:
      // Border.all(color: AppColors.primaryColor),
      //     borderRadius: BorderRadius.circular(2)),

      child: DropdownButtonFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(vertical: 10.ss,horizontal: 15.ss),
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
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
                color: Color(0xFFE8503A),
                width: 1,
                style: BorderStyle.solid),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
                color: Color(0xFFE8503A),
                width: 1,
                style: BorderStyle.solid),
          ),

        ),
        hint:  Text(
          title,
          style: CustomTextStyles.regular15Mobile.copyWith(fontSize: 10.fss),
        ),
        icon: Image.asset("asset/icons/tablet/download_10.png",),
        isExpanded: true,
        iconSize: getSize(24),
        style: CustomTextStyles.regular15Mobile,
        items: ["Data1","Data2"].map(
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

  Widget _decoratedContainer({required String title,Color? fontColor ,required Color borderColor,Color ? fillColor}){
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 5.ss,vertical: 8.ss),
      decoration:  BoxDecoration(
        border: Border.all(color: borderColor  ),
        borderRadius: BorderRadius.circular(3),
        color: fillColor ?? AppColors.primaryColor,
      ),
      child: _titleWidget(title: title , fontColor: fontColor ,fontSize: 10.fss,fontWeight: FontWeight.w400),
    );
  }

  Widget _titleWidget({required String title , int? maxLines,double? fontSize ,FontWeight? fontWeight,Color? fontColor }){
    return Text(
       title ,
      maxLines: maxLines ?? 1,
      style: GoogleFonts.poppins(
        color : fontColor,
        fontWeight: fontWeight ?? FontWeight.w500,
        fontSize: fontSize ?? 16.fss,
      ),
    );
  }

  Widget _toggleButtonView({required double minWidth, required List<String> labels}) {
    return ToggleSwitch(
      minWidth: minWidth,
      fontSize: 10.0.fss,
      initialLabelIndex: 0,
      activeBgColor: const [Color(0xFF50C878)],
      activeFgColor: Colors.white,
      inactiveBgColor: const Color(0xFFF3F3F3),
      inactiveFgColor: Colors.grey[900],
      totalSwitches: 2,
      labels: labels,
      onToggle: (index) {},
    );
  }

  Widget _titleWithIconWidget({String? icon, String? title,double? iconHeight , double? iconWidget}) {
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
          child: Text(
            title ?? 'Bedrooms',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 16.fss,
            ),
          ).marginOnly( left: 8.ss),
        ),
      ],
    );
  }

  Widget _numbersList() {
    List<String> numbers = ['1', '2', '3', '4', '5', '6', '7', '8+'];
    return Container(
      height: 30.ss,
      margin: EdgeInsets.only(top: 10.ss, bottom: 10.ss),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: numbers.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, int index) {
            return Container(
              margin: EdgeInsets.only(right: 10.ss),
              height: 30.ss,
              width: 30.ss,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color:
                      index == 0 ? AppColors.whiteColor : Colors.grey.shade100,
                  border: Border.all(
                      color: index == 0
                          ? AppColors.primaryColor
                          : Colors.grey.shade300)),
              child: Text(
                numbers[index],
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 12.fss,
                ),
              ),
            );
          }),
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
                 margin: EdgeInsets.only(right: 10.ss),
                 height: 30.ss,
                 width: 30.ss,
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
                     fontSize: 12.fss,
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
                  margin: EdgeInsets.only(right: 10.ss),
                 height: 30.ss,
                 width: 30.ss,
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
                     fontSize: 12.fss,
                   ),
                 ),
               ),
             );
           }),
       ),
     );
   }
}
