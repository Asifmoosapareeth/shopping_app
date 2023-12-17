import 'package:flutter/material.dart';
import 'package:shopping_app/screens/home_screen.dart';
import 'package:shopping_app/utils/widgets/widget/home_widget/navigation_menu.dart';
import 'package:shopping_app/utils/theme/themee.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyAppsTheme.lightTheme,
      darkTheme: MyAppsTheme.darkTheme,
      home: NavigationMenu(),
    );
  }
}
