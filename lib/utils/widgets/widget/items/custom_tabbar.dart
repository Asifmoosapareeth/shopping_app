import 'package:flutter/material.dart';
import 'package:shopping_app/utils/constants/image_string.dart';
import 'package:shopping_app/utils/constants/sizes.dart';
import 'package:shopping_app/utils/widgets/layout/grid_layout.dart';
import 'package:shopping_app/utils/widgets/texts/section_heading.dart';
import 'package:shopping_app/utils/widgets/widget/items/brand_showcase.dart';
import 'package:shopping_app/utils/widgets/widget/items/productcard_vertical.dart';

class CategoryTabBar extends StatelessWidget {
  const CategoryTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              BrandShowCase(images: [MyImages.productImage6,MyImages.productImage8,MyImages.productImage1]),
              BrandShowCase(images: [MyImages.productImage6,MyImages.productImage8,MyImages.productImage1]),
              MySectionHeading(title: 'You might like',onPressed: (){},),
              SizedBox(height: MySizes.spaceBtwItems,),
              ItemGridLayout(itemBuilder: (_,index)=> VerticalProductCard(),
                  itemCount: 4)

            ],
          ),
        ),
      ]
    );
  }
}
