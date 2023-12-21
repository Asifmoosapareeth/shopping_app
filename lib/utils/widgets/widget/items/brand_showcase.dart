import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';
import '../../shapes/circular_container.dart';
import 'brand_card.dart';

class BrandShowCase extends StatelessWidget {
  const BrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return CircularContainer(
      showBorder: true,
      radius: 50,
      borderColor: Colors.grey,
      backgroundColor: Colors.transparent,
      margin: EdgeInsets.only(bottom: MySizes.spaceBtwItems),
      padding: EdgeInsets.all(MySizes.md),

      child: Column(
        children: [

          BrandCard(showBorder: false),
          Row(
              children: images.map((image) => brandTopProductImageWidget(image, context)).toList()
          )
        ],
      ) ,
    );
  }
  Widget brandTopProductImageWidget(String image,context){
    return  Expanded(
      child: CircularContainer(
        radius: 20,
        height: 100,
        backgroundColor: MyColors.light ,
        margin: EdgeInsets.only(right: MySizes.sm),
        padding: EdgeInsets.all(10),
        child: Image(fit: BoxFit.contain,image: AssetImage(image)),
      ),
    );
  }
}