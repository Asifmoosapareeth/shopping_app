import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/utils/constants/sizes.dart';
import '../../../device_utils/device_utility.dart';
class MySearchContainer extends StatelessWidget {
  const MySearchContainer({
    super.key,
    this.ontap,
    this.padding = const EdgeInsets.symmetric (horizontal: MySizes.defaultSpace)

  });
  final EdgeInsetsGeometry padding;
final VoidCallback? ontap;
  @override
  Widget build (BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding (
          padding: padding,
       child: Container (
       width: TDeviceUtils.getScreenWidth(context),
       padding: const EdgeInsets.all(MySizes.md),
       decoration: BoxDecoration(
      color: Colors.white,
       borderRadius: BorderRadius.circular (MySizes.cardRadiusLg),
          border: Border.all(color: Colors.grey)
      ), // BoxDecoration
        child: Row(
      children: [
       const Icon(Iconsax.search_normal, color: Colors.black45),
       const SizedBox (width: MySizes.spaceBtwItems),
       Text('Search in Store', style: Theme.of(context).textTheme.bodySmall),
  ],
      ),
      ),
      ),
    );// Container ); // Padding
  }
}