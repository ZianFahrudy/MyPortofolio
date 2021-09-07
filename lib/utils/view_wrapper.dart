import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewWrapper extends StatelessWidget {
  const ViewWrapper(
      {Key? key, required this.desktopView, required this.mobileView})
      : super(key: key);

  final Widget desktopView;
  final Widget mobileView;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth > 715 && Get.height > 550) {
        return desktopView;
      } else {
        return mobileView;
      }
    });
  }
}
