import 'package:flutter/material.dart';
import 'package:restaurant_challenge_flutterando/src/custom/meal_card.dart';
import 'package:restaurant_challenge_flutterando/src/model/meal.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        color: Colors.blueGrey[900],
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: <Widget>[
                  MealCard(
                    Meal(
                        img: "assets/image/prato_01.png",
                        title: "KAMAAGE UDON",
                        minutes: 20,
                        nutrients: 196,
                        likes: 375,
                        comments: 75),
                        Colors.yellow[700]
                  ),
                  MealCard(
                    Meal(
                        img: "assets/image/prato_02.png",
                        title: "VALENCIAN PRONUNCIATION",
                        minutes: 12,
                        nutrients: 104,
                        likes: 117,
                        comments: 18),
                        Colors.orange[600]
                  ),
                  MealCard(
                    Meal(
                        img: "assets/image/prato_03.png",
                        title: "KAMAAGE UDON",
                        minutes: 20,
                        nutrients: 196,
                        likes: 375,
                        comments: 75),
                        Colors.green
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 16),
              height: 80,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  _menuItem("assets/image/restaurant.png", "Recipes", false),
                  _menuItem("assets/image/chicken.png", "Cook", true),
                  _menuItem("assets/image/stew.png", "Shopping", false),
                  _menuItem("assets/image/chef-hat.png", "My recipes", false)
                ],
              ),
            )
          ],
        ));
  }

  _menuItem(String img, String txt, bool isActive) {
    return Column(
      children: <Widget>[
        Image.asset(img, color: _activeColor(isActive),height: 32,),
        SizedBox(
          height: 10,
        ),
        Text(txt, style: TextStyle(color: _activeColor(isActive)))
      ],
    );
  }

  _activeColor(bool isActive) {
    return isActive ? Colors.yellow[700] : Colors.blueGrey[600];
  }
}
