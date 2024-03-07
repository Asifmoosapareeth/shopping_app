import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../constants/image_string.dart';
import '../../shapes/circular_image.dart';
class UserProileTile extends StatelessWidget {
  const UserProileTile({
    super.key,
     this.ontap,
  });

  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: MyCircularImage(image: MyImages.user,width: 50,height: 50,padding: 0,),
      title: Text('Asif Moosa Pareeth',style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white),),
      subtitle: Text('asifmoosa@gmail.com',style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white)),
      trailing: IconButton(onPressed: ontap, icon: Icon(Iconsax.edit,color: Colors.white,)),
    );
  }
}
