import 'package:flutter/cupertino.dart';
import 'package:polya_uz/data/utils/app_image_utils.dart';
import 'package:polya_uz/ui/widgets/background_image_container.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);
  static const routeName = "/orderPage";

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return BackgroundImageContainer(
      child: Text("Order Page"),
      title: AppImageUtils.BACKGROUND_SEARCH,
    );
  }
}
