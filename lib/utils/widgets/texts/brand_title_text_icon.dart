import 'package:flutter/cupertino.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/utils/constants/colors.dart';
import 'package:shopping_app/utils/constants/enums.dart';
import 'package:shopping_app/utils/constants/sizes.dart';
import 'package:shopping_app/utils/widgets/texts/brand_title_text.dart';

class BrandTitleWithVerifyIcon extends StatelessWidget {
  const BrandTitleWithVerifyIcon({super.key,
    required this.title,
     this.maxLines=1,
    this.textColor,
    this.iconColor=MyColors.primary,
    this.textAlign=TextAlign.center,
    this.brandTextSize=TextSizes.small,
    required this.iconSize
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;
  final double iconSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
       Flexible(
           child: BrandTitleText(
    title: title,
    color: textColor,
    maxLines: maxLines,
    textAlign: textAlign,
    brandTextSize: brandTextSize,

           )
  ),
        SizedBox(width: MySizes.xs,),
Icon(Iconsax.verify5,color: iconColor,size: iconSize,)
      ],
    );
  }
}
