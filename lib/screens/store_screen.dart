import 'package:flutter/material.dart';
import 'package:shopping_app/utils/constants/colors.dart';
import 'package:shopping_app/utils/constants/image_string.dart';
import 'package:shopping_app/utils/constants/sizes.dart';
import 'package:shopping_app/utils/widgets/heading/section_heading.dart';
import 'package:shopping_app/utils/widgets/shapes/circular_container.dart';
import 'package:shopping_app/utils/widgets/widget/home_widget/custom_appbar.dart';
import 'package:shopping_app/utils/widgets/widget/home_widget/home_appbar.dart';
import 'package:shopping_app/utils/widgets/widget/items/cart_counter.dart';
import 'package:shopping_app/utils/widgets/widget/items/my_searchbar.dart';

import '../utils/widgets/shapes/circular_image.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 appBar:CustomAppBar(
   title: Text('store',style: Theme.of(context).textTheme.headlineMedium,),
   actions: [
     CartCounterIcon(iconColor: Colors.black, onPressed: (){})
   ],
 ) ,
      body: NestedScrollView(
          headerSliverBuilder: (_,innerBoxIsScrolled){
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: Colors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                    padding: EdgeInsets.all(MySizes.defaultSpace),
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                SizedBox(height: MySizes.spaceBtwItems,),
                    MySearchContainer(padding: EdgeInsets.zero,),
                    SizedBox(height: MySizes.spaceBtwSections,),
                    MySectionHeading(title: 'Featured Brands',onPressed: (){},),
                    SizedBox(height: MySizes.spaceBtwItems/1.5,),
                    CircularContainer(
                      height: 80,
                      radius: MySizes.cardRadiusLg,
                      padding: EdgeInsets.all(MySizes.sm),
                      borderColor: Colors.grey,
                      showBorder: true,
                      backgroundColor: Colors.transparent,
                      child: Row(
                        children: [
                          MyCircularImage(
                            image: '',)
                        ],
                      ),
                    )

                  ],
                ),
                ),
              )
            ];
          },
          body: Container()),
    );
  }
}


