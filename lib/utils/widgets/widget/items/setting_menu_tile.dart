import 'package:flutter/material.dart';
import 'package:shopping_app/utils/constants/colors.dart';

class SettingMenuTile extends StatelessWidget {
  const SettingMenuTile({super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.ontap

  });


  final IconData icon;
  final String title,subtitle;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon,size: 28,color: MyColors.primary,),
      title: Text(title,style: Theme.of(context).textTheme.titleMedium,),
      subtitle: Text(subtitle,style: Theme.of(context).textTheme.labelMedium,),
      onTap: ontap,
    );
  }
}
