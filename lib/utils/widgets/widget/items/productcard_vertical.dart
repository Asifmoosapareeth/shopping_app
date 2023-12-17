import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/utils/constants/colors.dart';
import 'package:shopping_app/utils/constants/image_string.dart';
import 'package:shopping_app/utils/constants/sizes.dart';
import 'package:shopping_app/utils/widgets/heading/product_title_text.dart';
import 'package:shopping_app/utils/widgets/shapes/circular_container.dart';
import 'package:shopping_app/utils/widgets/shapes/rounded_image.dart';
import 'package:shopping_app/utils/widgets/widget/items/circular_icon.dart';

class VerticalProductCard  extends StatelessWidget {
  const VerticalProductCard ({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MySizes.productImageRadius),
          color: Colors.white
        ),
        child: Column(
          children: [
           CircularContainer(
             height: 170,
             radius: 10,
             margin: EdgeInsets.all(MySizes.sm),
             backgroundColor: MyColors.light,
             child: Stack(
               children: [
                 RoundedImage(imageUrl: MyImages.productImage1,applyImageRadius: true, ),

                 Positioned(
                   top: 10,
                   child: CircularContainer(
                     height: 20,width: 35,
                     radius: MySizes.sm ,
                     backgroundColor: MyColors.secondary.withOpacity(0.8),
                     margin: EdgeInsets.symmetric(horizontal: MySizes.sm,vertical: MySizes.xs),
                     child: Center(child: Text('25%',style: Theme.of(context).textTheme.labelLarge!.apply(color: Colors.black),)),

                   ),
                 ),
              Positioned(
                  top: 0,right: 0,
                  child: CircularIcon(icon: Iconsax.heart5,color: Colors.red,)
              )
               ],
             ),
           ),
            SizedBox(height: MySizes.spaceBtwItems/2),

            Padding(padding: EdgeInsets.only(left: MySizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductTiltleText(title: 'Green Nike Air Shoes',smallSize: true,),
                SizedBox(height: MySizes.spaceBtwItems/2,),
                Row(
                  children: [
                    Text('Nike',overflow: TextOverflow.ellipsis,maxLines: 1,style: TextStyle(color: Colors.grey,fontSize: 14)),
                    SizedBox(width: MySizes.xs,),
                    Icon(Iconsax.verify5,color: Colors.blue,size: MySizes.iconXs,)
                  ],
                ),
              ],
            ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('\$35.5',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: MyColors.dark,
                    borderRadius: BorderRadius.circular(120),
                  ),
                  child: SizedBox(
                    width: MySizes.iconLg ,
                    height: MySizes.iconLg ,
                    child: Icon(Iconsax.add,color: Colors.white,),
                  ),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
