import 'package:get/get.dart';
import 'package:polya_uz/data/controllers/app_page_controller.dart';
import 'package:polya_uz/data/controllers/theme_controller.dart';

class DiService {
  static Future<void> init() async {
    Get.put<AppPageController>(AppPageController(), permanent: true);
    Get.put<ThemeController>(ThemeController()..init(), permanent: true);
  }
}
