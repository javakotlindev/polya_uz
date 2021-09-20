import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

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
    );
  }
}
