import 'package:flutter/material.dart';
import 'package:main/utils/core/utils/image_constant.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/theme/theme_helper.dart';

import 'custom_image_view.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHome,
      activeIcon: ImageConstant.imgHome,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgRewindOnerrorcontainer,
      activeIcon: ImageConstant.imgRewindOnerrorcontainer,
      type: BottomBarEnum.Rewindonerrorcontainer,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgBookmark,
      activeIcon: ImageConstant.imgBookmark,
      type: BottomBarEnum.Bookmark,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLockOnerrorcontainer24x24,
      activeIcon: ImageConstant.imgLockOnerrorcontainer24x24,
      type: BottomBarEnum.Lockonerrorcontainer24x24,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgAlert,
      activeIcon: ImageConstant.imgAlert,
      type: BottomBarEnum.Alert,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLockOnerrorcontainer16x16,
      activeIcon: ImageConstant.imgLockOnerrorcontainer16x16,
      type: BottomBarEnum.Lockonerrorcontainer16x16,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58.v,
      decoration: BoxDecoration(
        color: appTheme.green40001,
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 17.adaptSize,
              width: 17.adaptSize,
              color: theme.colorScheme.onErrorContainer,
            ),
            activeIcon: CustomImageView(
              imagePath: bottomMenuList[index].activeIcon,
              height: 18.v,
              width: 16.h,
              color: theme.colorScheme.onErrorContainer,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Rewindonerrorcontainer,
  Bookmark,
  Lockonerrorcontainer24x24,
  Alert,
  Lockonerrorcontainer16x16,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
