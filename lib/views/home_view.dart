import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portofolio/utils/theme_selector.dart';
import 'package:my_portofolio/utils/view_wrapper.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final screenHeight = Get.height;
  final screenWidth = Get.width;

  @override
  Widget build(BuildContext context) {
    return ViewWrapper(desktopView: desktopView(), mobileView: Stack());
  }

  Widget desktopView() {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: screenWidth * 0.45,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    header(getFontSize(true)),
                  ],
                )),
          ],
        )
      ],
    );
  }

  double getFontSize(bool isHeader) {
    double fontSize = screenWidth > 950 && screenHeight > 550 ? 30 : 25;
    return isHeader ? fontSize * 2.25 : fontSize;
  }

  Widget header(double fontSize) {
    return Center(
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset("assets/images/profile.jpg")),
          SizedBox(height: 10),
          Text("Zian Fahrudy", style: ThemeSelector.selectHeadline(context)),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Flutter Developer",
                  style: ThemeSelector.selectSubHeadline(context)!
                      .copyWith(color: Colors.black)),
              Text(" | ",
                  style: ThemeSelector.selectSubHeadline(context)!
                      .copyWith(color: Colors.black)),
              Text("Blogger",
                  style: ThemeSelector.selectSubHeadline(context)!
                      .copyWith(color: Colors.black)),
            ],
          ),
        ],
      ),
    );
  }
}
