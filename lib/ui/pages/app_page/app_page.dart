import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:polya_uz/data/controllers/app_page_controller.dart';
import 'package:polya_uz/data/utils/app_image_utils.dart';
import 'package:polya_uz/ui/pages/home_page/home_page.dart';
import 'package:polya_uz/ui/pages/order_page/order_page.dart';
import 'package:polya_uz/ui/pages/search_page/search_page.dart';

class AppPage extends StatelessWidget {
  const AppPage({Key? key}) : super(key: key);
  static const String routeName = "/appPage";

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppPageController>(
      builder: (controller) => Scaffold(
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: controller.pageController,
          children: [
            HomePage(),
            OrderPage(),
            SearchPage(),
          ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          onTap: (index) {
            controller.pageChanged(index);
          },
          buttonBackgroundColor: Colors.blueAccent,
          backgroundColor: Colors.blueAccent,
          items: [
            Image.asset(
              AppImageUtils.BADGE,
              width: 40,
            ),
            SvgPicture.asset(
              AppImageUtils.SOCCER_BALL,
              width: 40,
            ),
            Image.asset(
              AppImageUtils.PLACEHOLDER,
              width: 40,
            ),
          ],
        ),
      ),
    );
  }

// Widget infoWidget({
//   required String image,
//   required String title,
//   VoidCallback? onPressed,
//   bool hasBtn = true,
// }) {
//   return Container(
//     width: Get.width,
//     height: Get.height,
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         AppWidgets.imageAsset(
//           path: image,
//           width: 0.8.sw,
//           height: 0.8.sw,
//           fit: BoxFit.cover,
//         ),
//         AppWidgets.textLocale(
//           text: title,
//           maxLines: 3,
//           textAlign: TextAlign.center,
//           fontSize: 20.sp,
//         ),
//         SizedBox(
//           height: 20.h,
//         ),
//         if (hasBtn)
//           MainButton(
//             onPressed: () {
//               onPressed!();
//             },
//             text: LocaleKeys.str_try_again,
//           ),
//       ],
//     ).paddingOnly(top: 30.w, left: 24.w, right: 24.w),
//   );
}
