import 'package:flutter/material.dart';
import 'package:sizing/sizing_extension.dart';

class CommonCardMobile extends StatelessWidget {
  final  Widget child;
  final  Color? color;
  final  double? verticalPadding;
  const CommonCardMobile({super.key, required this.child ,this.color, this.verticalPadding});

  @override
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 12.ss, vertical: verticalPadding ??12.ss),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(10.ss), color:color?? Colors.white),
        child: child),

    );
  }
}
// Row(
//   children: [
//     SizedBox(
//       width: getTabletSize(550),
//       child: CommonCardMobile(
//         child: Row(
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//
//                 Container(height: getTabletSize(20),),
//                 Row(
//                   children: [

//                     Container(
//                       width: getTabletSize(10),
//                     ),
//                     _decoratedContainer(
//                         title: 'on Frame',
//                         borderColor: AppColors.blackColor,
//                         fillColor: AppColors.whiteColor),
//                   ],
//                 )
//               ],
//             ),
//             Container(width: getTabletSize(30),),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 _titleWidget(
//                     title: 'Furniture Options',
//                     fontSize: getTabletFontSize(20)),
//                 Container(height: getTabletSize(20),),
//                 Row(
//                   children: [
//
//                     SizedBox(
//                       width: 5.ss,
//                     ),
//
//                     SizedBox(
//                       width: 5.ss,
//                     ),
//
//                   ],
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     ),
//     SizedBox(width: getTabletSize(600),
//     child:  CommonCardMobile(
//       child: Row(
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               _titleWithIconWidget(
//                 icon: 'asset/icons/tablet/ic_bed_mobile.svg',
//               ),
//               _numbersList(),
//             ],
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               _titleWithIconWidget(
//                   title: 'Bathrooms',
//                   icon:
//                   'asset/icons/tablet/ic_shower_mobile.svg'),
//               _numbersList(),
//             ],
//           )
//         ],
//       ),
//     ),),
//
//   ],
// ),