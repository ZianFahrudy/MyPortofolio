import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portofolio/utils/content_view.dart';
import 'package:my_portofolio/utils/view_wrapper.dart';
import 'package:my_portofolio/views/home_view.dart';
import 'package:my_portofolio/widgets/custom_tab.dart';
import 'package:my_portofolio/widgets/custom_tab_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  List<ContentView> contentView = [
    ContentView(
        tab: CustomTab(
          title: "Home",
        ),
        content: HomeView()),
    ContentView(
        tab: CustomTab(
          title: "About",
        ),
        content: HomeView()),
    ContentView(
        tab: CustomTab(
          title: "Project",
        ),
        content: HomeView())
  ];

  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    tabController = TabController(length: contentView.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = Get.height;
    final screenWidth = Get.width;
    final topPadding = screenHeight * 0.05;
    final bottomPadding = screenHeight * 0.03;
    final sidePadding = screenWidth * 0.05;

    return Scaffold(
        key: scaffoldKey,
        body: Padding(
          padding: EdgeInsets.only(bottom: bottomPadding, top: topPadding),
          child: ViewWrapper(
              desktopView: desktopView(screenHeight), mobileView: Column()),
        ));
  }

  Widget desktopView(double screenHeight) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          height: screenHeight * 0.05,
          child: CustomTabBar(
              tabController: tabController,
              tabs: contentView.map((e) => e.tab).toList()),
        ),
        Container(
          height: screenHeight * 0.8,
          child: DefaultTabController(
            length: contentView.length,
            child: TabBarView(
                controller: tabController,
                children: contentView.map((e) => e.content).toList()),
          ),
        )
      ],
    );
  }
}
