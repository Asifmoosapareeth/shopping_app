import 'package:flutter/material.dart';
import 'package:shopping_app/utils/constants/image_string.dart';
import 'package:shopping_app/utils/constants/sizes.dart';
import 'package:shopping_app/utils/widgets/shapes/circular_image.dart';
import 'package:shopping_app/utils/widgets/texts/profile_menu.dart';
import 'package:shopping_app/utils/widgets/texts/section_heading.dart';
import 'package:shopping_app/utils/widgets/widget/home_widget/custom_appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(showBackArrow: true,title: Text('Profile'),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
           SizedBox(width: double.infinity,
           child: Column(
             children: [
               MyCircularImage(image: MyImages.user,width: 80,height: 80,),
               TextButton(onPressed: (){}, child: Text('change profile picture'))
             ],
           ),
           ),
              SizedBox(height: MySizes.spaceBtwItems / 1.2,),
              Divider(),
              SizedBox(height: MySizes.spaceBtwItems,),

              MySectionHeading(title: 'Profile Information',showActionButton: false,),
              SizedBox(height: MySizes.spaceBtwItems,),

              ProfileMenu(title: 'Name', value: 'Asif moosa', ontap: (){}),
              ProfileMenu(title: 'Username', value: 'Asif_moosa', ontap: (){}),
              SizedBox(height: MySizes.spaceBtwItems),
              Divider(),
              SizedBox(height: MySizes.spaceBtwItems,),

              MySectionHeading(title: 'Personal Information',showActionButton: false,),
              SizedBox(height: MySizes.spaceBtwItems,),

              ProfileMenu(title: 'User id', value: '7559', ontap: (){}),
              ProfileMenu(title: 'Email', value: 'asifmoosa@gmail.com', ontap: (){}),
              ProfileMenu(title: 'Phone Number', value: '7559865656', ontap: (){}),
              ProfileMenu(title: 'Gender', value: 'Male', ontap: (){}),
              ProfileMenu(title: 'Date of Birth', value: '22/12/2023', ontap: (){}),

            ],
          ),
        ),
      ),
    );
  }
}
