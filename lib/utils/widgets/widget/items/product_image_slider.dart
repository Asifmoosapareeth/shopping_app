import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../constants/colors.dart';
import '../../../constants/image_string.dart';
import '../../../constants/sizes.dart';
import '../../shapes/curved_edge_widget.dart';
import '../../shapes/rounded_image.dart';
import '../home_widget/custom_appbar.dart';
import 'circular_icon.dart';
class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyCurvedEdgeWidget(
      child: Container(
        color: MyColors.light,
        child: Stack(
          children: [
            SizedBox(
              height:400,
              child: Padding(
                padding:  EdgeInsets.all(MySizes.productImageRadius*2),
                child: Center(child: Image(image: AssetImage(MyImages.productImage7))),
              ),
            ),

            Positioned(
              right: 0,
              bottom: 30,
              left: MySizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (_, __) => SizedBox(width: MySizes.spaceBtwItems,),
                  itemBuilder: (_,index)=> RoundedImage(
                      width: 80,
                      backgroundColor: Colors.white,
                      border: Border.all(color: MyColors.primary),
                      padding: EdgeInsets.all(MySizes.sm),
                      imageUrl: MyImages.productImage4),
                ),
              ),
            ),
            CustomAppBar(
              showBackArrow: true,
              actions: [CircularIcon(icon: Iconsax.heart5,color: Colors.red,)],
            )

          ],
        ),
      ),
    );
  }
}