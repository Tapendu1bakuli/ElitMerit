import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:main/views/customButton/widget/elevated_button_widget_web.dart';

import '../../controller/elevated_button_controller.dart';
class ElevatedButtonScreenWeb extends StatelessWidget {
   ElevatedButtonScreenWeb({Key? key}) : super(key: key);
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
                crossAxisCount: 7 ,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 2,
                children: List.generate(elevatedButtonController.topMenuList.length, (index) {
                  return ElevatedButtonWidgetWeb(image: elevatedButtonController.topMenuList[index].image,name: elevatedButtonController.topMenuList[index].name,onTap: elevatedButtonController.topMenuList[index].onTap,color: elevatedButtonController.topMenuList[index].color,);
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
