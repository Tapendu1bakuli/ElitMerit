// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:main/utils/colors/app_colors.dart';
//
// enum ButtonType {
//   googleSignIn,
//   emailSignIn,
//   appleSignIn,
// }
//
// class CommonSocialButtons extends StatelessWidget {
//   final String? text;
//   final String img;
//   final VoidCallback onTap;
//   final bool loading;
//
//   const CommonSocialButtons({
//     Key? key,
//     required this.text,
//     required this.img,
//     required this.onTap,
//     required this.loading,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final child = Container(
//       margin: const EdgeInsets.symmetric(vertical: Dimens.twenty),
//       decoration: BoxDecoration(
//         border: Border.all(width: Dimens.one, color: AppColors.cardColor),
//         borderRadius: const BorderRadius.all(Radius.circular(Dimens.eight)),
//       ),
//       child: InkWell(
//         onTap: loading ? () {} : onTap,
//         borderRadius: const BorderRadius.all(Radius.circular(7.0)),
//         child: Padding(
//           padding: const EdgeInsets.all(Dimens.eight),
//           child: Row(
//             // crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: loading
//                 ? [
//                     const SizedBox(
//                       height: 25.0,
//                       width: 25.0,
//                       child: CircularProgressIndicator(
//                         color: Colors.black,
//                       ),
//                     ),
//                   ]
//                 : [
//                     text == null
//                         ? Container()
//                         : Text(
//                        text ?? "",
//                             fontSize: Dimens.fifteen,
//                             fontWeight: FontWeight.w500,
//                             fontColor: AppColors.textGreen,
//                             height: 1.3,
//                             textAlignment: TextAlign.center,
//                           ),
//                     text == null ? Container() : const SizedBox(width: 8.0),
//                     SvgPicture.asset(
//                       img,
//                       height: 25.0,
//                       width: 25.0,
//                     ),
//                   ],
//           ),
//         ),
//       ),
//     );
//     return text == null ? Expanded(child: child) : child;
//   }
// }
