import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:main/main.dart';

import '../../../routers/route_constants.dart';
import '../models/elevated_button_model.dart';

class ElevatedButtonController extends GetxController {
  List<ElevatedButtonModel> topMenuList = [
    ElevatedButtonModel(
        image: "asset/icons/tablet/House.png",
        name: "Slide Menu",
        color: Color(0xFF50C878),
        onTap: () {
          Get.toNamed(slideMenu);
        }),
    ElevatedButtonModel(
        image: "asset/icons/tablet/House.png",
        name: "Login",
        color: Color(0xFF50C878),
        onTap: () {
          Get.toNamed(login);
        }),
    ElevatedButtonModel(
        image: "asset/icons/tablet/House.png",
        name: "Forgot Password",
        color: Color(0xFF50C878),
        onTap: () {
          Get.toNamed(passwordRecovery);
        }),
    ElevatedButtonModel(
        image: "asset/icons/tablet/House.png",
        name: "Account Settings",
        color: Color(0xFF50C878),
        onTap: () {
          Get.toNamed(accountSettings);
        }),
    ElevatedButtonModel(
        image: "asset/icons/tablet/House.png",
        name: "Add Apartments",
        color: Color(0xFF50C878),
        onTap: () {
          Get.toNamed(addExpenses);
        }),
    ElevatedButtonModel(
        image: "asset/icons/tablet/House.png",
        name: "Current Deals",
        color:Color(0xFF50C878),
        onTap: () {
          Get.toNamed(currentDeals);
        }),
    ElevatedButtonModel(
        image: "asset/icons/tablet/House.png",
        name: "Search & Filter",
        color: Color(0xFF50C878),
        onTap: () {
          Get.toNamed(homeBottomSheet);
        }),
    ElevatedButtonModel(
        image: "asset/icons/tablet/House.png",
        name: "New Account",
        color: Color(0xFF50C878),
        onTap: () {
          Get.toNamed(newAccount);
        }),
    ElevatedButtonModel(
        image: "asset/icons/tablet/House.png",
        name: "Add Property",
        color: Color(0xFF50C878),
        onTap: () {
          Get.toNamed(addApartment);
        }),
    ElevatedButtonModel(
        image: "asset/icons/tablet/House.png",
        name: "Details on Progress",
        color: Color(0xFF50C878),
        onTap: () {
          Get.toNamed(progressDetail);
        }),
    ElevatedButtonModel(
        image: "asset/icons/tablet/House.png",
        name: "Property Details",
        color: Color(0xFF50C878),
        onTap: () {
          Get.toNamed(propertyDetails);
        }),
    ElevatedButtonModel(
        image: "asset/icons/tablet/House.png",
        name: "Add Lease Contract",
        color: Color(0xFF50C878),
        onTap: () {
          Get.toNamed(addLeaseContract);
        }),
    ElevatedButtonModel(
        image: "asset/icons/tablet/House.png",
        name: "Upcoming Installments",
        color: Color(0xFF50C878),
        onTap: () {
          Get.toNamed(upComingInstallments);
        }),
    ElevatedButtonModel(
        image: "asset/icons/tablet/House.png",
        name: "Filter Screen",
        color: Color(0xFF50C878),
        onTap: () {
          Get.toNamed(filter);
        }),
    ElevatedButtonModel(
        image: "asset/icons/tablet/House.png",
        name: "My Property",
        color: Color(0xFF50C878),
        onTap: () {
          Get.toNamed(myPropertiesScreen);
        }),
    ElevatedButtonModel(
        image: "asset/icons/tablet/House.png",
        name: "Transaction History",
        color: Color(0xFF50C878),
        onTap: () {
          Get.toNamed(transactionHistoryScreen);
        }),
    ElevatedButtonModel(
        image: "asset/icons/tablet/House.png",
        name: "Favourite \$ Saved",
        color: Color(0xFF50C878),
        onTap: () {
          Get.toNamed(favoritesAndFilterScreen);
        }),
    ElevatedButtonModel(
        image: "asset/icons/tablet/House.png",
        name: "User Property Info",
        color: Color(0xFF50C878),
        onTap: () {
          Get.toNamed(userPropertyInfo);
        }),
    ElevatedButtonModel(
        image: "asset/icons/tablet/House.png",
        name: "Financial Overview",
        color: Color(0xFF50C878),
        onTap: () {
          Get.toNamed(financialOverview);
        }),
    ElevatedButtonModel(
        image: "asset/icons/tablet/House.png",
        name: macOS?"macOS Details":windows?"windows details":tablet ? "App Details" : "Details",
        color: const Color(0xFF50C878),
        onTap: () async {
          String version = "unknown";
          if (Platform.isAndroid) {
            try {
              var androidInfo = await DeviceInfoPlugin().androidInfo;
              version = 'Android ${androidInfo.version.release}';
            } catch (e) {
              print('Error getting Android OS version: $e');
              version = 'Android Unknown';
            }
          }
          else if (Platform.isIOS) {
            try {
              var iosInfo = await DeviceInfoPlugin().iosInfo;
              version = 'iOS ${iosInfo.systemVersion}';
            } catch (e) {
              print('Error getting iOS version: $e');
              version = 'Ios Unknown';
            }
          }
          if(Get.context!=null) {
            Size size = MediaQuery.sizeOf(Get.context!);

            print(" context shortestSide:${size.shortestSide}");
          }

          MediaQueryData data = MediaQueryData.fromView(WidgetsBinding.instance.platformDispatcher.views.single);
          print("shortestSide:${data.size.shortestSide}");


          Get.defaultDialog(
              title: 'Details',
              content: Column(
                children: [
                  Text('Screen Width: ${Get.width.toStringAsFixed(2)}'),
                  Text('Screen Height: ${Get.height.toStringAsFixed(2)}'),
                  const Text('build version: 1.0.1+2'),
                  Text(version),
                  if(Get.context!=null)
                    Text('Context Screen Width * height: ${MediaQuery.sizeOf(Get.context!).width.toStringAsFixed(2)}* ${MediaQuery.sizeOf(Get.context!).height.toStringAsFixed(2)}'),

                  Text('Without Context Screen Width * height: ${launchWidth.toStringAsFixed(2)} *${launchHeight.toStringAsFixed(2)}'),




                ],
              ));
        }),

  ];

  Future<String> _getOSVersion() async {
    if (Platform.isAndroid) {
      try {
        var androidInfo = await DeviceInfoPlugin().androidInfo;
        return 'Android ${androidInfo.version.release}';
      } catch (e) {
        print('Error getting Android OS version: $e');
        return 'Unknown';
      }
    }
    else if (Platform.isIOS) {
      try {
        var iosInfo = await DeviceInfoPlugin().iosInfo;
        return 'iOS ${iosInfo.systemVersion}';
      } catch (e) {
        print('Error getting iOS version: $e');
        return 'Unknown';
      }
    }
    return 'Unknown'; // Default case if neither Android nor iOS
  }
}
