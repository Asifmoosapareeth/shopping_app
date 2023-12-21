import 'package:flutter/material.dart';
import 'package:shopping_app/utils/constants/colors.dart';
import 'package:shopping_app/utils/constants/enums.dart';
import 'package:shopping_app/utils/constants/image_string.dart';
import 'package:shopping_app/utils/constants/sizes.dart';
import 'package:shopping_app/utils/widgets/layout/grid_layout.dart';
import 'package:shopping_app/utils/widgets/shapes/circular_container.dart';
import 'package:shopping_app/utils/widgets/texts/brand_title_text_icon.dart';
import 'package:shopping_app/utils/widgets/widget/home_widget/custom_appbar.dart';
import 'package:shopping_app/utils/widgets/widget/home_widget/home_appbar.dart';
import 'package:shopping_app/utils/widgets/widget/items/cart_counter.dart';
import 'package:shopping_app/utils/widgets/widget/items/custom_tabbar.dart';
import 'package:shopping_app/utils/widgets/widget/items/my_searchbar.dart';
import '../utils/widgets/texts/section_heading.dart';
import '../utils/widgets/widget/home_widget/custom_tabbar.dart';
import '../utils/widgets/widget/items/brand_card.dart';
import '../utils/widgets/widget/items/brand_showcase.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 5,
      child: Scaffold(
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

                  ItemGridLayout(
                    mainAxisExtent: 80,
                      itemBuilder: (_,index){
                        return
                          BrandCard(showBorder: true,);
                      },
                      itemCount: 4)
                    ],
                  ),
                  ),
                  bottom:CustomTabBar(
                      tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ]
                  ) ,

                )
              ];
            },
            body: TabBarView(
                children: [
                  CategoryTabBar(),
                  CategoryTabBar(),
                  CategoryTabBar(),
                  CategoryTabBar(),
                  CategoryTabBar(),
            ])),
      ),
    );
  }
}




