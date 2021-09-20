import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:polya_uz/ui/widgets/app_widgets.dart';

class AppPageController extends GetxController {
  static AppPageController get to => Get.find<AppPageController>();

  late final PageController pageController;
  late int currentPage;

  @override
  void onInit() {
    pageController = PageController();
    currentPage = 0;
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  void pageChanged(int index) {
    currentPage = index;
    pageController.jumpToPage(index);
    update();
  }
}
