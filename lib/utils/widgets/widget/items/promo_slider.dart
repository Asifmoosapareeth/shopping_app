import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/controller/home_controller.dart';
import 'package:shopping_app/utils/constants/colors.dart';

import '../../../constants/image_string.dart';
import '../../../constants/sizes.dart';
import '../../shapes/circular_container.dart';
import '../../shapes/rounded_image.dart';

class PromoSlider extends StatelessWidget {
   PromoSlider({
    super.key, required this.banners,
  });
final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
            items: banners.map((url) => RoundedImage(imageUrl: url)).toList(),

            options: CarouselOptions(
              onPageChanged: (index,_) => controller.updatePageIndiacator(index),
              viewportFraction: 1,
            )),
        SizedBox(height: MySizes.spaceBtwItems,),

        Center(
          child: Obx(
              ()=> Row(
                mainAxisSize: MainAxisSize.min,
              children: [
                for(int i=0; i<3; i++)
                  CircularContainer(height: 4,width: 20,
                    backgroundColor: controller.carousalCurrentIndex.value==i ? MyColors.primary: Colors.grey,
                    margin: EdgeInsets.only(right: 10),),
              ],
            ),
          ),
        )
      ],
    );
  }
}

