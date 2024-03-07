import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/screens/profile_screen.dart';
import 'package:shopping_app/utils/constants/image_string.dart';
import 'package:shopping_app/utils/constants/sizes.dart';
import 'package:shopping_app/utils/widgets/shapes/circular_image.dart';
import 'package:shopping_app/utils/widgets/shapes/primary_header_container.dart';
import 'package:shopping_app/utils/widgets/texts/section_heading.dart';
import 'package:shopping_app/utils/widgets/widget/home_widget/custom_appbar.dart';
import 'package:shopping_app/utils/widgets/widget/items/setting_menu_tile.dart';

import '../utils/widgets/widget/items/user_profile_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
                child: Column(
                  children: [
                    CustomAppBar(
                      title: Text('Account',style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.white),),),
                    UserProileTile(ontap: ()=> Get.to(ProfileScreen()),),
                SizedBox(height: MySizes.spaceBtwSections,)
                  ],
                )),
            Padding(padding: EdgeInsets.all(MySizes.defaultSpace),
            child: Column(
              children: [
                MySectionHeading(title: 'Account Setting',showActionButton: false,),
                SizedBox(height: MySizes.spaceBtwItems,),
                SettingMenuTile(icon: Iconsax.safe_home, title: 'Address', subtitle: 'Delivery address'),
                SettingMenuTile(icon: Iconsax.shopping_cart, title: 'My Cart', subtitle: 'Add and remove Products, move to checkout'),
                SettingMenuTile(icon: Iconsax.bag_tick, title: 'My order', subtitle: 'In_progress and Completed Orders'),
                SizedBox(height: MySizes.spaceBtwSections,),
                SizedBox(
                  child: OutlinedButton(onPressed: (){},
                      child: Text('Logout')),
                )

              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}

