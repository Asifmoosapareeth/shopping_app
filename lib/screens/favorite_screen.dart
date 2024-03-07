import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/controller/navigation_controller.dart';
import 'package:shopping_app/screens/home_screen.dart';
import 'package:shopping_app/utils/constants/sizes.dart';
import 'package:shopping_app/utils/widgets/layout/grid_layout.dart';
import 'package:shopping_app/utils/widgets/widget/home_widget/custom_appbar.dart';
import 'package:shopping_app/utils/widgets/widget/items/circular_icon.dart';
import 'package:shopping_app/utils/widgets/widget/items/productcard_vertical.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: CustomAppBar(
   title: Text('Favorite',style: Theme.of(context).textTheme.headlineMedium,),
  actions: [
    CircularIcon(icon: Iconsax.add,onPressed: ()=> Get.find<NavigationController>().selectedIndex.value = 0)
  ],
),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(MySizes.defaultSpace),
        child: Column(
            children: [
              ItemGridLayout(itemBuilder: (_,index){
                return VerticalProductCard();
              }, itemCount: 4),
          ],
        ),
        ),
      ),
    );
  }
}
