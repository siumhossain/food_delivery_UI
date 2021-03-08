import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app_ui/constant/const.dart';
import 'package:food_delivery_app_ui/widget/item_list.dart';
import 'package:food_delivery_app_ui/widget/menu_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 15),
              child: Align(
                alignment: Alignment.topRight,
                child: SvgPicture.asset(
                  'assets/icons/menu.svg',
                  height: 10.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Simple way to find \nTasty Food',
                style: headline,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ItemList(
                    text: 'ALL',
                    selected: true,
                  ),
                  ItemList(
                    text: 'Italian',
                    selected: false,
                  ),
                  ItemList(
                    text: 'Asian',
                    selected: false,
                  ),
                  ItemList(
                    text: 'Chinese',
                    selected: false,
                  ),
                  ItemList(
                    text: 'Vietnam',
                    selected: false,
                  ),
                  ItemList(
                    text: 'Greece',
                    selected: false,
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              height: 50.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black),
              ),
              child: SvgPicture.asset(
                'assets/icons/search.svg',
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  MenuCard(
                    image: 'assets/images/image_1.png',
                    price: '30',
                    title: 'Vegan salad bowl',
                    materials: 'With red tomato',
                    description:
                        'Contrary to popular belief, \nLorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ',
                    kcal: '240',
                  ),
                  MenuCard(
                    image: 'assets/images/image_2.png',
                    price: '20',
                    title: 'Vegan salad bowl',
                    materials: 'With red tomato',
                    description:
                    'Contrary to popular belief, \nLorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ',
                    kcal: '240',
                  ),
                  MenuCard(
                    image: 'assets/images/image_1.png',
                    price: '10',
                    title: 'Vegan salad bowl',
                    materials: 'With red tomato',
                    description:
                    'Contrary to popular belief, \nLorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ',
                    kcal: '240',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
