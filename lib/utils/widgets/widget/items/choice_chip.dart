import 'package:flutter/material.dart';
import 'package:shopping_app/helper/helper_function.dart';
import 'package:shopping_app/utils/widgets/shapes/circular_container.dart';
class MyChoiceChip extends StatelessWidget {
  const MyChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });
final String text;
final bool selected;
final void Function(bool)? onSelected;
  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: THelperFunctions.getColor(text) !=null? SizedBox():Text(''),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected? Colors.white: null),
      avatar: CircularContainer(width: 50,backgroundColor: Colors.green,),
      shape: CircleBorder(),
      labelPadding: EdgeInsets.all(0),
      padding: EdgeInsets.all(0),
      selectedColor: Colors.green,
      backgroundColor: Colors.green,

    );
  }
}