import 'package:flutter/material.dart';
import '../../../constants/enums.dart';
import '../../../constants/image_string.dart';
import '../../../constants/sizes.dart';
import '../../shapes/circular_container.dart';
import '../../shapes/circular_image.dart';
import '../../texts/brand_title_text_icon.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key,
    required this.showBorder,
    this.ontap,
  });

  final bool showBorder;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: CircularContainer(
        height: 80,
        radius: MySizes.cardRadiusLg,
        padding: EdgeInsets.all(MySizes.sm),
        borderColor: Colors.grey,
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: MyCircularImage(
                isNetworkImage: false,
                image: MyImages.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor: Colors.black,
              ),
            ),
            SizedBox(width: MySizes.spaceBtwItems/2,),

            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BrandTitleWithVerifyIcon(title: 'Nike',brandTextSize: TextSizes.large, iconSize: MySizes.md),

                  Text('300 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}