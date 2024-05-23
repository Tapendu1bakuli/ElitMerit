import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizing/sizing.dart';

import '../../controller/elevated_button_controller.dart';
import '../../widget/elevated_button_widget_mobile.dart';
import '../../widget/elevated_button_widget_tablet.dart';
class ElevatedButtonScreenMobile extends StatelessWidget {
   ElevatedButtonScreenMobile({Key? key}) : super(key: key);
  ElevatedButtonController elevatedButtonController = Get.put(ElevatedButtonController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.count(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 3 ,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 2,
                children: List.generate(elevatedButtonController.topMenuList.length, (index) {
                  return ElevatedButtonWidgetMobile(image: elevatedButtonController.topMenuList[index].image,name: elevatedButtonController.topMenuList[index].name,onTap: elevatedButtonController.topMenuList[index].onTap,color: elevatedButtonController.topMenuList[index].color,);
                })),
            // Row(
            //   children: [
            //     Spacer(),
            //     Padding(
            //       padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
            //       child: Text("Mobile View",style: TextStyle(fontSize: 16),textAlign: TextAlign.end,),
            //     )
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
