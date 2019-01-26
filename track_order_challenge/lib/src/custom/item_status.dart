import 'package:flutter/material.dart';

class ItemStatus extends StatelessWidget {
  String image;
  String title;
  String detail;
  OrderStatus status;

  ItemStatus(this.image, this.title, this.detail, this.status);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16, bottom: 16),
      child: ListTile(
        leading: Image(
          image: AssetImage(image),
          fit: BoxFit.cover,
          color:
              status == OrderStatus.todo ? Colors.grey[400] : Colors.grey[800],
          height: 55,
        ),
        title: Text(
          title,
          style: TextStyle(
              color: _textColor(),
              fontWeight: FontWeight.w600,
              fontSize: 18),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 6.0),
          child: Text(
            detail,
            style: TextStyle(
              color: _textColor(),
            ),
          ),
        ),
      ),
    );
  }

  _textColor() {
    switch (status) {
      case OrderStatus.doing:
        return Colors.blue[900];
      case OrderStatus.done:
        return Colors.grey[800];
      case OrderStatus.todo:
        return Colors.grey[400];
    }
  }
}

enum OrderStatus { done, doing, todo }
