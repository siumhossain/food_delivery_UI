import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/constant/const.dart';
import 'package:flutter_svg/flutter_svg.dart';
class CheckOutButton extends StatelessWidget {
  CheckOutButton({this.onPressed});
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 70,
        width: 70,

        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor.withOpacity(.29),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15),
              height: 55,
              width: 55,

              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kPrimaryColor,

              ),
              child: SvgPicture.asset('assets/icons/bag.svg'),

            ),
            Positioned(
                top: 40,
                left: 40,

                child: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                  ),
                  child: Text('0',style: TextStyle(
                    color: Colors.black,
                  ),),
                ))
          ],
        ),
      ),
    );
  }
}
