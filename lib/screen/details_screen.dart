import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app_ui/constant/const.dart';
import 'package:food_delivery_app_ui/widget/checkout_button.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0,top: 20.0),
                    child: SvgPicture.asset('assets/icons/backward.svg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0,top: 20.0,),
                  child: SvgPicture.asset('assets/icons/menu.svg'),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(.26),
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/image_1_big.png'),
                    fit: BoxFit.cover,
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Vegan salad bowl',style: kHeadLine,),
                  Text('\$20',style: kMoney,)

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Text('With red tomatoes',style: kRecipe,),
                  SizedBox(height: 10.0,),
                  Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',style: kDescription,)
                ],
              ),
            ),
           Spacer(),

            Padding(
              padding:EdgeInsets.only(bottom: 20,left: 20.0,right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
              Container(
                height: 70,
                width: 250,

                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(.19),
                  borderRadius: BorderRadius.circular(27),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: <Widget>[
                    Text('Add to bag',style: kButton,),
                    SvgPicture.asset('assets/icons/forward.svg'),
                  ],
                ),
              ),
                  CheckOutButton(),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

