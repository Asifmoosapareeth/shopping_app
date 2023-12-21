import 'package:flutter/material.dart';
import 'package:shopping_app/utils/constants/colors.dart';
import 'package:shopping_app/utils/device_utils/device_utility.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomTabBar({super.key, required this.tabs});
final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: TabBar(
          tabs: tabs,
      isScrollable:true,
      indicatorColor: MyColors.primary,
        labelColor: MyColors.primary,
        unselectedLabelColor: Colors.grey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
