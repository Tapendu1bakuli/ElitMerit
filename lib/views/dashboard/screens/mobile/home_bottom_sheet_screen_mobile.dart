import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizing/sizing.dart';

import '../../../../utils/colors/app_colors.dart';
import '../../controller/home_controller.dart';
import '../universal/chat_screen.dart';
import '../universal/home_screen.dart';
import '../universal/location_screen.dart';
import '../universal/search_screen.dart';
import '../universal/tag_screen.dart';
import '../universal/whats_app_screen.dart';
class HomeBottomSheetMobile extends StatelessWidget {
   HomeBottomSheetMobile({Key? key}) : super(key: key);
  final HomeController _homeController =
  Get.put(HomeController());
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    TagScreen(),
    LocationScreen(),
    WhatsAppScreen(),
    ChatScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Scaffold(
        backgroundColor: Colors.red,
        body: _widgetOptions.elementAt(_homeController.selectedIndex.value),
        bottomNavigationBar: Theme(
          data: ThemeData(splashColor: Colors.transparent),
          child: BottomNavigationBar(
            backgroundColor:
            Color(0xFF0A2342),
            elevation: 0.0,
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 15.0.ss, bottom: 2.ss),
                  child: Image.asset(
                    "asset/icons/tablet/Home_light.png",
                    height: 15.ss,
                    fit: BoxFit.fill,
                    color: Colors.white,
                  ),
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 15.0.ss, bottom: 2.ss),
                  child: Image.asset(
                    "asset/icons/tablet/Search_light.png",
                    height: 15.ss,
                    fit: BoxFit.fill,
                    color: Colors.white,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 15.0.ss, bottom: 2.ss),
                  child: Image.asset(
                    "asset/icons/tablet/Bookmark_light.png",
                    height: 15.ss,
                    fit: BoxFit.fill,
                    color: Colors.white,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 15.0.ss, bottom: 2.ss),
                  child: Image.asset(
                    "asset/icons/tablet/Pin_light.png",
                    height: 18.ss,
                    fit: BoxFit.fill,
                    color: Colors.white,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 15.0.ss, bottom: 2.ss),
                  child: Image.asset(
                    "asset/icons/tablet/whatsapp.png",
                    height: 15.ss,
                    fit: BoxFit.fill,
                    color: Colors.white,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 15.0.ss, bottom: 2.ss),
                  child: Image.asset(
                    "asset/icons/tablet/wechat.png",
                    height: 18.ss,
                    fit: BoxFit.fill,
                    color: Colors.white,
                  ),
                ),
                label: '',
              ),
            ],
            unselectedItemColor:
            Color(0xFF6C7E8E),
            showUnselectedLabels: true,
            unselectedFontSize: 12,
            selectedFontSize: 12,
            currentIndex: _homeController.selectedIndex.value,
            selectedItemColor: AppColors.primaryColor,
            onTap: _homeController.selectedIndex,
          ),
        ),
      ),
    );
  }
}
