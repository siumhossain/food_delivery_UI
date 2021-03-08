import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/constant/const.dart';

class ItemList extends StatelessWidget {
  ItemList({@required this.text, this.selected});
  final String text;

  final bool selected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 20, right: 30),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          color: selected == true ? kPrimaryColor : kTextColor.withOpacity(.50),
        ),
      ),
    );
  }
}
