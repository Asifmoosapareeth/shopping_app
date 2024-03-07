import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/utils/constants/sizes.dart';
class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key,

    required this.title,
    required this.value,
    required this.ontap,

  });

  final VoidCallback ontap;
  final String title,value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.all(MySizes.spaceBtwItems),
        child: Row(
          children: [
            Expanded(flex: 3,child: Text(title,style: Theme.of(context).textTheme.bodySmall,overflow: TextOverflow.ellipsis,)),
            Expanded(flex : 5,child: Text(value,style: Theme.of(context).textTheme.bodyMedium,overflow: TextOverflow.ellipsis,)),
            Expanded(child: Icon(Iconsax.arrow_right_3,size: 18,)),

          ],
        ),
      ),
    );
  }
}
