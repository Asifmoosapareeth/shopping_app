import 'package:flutter/material.dart';
import '../../../constants/texts.dart';
import '../items/cart_counter.dart';
import 'custom_appbar.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(MyTexts.homeAppbarTitle,style: Theme.of(context).textTheme.labelMedium!.apply(color: Colors.grey),),
          Text(MyTexts.homeAppbarSubTitle,style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white),)
        ],
      ),
      actions: [
        CartCounterIcon(iconColor: Colors.white, onPressed: () {},)
      ],
    );
  }
}