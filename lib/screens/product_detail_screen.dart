import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/utils/constants/sizes.dart';
import '../utils/widgets/widget/items/product_image_slider.dart';
import '../utils/widgets/widget/items/rating_and_share.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductImageSlider(),
            Padding(padding: EdgeInsets.only(left: MySizes.defaultSpace,right: MySizes.defaultSpace,bottom: MySizes.defaultSpace),
            child: Column(
              children: [
                RatingAndShare(),
              ],
            ),
            )
          ],
        ),
      )
    );
  }
}


