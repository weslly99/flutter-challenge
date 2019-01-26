import 'package:flutter/material.dart';
import 'package:restaurant_challenge_flutterando/src/model/meal.dart';

class MealCard extends StatelessWidget {
  Meal _meal;
  Color _colorText;
  static final _MINUTES = "minutes";
  static final _NUTRIENTS = "nutrients";

  MealCard(this._meal,this._colorText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 60.0),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment(0, 2),
            heightFactor: 2,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.88,
              height: MediaQuery.of(context).size.height * 0.09,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(3)),
              child:
                  Padding(padding: EdgeInsets.all(8), child: _socialSection()),
            ),
          ),
          Material(
            elevation: 8,
            child: Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(3)),
              child: _mealDetailSection(),
            ),
          ),
          _plateSection(),
        ],
      ),
    );
  }

  _plateSection() {
    return Align(
      alignment: Alignment(1, -0.75),
      heightFactor: 0,
      child: Image.asset(
        _meal.img,
        height: 150,
        width: 150,
      ),
    );
  }

  _mealDetailSection() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(_meal.title,
            softWrap: true,
            style: TextStyle(
                fontWeight: FontWeight.w900,
                color: _colorText,
                fontSize: 20)),
        _starts(),
        SizedBox(height: 15),
        _nutriInfo()
      ],
    );
  }

  _starts() {
    return Row(
      children: <Widget>[
        Icon(Icons.star, color: Colors.yellow[700], size: 15),
        Icon(Icons.star, color: Colors.yellow[700], size: 15),
        Icon(Icons.star, color: Colors.yellow[700], size: 15),
        Icon(Icons.star, color: Colors.yellow[700], size: 15),
        Icon(Icons.star, color: Colors.yellow[700], size: 15)
      ],
    );
  }

  _nutriInfo() {
    return Row(
      children: <Widget>[
        _nutriData("${_meal.minutes}", _MINUTES),
        SizedBox(width: 7),
        Text("/",
            style: TextStyle(
                color: Colors.indigo[300],
                fontSize: 25,
                fontWeight: FontWeight.w100)),
        SizedBox(width: 7),
        _nutriData("${_meal.nutrients}", _NUTRIENTS),
      ],
    );
  }

  _nutriData(String text, String type) {
    return Column(
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.indigo[300]),
        ),
        Text(
          type,
          style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Colors.indigo[200]),
        )
      ],
    );
  }

  _socialSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        _socialItem(Icons.favorite, "${_meal.likes} Likes"),
        _socialItem(Icons.chat_bubble, "${_meal.comments} Comments"),
        _socialItem(Icons.share, "Share"),
      ],
    );
  }

  _socialItem(IconData icon, String text) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          size: 16,
          color: Colors.blueGrey[300],
        ),
        SizedBox(width: 4),
        Text(text, style: TextStyle(fontSize: 12, color: Colors.blueGrey[300]))
      ],
    );
  }
}
