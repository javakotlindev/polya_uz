import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:polya_uz/data/utils/app_route_utils.dart';
import 'package:polya_uz/ui/pages/app_page/app_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        builder: () => GetMaterialApp(
              debugShowCheckedModeBanner: false,
              initialRoute: AppPage.routeName,
              getPages: AppRouteUtils.routes,
            ));
  }
}
