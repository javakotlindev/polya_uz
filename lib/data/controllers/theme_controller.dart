import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:polya_uz/data/service/storage_service.dart';

class ThemeController extends GetxController {
  static ThemeController get to => Get.find<ThemeController>();

  late ThemeMode _themeMode;

  ThemeMode getThemeMode() => _themeMode;

  Future<void> setThemeMode(ThemeMode value) async {
    await StorageService.to.setThemeMode(value);
    _themeMode = value;
    update();
  }

  Future<void> init() async {
    _themeMode = StorageService.to.getThemeMode();
  }
}
