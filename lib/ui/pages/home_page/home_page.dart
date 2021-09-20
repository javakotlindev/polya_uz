import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polya_uz/data/utils/app_image_utils.dart';
import 'package:polya_uz/ui/widgets/background_image_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const routeName = "/homePage";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BackgroundImageContainer(
      child: Text("Home Page"),
      title: AppImageUtils.BACKGROUND_IMG,
    );
  }
}
