import 'package:flutter/material.dart';
import 'package:responsive_login_ui/presentaion/shared/strings.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class TabSwitch extends StatefulWidget {
  final Function(int)? selectTab;
  const TabSwitch({Key? key, this.selectTab}) : super(key: key);

  @override
  State<TabSwitch> createState() => TabSwitchState();
}

class TabSwitchState extends State<TabSwitch>
    with SingleTickerProviderStateMixin {
  late TabController? tabController;
  static const switchTabs =  <Widget>[
    Tab(text: Strings.tab_1),
    Tab(text: Strings.tab_2),
  ];

  @override
  void initState() {
    tabController = TabController(length: switchTabs.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      onTap: widget.selectTab,
      // give the indicator a decoration (color and border radius)
      // indicator: BoxDecoration(
      //   borderRadius: BorderRadius.circular(
      //     25.0,
      //   ),
      //   color: Colors.blue,
      // ),
      indicator: RectangularIndicator(
        color: Colors.blue,
        bottomLeftRadius: 100,
        bottomRightRadius: 100,
        topLeftRadius: 100,
        topRightRadius: 100,
      ),
      labelColor: Colors.white,
      unselectedLabelColor: Colors.black,
      tabs: switchTabs,
    );
  }
}
