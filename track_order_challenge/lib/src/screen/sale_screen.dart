import 'package:flutter/material.dart';
import 'package:track_order_challenge/src/custom/item_status.dart';

class SaleScreen extends StatelessWidget {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var listStatus = [
    ItemStatus("assets/images/order.png", "Order Placed",
        "We have received your order.", OrderStatus.done),
    ItemStatus("assets/images/shield.png", "Order Confirmed",
        "Your order has been confirmed.", OrderStatus.done),
    ItemStatus("assets/images/chef.png", "Order Processed",
        "We are preparing your order.", OrderStatus.doing),
    ItemStatus("assets/images/giftbox.png", "Ready to Pickup",
        "Your order is ready for pickup.", OrderStatus.todo),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: _appBar(),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          _orderDetails(),
          SizedBox(height: 32),
          Expanded(
              child: Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.47,
                width: 30,
                margin: EdgeInsets.only(left: 12, bottom: 30),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 75,
                      width: 2,
                      color: Colors.green,
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                    ),
                    SizedBox(height: 5),
                    SizedBox(height: 5),
                    Container(
                      height: 75,
                      width: 2,
                      color: Colors.green,
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.blue[900]),
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 75,
                      width: 2,
                      color: Colors.grey[400],
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey[400]),
                    )
                  ],
                ),
              ),
              Expanded(child: _listStatus())
            ],
          ))
        ],
      ),
    );
  }

  _appBar() {
    return AppBar(
      title: Text("Track Oder"),
      leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            scaffoldKey.currentState.openDrawer();
          }),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.navigate_before),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.navigate_next),
          onPressed: () {},
        )
      ],
    );
  }

  _orderDetails() {
    return Material(
      elevation: 0.2,
      child: Container(
        height: 100,
        color: Colors.grey[200],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            _detailTexts("ESTIMATED TIME", "30 minutes"),
            _detailTexts("ORDER NUMBER", "#2482011"),
          ],
        ),
      ),
    );
  }

  _detailTexts(String title, String subTitle) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(title,
            style: TextStyle(
                decorationStyle: TextDecorationStyle.dashed,
                color: Colors.grey[600],
                fontSize: 17)),
        SizedBox(height: 10),
        Text(subTitle,
            style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.bold,
                fontSize: 17)),
      ],
    );
  }

  _listStatus() {
    return ListView.builder(
      itemCount: listStatus.length,
      padding: EdgeInsets.all(8),
      itemBuilder: (context, i) {
        return listStatus[i];
      },
    );
  }
}
