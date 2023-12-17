import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({
    super.key,
     this.iconColor=Colors.white,
    required this.onPressed,
  });
  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: onPressed, icon: Icon(Iconsax.shopping_bag,color:iconColor)),
        Positioned(
          top: 1,
          right: 5,
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text('2',style: TextStyle(fontSize: 10,color: Colors.white),),
            ),
          ),
        )
      ],
    );
  }
}
