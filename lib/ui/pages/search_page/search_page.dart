import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:polya_uz/data/controllers/search_page_controller.dart';
import 'package:polya_uz/data/utils/app_image_utils.dart';
import 'package:polya_uz/generated/l10n.dart';
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
            builder: (controller) => Column(
              children: [
                Container(
                  margin: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: S.of(context).search,
                          ),
                          onChanged: (value) {
                            if (value.length > 3) {}
                          },
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            )));
  }
}
