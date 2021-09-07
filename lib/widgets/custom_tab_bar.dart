import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar(
      {Key? key, required this.tabController, required this.tabs})
      : super(key: key);

  final TabController tabController;
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final screenWidth = Get.width;
    final tabBarScaling = screenWidth > 1400
        ? 0.21
        : screenWidth > 1100
            ? 0.3
            : 0.4;
    return Container(
      width: screenWidth * tabBarScaling,
      child: TabBar(
          controller: tabController,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Colors.purpleAccent,
          tabs: tabs),
    );
  }
}
