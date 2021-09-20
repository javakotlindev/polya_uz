import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'app_widgets.dart';

class BackgroundImageContainer extends StatelessWidget {
  final Widget child;
  final String title;

  const BackgroundImageContainer({required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(title),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: child,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
