import 'package:flutter/material.dart';
import 'package:shopping_app/utils/constants/enums.dart';
import 'package:shopping_app/utils/constants/image_string.dart';
import 'package:shopping_app/utils/widgets/shapes/circular_image.dart';
import 'package:shopping_app/utils/widgets/shapes/rounded_image.dart';
import 'package:shopping_app/utils/widgets/texts/brand_title_text_icon.dart';
import 'package:shopping_app/utils/widgets/texts/product_price_text.dart';
import 'package:shopping_app/utils/widgets/texts/product_title_text.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';
import '../../shapes/circular_container.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircularContainer(
              radius: MySizes.sm ,
              backgroundColor: MyColors.secondary.withOpacity(0.8),
              margin: EdgeInsets.symmetric(horizontal: MySizes.sm,vertical: MySizes.xs),
              child: Center(child: Text('25%',style: Theme.of(context).textTheme.labelLarge!.apply(color: Colors.black),)),
            ),
            SizedBox(width: MySizes.spaceBtwItems,),
            Text("\$250", style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            SizedBox(width: MySizes.spaceBtwItems,),
          ProductPriceText(price: '175',isLarge: true,),
          ],
        ),
        SizedBox(height: MySizes.spaceBtwItems/1.5,),

        ProductTiltleText(title: 'Green Nike Sports Shirt'),
        SizedBox(height: MySizes.spaceBtwItems/1.5,),

        Row(
          children: [
            ProductTiltleText(title: 'Status'),
            SizedBox(width: MySizes.spaceBtwItems,),
            Text('In Stock',style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),

        SizedBox(height: MySizes.spaceBtwItems/1.5,),
        
        Row(
          children: [
            MyCircularImage(image: MyImages.shoeIcon,
            width: 32,
              height: 32,
              overlayColor: Colors.white,
            ),
            BrandTitleWithVerifyIcon(title: 'Nike', iconSize: MySizes.iconXs,brandTextSize: TextSizes.medium,),
          ],
        )
      ],

    );
  }
}
