import 'package:flutter/material.dart';

import '../../../constants/image_string.dart';
import '../../text_images/vertical_text_image.dart';
class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx,index){
            return VerticalImageText(image: MyImages.shoeIcon, title: 'shoes',ontap: (){},);
          }),
    );
  }
}