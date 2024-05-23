import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizing/sizing.dart';

import '../../../../main.dart';
import '../../controller/elevated_button_controller.dart';
import '../../models/elevated_button_model.dart';
import '../../widget/elevated_button_widget_tablet.dart';
class ElevatedButtonScreenTablet extends StatelessWidget {
   ElevatedButtonScreenTablet({Key? key}) : super(key: key);
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
                crossAxisCount: 5 ,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 2,
                children: List.generate(elevatedButtonController.topMenuList.length, (index) {
                  return ElevatedButtonWidgetTablet(image: elevatedButtonController.topMenuList[index].image,name: elevatedButtonController.topMenuList[index].name,onTap: elevatedButtonController.topMenuList[index].onTap,color: elevatedButtonController.topMenuList[index].color,);
                })),
            //  Row(
            //   children: [
            //     Spacer(),
            //     Padding(
            //       padding: const EdgeInsets.symmetric(horizontal: 16),
            //       child: Text("Tablet View",style: TextStyle(fontSize: 25),textAlign: TextAlign.end,),
            //     )
            //   ],
            // ),
            // ElevatedButtonModel(
            //     image: "asset/icons/tablet/House.png",
            //     name: tablet ? "Tablet" : "mobile",
            //     onTap: () {
            //       Get.defaultDialog(
            //           title: 'Screen Dimensions',
            //           content: Column(
            //             children: [
            //               Text('Width: ${Get.width}'),
            //               Text('Height: ${Get.height}'),
            //             ],
            //           ));
            //     }),
          ],
        ),
      ),
    );
  }
}
