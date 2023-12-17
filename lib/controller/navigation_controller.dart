import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/screens/home_screen.dart';
import 'package:shopping_app/screens/store_screen.dart';

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;
  final Screens = [HomeScreen(),StoreScreen(),Container(color: Colors.orange,),Container(color: Colors.blue,),];
}