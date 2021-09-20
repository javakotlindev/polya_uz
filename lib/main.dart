import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:polya_uz/app.dart';
import 'package:polya_uz/data/service/di_service.dart';

Future main() async {
  await Hive.initFlutter();
  await DiService.init();
  runApp(App());
}
