import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:polya_uz/data/controllers/search_page_controller.dart';
import 'package:polya_uz/data/utils/app_image_utils.dart';
import 'package:polya_uz/ui/widgets/background_image_container.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);
  static const routeName = "/searchPage";

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return BackgroundImageContainer(
        title: AppImageUtils.BACKGROUND_ORDERS,
        child: GetBuilder<SearchPageController>(
            builder: (controller) => Container(

            )));
  }
}
