import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/utils/constants/colors.dart';
import 'package:shopping_app/utils/constants/image_string.dart';
import 'package:shopping_app/utils/constants/sizes.dart';
import 'package:shopping_app/utils/widgets/heading/section_heading.dart';
import 'package:shopping_app/utils/widgets/layout/grid_layout.dart';
import 'package:shopping_app/utils/widgets/shapes/circular_container.dart';
import 'package:shopping_app/utils/widgets/widget/items/my_searchbar.dart';
import 'package:shopping_app/utils/widgets/widget/items/productcard_vertical.dart';
import '../utils/widgets/shapes/primary_header_container.dart';
import '../utils/widgets/shapes/rounded_image.dart';
import '../utils/widgets/text_images/vertical_text_image.dart';
import '../utils/widgets/widget/home_widget/home_appbar.dart';
import '../utils/widgets/widget/home_widget/home_categories.dart';
import '../utils/widgets/widget/items/promo_slider.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
     child: Column(
       children: [
      PrimaryHeaderContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
         children: [
           HomeAppBar(),
           SizedBox(height: MySizes.spaceBtwSections,),

           MySearchContainer(),
           SizedBox(height: MySizes.spaceBtwSections,),

           Padding(
               padding: EdgeInsets.only(left: MySizes.defaultSpace),
             child: Column(
               children: [
                 MySectionHeading(title: 'Popular Categories',showActionButton: false,textColor: Colors.white,),
                 SizedBox(height: MySizes.spaceBtwItems,),

                 HomeCategories()
               ],
             ),
           ),
         ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left:MySizes.defaultSpace,right: MySizes.defaultSpace,top:5),
        child: Column(
          children: [
            PromoSlider(banners: [MyImages.promoBanner1,MyImages.promoBanner2,MyImages.promoBanner3],),
          SizedBox(height:MySizes.spaceBtwItems ,),
          ItemGridLayout(itemBuilder: (_,index)=>VerticalProductCard(),
              itemCount: 4,)
          ],
        )
      )   

     ],
   ),
   ),
    );
   }
  }




