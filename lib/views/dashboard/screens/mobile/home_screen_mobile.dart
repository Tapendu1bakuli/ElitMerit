import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizing/sizing.dart';
import 'package:badges/badges.dart' as badges;
import '../../../../device_manger/screen_constants.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../controller/home_controller.dart';
import '../../widget/mobile/property_card_widget_mobile.dart';
import '../../widget/tablet/property_card_widget_tablet.dart';
class HomeScreenMobile extends StatelessWidget {
   HomeScreenMobile({Key? key}) : super(key: key);
  HomeController _homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                    flex: 9,
                    child: SizedBox(
                      height: 40.ss,
                      child: TextFormField(
                        controller: TextEditingController(),
                        keyboardType: TextInputType.emailAddress,
                        autofocus: false,
                        maxLines: 1,
                        cursorColor: AppColors.primaryColor,
                        textInputAction: TextInputAction.next,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        style: TextStyle(
                            color: const Color(0xFF111A24),
                            fontSize: 14.fss,
                            fontFamily: 'Gordita'),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Building, Area ...",
                          hintStyle: TextStyle(
                            color: const Color(0xFF6A6A6A),
                            fontSize: 12.fss,
                          ),
                          errorStyle: TextStyle(
                              color: const Color(0xFFE8503A),
                              fontSize: 12.fss,
                              fontFamily: 'Gordita'),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 10.0.ss, right: 5.ss),
                            child: Icon(
                              Icons.search_rounded,
                              color: Color(0xFF0A2342),
                              size: 16.ss,
                            ),
                          ),
                          suffixIcon: Icon(
                            Icons.cancel_outlined,
                            color: Color(0xFF0A2342),
                            size: 16.ss,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Color(0xFFECECEC),
                                width: 1.ss,
                                style: BorderStyle.solid),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Color(0xFFC4C4C4),
                                width: 1.ss,
                                style: BorderStyle.solid),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Color(0xFFC4C4C4),
                                width: 1.ss,
                                style: BorderStyle.solid),
                          ),
                          errorBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Color(0xFFE8503A),
                                width: 1.ss,
                                style: BorderStyle.solid),
                          ),
                          focusedErrorBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Color(0xFFE8503A),
                                width: 1.ss,
                                style: BorderStyle.solid),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 10.ss,
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.only(right: 5.0.ss),
                      child: badges.Badge(
                        badgeStyle: badges.BadgeStyle(
                          badgeColor: Colors.red,
                        ),
                        position:
                        badges.BadgePosition.custom(top: -10.ss, end: -2.ss),
                        badgeContent: Text(
                          '2',
                          style: TextStyle(color: Colors.white,fontSize: 8.fss),
                        ),
                        child: Container(
                        padding:
                        EdgeInsets.symmetric(horizontal: 8.ss, vertical: 9.ss),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                            "asset/icons/tablet/sliders.png",
                            height: 15.ss,
                          ),
                        ),
                        //child: Image.asset("asset/icons/tablet/sliders.png",height: 15.ss,),
                      ),
                    ),
                  )
                ],
              ),
               Container(height: 10.ss),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 35.ss,
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintStyle: TextStyle(
                              color: const Color(0xFF6A6A6A),
                              fontSize: 12.fss,
                            ),
                            contentPadding: EdgeInsets.symmetric(horizontal: 5.ss),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFECECEC),
                                  width: 1.ss,
                                  style: BorderStyle.solid),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFC4C4C4),
                                  width: 1.ss,
                                  style: BorderStyle.solid),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFC4C4C4),
                                  width: 1.ss,
                                  style: BorderStyle.solid),
                            ),
                            errorBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFE8503A),
                                  width: 1.ss,
                                  style: BorderStyle.solid),
                            ),
                            focusedErrorBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFE8503A),
                                  width: 1.ss,
                                  style: BorderStyle.solid),
                            ),
                            hintText: "Data"
                        ),
                        icon: Icon(Icons.keyboard_arrow_down_rounded),
                        isExpanded: true,
                        iconSize: 20.0.ss,
                        style: TextStyle(
                          color: const Color(0xFF6A6A6A),
                          fontSize: 12.fss,
                        ),
                        items: ['One', 'Two', 'Three'].map(
                              (val) {
                            return DropdownMenuItem<String>(
                              value: val,
                              child: Text(val),
                            );
                          },
                        ).toList(),
                        onChanged: (val) {
                          _homeController.selectedLocation = val;
                        },
                      ),
                    ),
                  ),
                  Container(
                    width: 10.ss,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 35.ss,
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(
                              color: const Color(0xFF6A6A6A),
                              fontSize: 12.fss,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.symmetric(horizontal: 5.ss),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFECECEC),
                                  width: 1.ss,
                                  style: BorderStyle.solid),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFC4C4C4),
                                  width: 1.ss,
                                  style: BorderStyle.solid),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFC4C4C4),
                                  width: 1.ss,
                                  style: BorderStyle.solid),
                            ),
                            errorBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFE8503A),
                                  width: 1.ss,
                                  style: BorderStyle.solid),
                            ),
                            focusedErrorBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFE8503A),
                                  width: 1.ss,
                                  style: BorderStyle.solid),
                            ),
                            hintText: "Data"
                        ),
                        icon: Icon(Icons.keyboard_arrow_down_rounded),
                        isExpanded: true,
                        iconSize: 20.0,
                        style: TextStyle(
                          color: const Color(0xFF6A6A6A),
                          fontSize: 12.fss,
                        ),
                        items: ['One', 'Two', 'Three'].map(
                              (val) {
                            return DropdownMenuItem<String>(
                              value: val,
                              child: Text(val),
                            );
                          },
                        ).toList(),
                        onChanged: (val) {
                          _homeController.selectedLocation = val;
                        },
                      ),
                    ),
                  ),
                  Container(
                    width: 10.ss,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 35.ss,
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(
                              color: const Color(0xFF6A6A6A),
                              fontSize: 12.fss,
                            ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(horizontal: 5.ss),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Color(0xFFECECEC),
                                width: 1.ss,
                                style: BorderStyle.solid),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Color(0xFFC4C4C4),
                                width: 1.ss,
                                style: BorderStyle.solid),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Color(0xFFC4C4C4),
                                width: 1.ss,
                                style: BorderStyle.solid),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Color(0xFFE8503A),
                                width: 1.ss,
                                style: BorderStyle.solid),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Color(0xFFE8503A),
                                width: 1.ss,
                                style: BorderStyle.solid),
                          ),
                         hintText: "Data"
                        ),
                        icon: Icon(Icons.keyboard_arrow_down_rounded),
                        isExpanded: true,
                        iconSize: 20.0,
                        style: TextStyle(
                          color: const Color(0xFF6A6A6A),
                          fontSize: 12.fss,
                        ),
                        items: ['One', 'Two', 'Three'].map(
                              (val) {
                            return DropdownMenuItem<String>(
                              value: val,
                              child: Text(val),
                            );
                          },
                        ).toList(),
                        onChanged: (val) {
                          _homeController.selectedLocation = val;
                        },
                      ),
                    ),
                  ),
                  Container(
                    width: 10.ss,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 35.ss,
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                                                  hintStyle: TextStyle(
                                                    color: const Color(0xFF6A6A6A),
                                                    fontSize: 12.fss,
                                                  ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.symmetric(horizontal: 5.ss),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFECECEC),
                                  width: 1.ss,
                                  style: BorderStyle.solid),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFC4C4C4),
                                  width: 1.ss,
                                  style: BorderStyle.solid),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFC4C4C4),
                                  width: 1.ss,
                                  style: BorderStyle.solid),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFE8503A),
                                  width: 1.ss,
                                  style: BorderStyle.solid),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(0xFFE8503A),
                                  width: 1.ss,
                                  style: BorderStyle.solid),
                            ),
                            hintText: "Data"
                        ),
                        icon: Icon(Icons.keyboard_arrow_down_rounded),
                        isExpanded: true,
                        iconSize: 20.0.ss,
                        style:TextStyle(
                          color: const Color(0xFF6A6A6A),
                          fontSize: 12.fss,
                        ),
                        items: ['One', 'Two', 'Three'].map(
                              (val) {
                            return DropdownMenuItem<String>(
                              value: val,
                              child: Text(val),
                            );
                          },
                        ).toList(),
                        onChanged: (val) {
                          _homeController.selectedLocation = val;
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
                    child: Container(
                      height: 40.ss,
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(
                              color: const Color(0xFF6A6A6A),
                              fontSize: 12.fss,
                            ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(horizontal: 5.ss),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
    color: Color(0xFFECECEC),
                                width: 1.ss,
                                style: BorderStyle.solid),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Color(0xFFC4C4C4),
                                width: 1.ss,
                                style: BorderStyle.solid),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Color(0xFFC4C4C4),
                                width: 1.ss,
                                style: BorderStyle.solid),
                          ),
                          errorBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Color(0xFFE8503A),
                                width: 1.ss,
                                style: BorderStyle.solid),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Color(0xFFE8503A),
                                width: 1.ss,
                                style: BorderStyle.solid),
                          ),
                            hintText: "Data"
                        ),
                        icon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Icon(Icons.keyboard_arrow_down_rounded),
                        ),
                        isExpanded: true,
                        iconSize: 20.0,
                        style: TextStyle(
                          color: const Color(0xFF6A6A6A),
                          fontSize: 12.fss,
                        ),
                        items: ['One', 'Two', 'Three'].map(
                              (val) {
                            return DropdownMenuItem<String>(
                              value: val,
                              child: Text(val),
                            );
                          },
                        ).toList(),
                        onChanged: (val) {
                          _homeController.selectedLocation = val;
                        },
                      ),
                    ),
                  ),
                  Container(
                    width: 5.ss,
                  ),
                  Row(
                    children: [
                      Expanded(flex:0,child: Image.asset("asset/icons/tablet/Bookmark_light_filter.png",color: Colors.black,  height: ScreenConstant.defaultHeightForty-10,)),
                      Container(
                        width: 5.ss,
                      ),
                      Expanded(flex:0,child: Image.asset("asset/icons/tablet/menu_filter.png",color: Colors.black,  height: ScreenConstant.defaultHeightTwenty,)),
                    ],
                  )
                ],
              ),
              Container(height: 15.ss),
              ListView.separated(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 6,
                itemBuilder: (context, i) {
                  return PropertyCardWidgetMobile();
                }, separatorBuilder: (BuildContext context, int index) { return Container(height: 20.ss,); },
              )
            ],
          ),
        ),
      ),
    );
  }
}
