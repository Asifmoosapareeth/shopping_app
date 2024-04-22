import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/utils/constants/colors.dart';
import 'package:shopping_app/utils/constants/sizes.dart';
import 'package:shopping_app/utils/widgets/shapes/circular_container.dart';
import 'package:shopping_app/utils/widgets/texts/product_price_text.dart';
import 'package:shopping_app/utils/widgets/texts/product_title_text.dart';
import 'package:shopping_app/utils/widgets/texts/section_heading.dart';

import '../items/choice_chip.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircularContainer(
          backgroundColor: MyColors.dark,
          child: Column(


            children: [
              Row(
                children: [
                  MySectionHeading(title: 'Variation', showActionButton: false,),
                  SizedBox(width: MySizes.spaceBtwItems,),
                  Column(
                    children: [
                      Row(
                        children: [
                          ProductTiltleText(title: 'Price : ', smallSize: true,),
                          Text('\25',
                            style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(width: MySizes.spaceBtwItems,),
                          ProductPriceText(price: '20'),
                        ],
                      ),
              Row(
                children: [
                  ProductTiltleText(title: 'Stock : ', smallSize: true,),
                  Text('In Stock', style: Theme.of(context).textTheme.titleMedium,)
                ],
              ),
            ],
          ),
          ],
    ),
              ProductTiltleText(title: 'This is the Description of the Product and it can go up to max 4 lines.',
              smallSize: true , maxLines: 4,
              )
            ],
          ),
        ),
        SizedBox(height: MySizes.spaceBtwItems,),


        Column(
          children: [
            MySectionHeading(title: "Colour"),
            SizedBox(height: MySizes.spaceBtwItems/2,),
            MyChoiceChip(text: 'Green', selected: true,),

          ],
        )
      ],
    );
  }
}


