import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 30.0, left: 10.0),
        color: Colors.deepOrangeAccent,
        child: Column(children: <Widget>[
          Row(children: <Widget>[
            Expanded(child: Text(
              "Margiteha",
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 30.0,
                  decoration: TextDecoration.none,
                  fontFamily: 'Sailec',
                  color: Colors.white,
                  fontWeight: FontWeight.normal),
            ),),
            Expanded(child: Text(
              "Pizza",
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 30.0,
                  decoration: TextDecoration.none,
                  fontFamily: 'Sailec',
                  color: Colors.white,
                  fontWeight: FontWeight.normal),
            ),),
          ],),
          Row(children: <Widget>[
            Expanded(child: Text(
              "Margiteha",
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 30.0,
                  decoration: TextDecoration.none,
                  fontFamily: 'Sailec',
                  color: Colors.white,
                  fontWeight: FontWeight.normal),
            ),),
            Expanded(child: Text(
              "Pizza",
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 30.0,
                  decoration: TextDecoration.none,
                  fontFamily: 'Sailec',
                  color: Colors.white,
                  fontWeight: FontWeight.normal),
            ),),
          ],),
          PizzaImageAsset(),
          OrderButton()
        ]),
      ),
    );
  }
}

class PizzaImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaImage = AssetImage('images/pizza.jpg');
    Image pizza = Image(image: pizzaImage, height: 400.0, width: 400.0);
    return Container(child: pizza,);
  }

}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top: 50.0),
      child: RaisedButton(
        child: Text("Order Pizza"),
        color: Colors.lightGreen,
        elevation: 5.0,
        onPressed: () {
          order(context);
        },
      ),
    );
    return button;
  }


}

void order(BuildContext context) {
  var alert = AlertDialog(
    title: Text("Order Completed"),
    content: Text("Thank you for your order"),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      });
}
