import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class AppWidgets {
  static Widget imageAsset({
    required String path,
    double? height,
    double? width,
    BoxFit fit = BoxFit.cover,
  }) {
    return Image.asset(
      path,
      height: height,
      width: width,
      fit: fit,
    );
  }

  static Widget imageSvg({
    required String path,
    double? height,
    double? width,
    BoxFit fit = BoxFit.cover,
    Color? color,
  }) {
    return SvgPicture.asset(
      path,
      height: height,
      width: width,
      fit: fit,
      color: color,
    );
  }
}
