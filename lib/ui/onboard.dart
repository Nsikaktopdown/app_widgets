import 'package:flutter/material.dart';
import 'ColorUtil.dart';

class OnboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              LogoImageAsset(),
              WelcomeTitle(),
              WelcomeCompanyName(),
              WelcomeDescription()
            ],),
          Positioned(
            child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: BottomSection()),
          )
        ],
      ),
    );
  }
}

class LogoImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaImage = AssetImage('images/logo.png');
    Image pizza = Image(image: pizzaImage, height: 80.0, width: 80.0);
    return Container(
      child: pizza,
      margin: EdgeInsets.only(top: 50.0),
      alignment: Alignment.topLeft,
    );
  }
}

class WelcomeTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(left: 30.0, top: 30.0),
      child: Text(
        "Welcome to ",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 30.0,
            decoration: TextDecoration.none,
            fontFamily: 'PTSans',
            color: Colors.black,
            fontWeight: FontWeight.normal),
      ),
    );
  }
}

class WelcomeCompanyName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(left: 30.0, top: 20.0),
      child: Text(
        "Postagraph",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 50.0,
            decoration: TextDecoration.none,
            fontFamily: 'PTSans',
            color: Colors.black,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}

class WelcomeDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(left: 30.0, top: 40.0),
      child: Text(
        "A space for the people you care about the most. Reconnect, share, and plan with friends and family. No bots. No lies. A community of authentic experiences",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 16.0,
            decoration: TextDecoration.none,
            fontFamily: 'PTSans',
            color: ColourUtil.getColorFromHex("#3F3F3F"),
            fontWeight: FontWeight.normal),
      ),
    );
  }
}

class GettingStartedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0)
        ),
        child: MaterialButton(
        height: 44.0,
        child: Text(
          "Create fee Account",
          style: TextStyle(color: Colors.white,
              fontFamily: "PTSans",
              fontSize: 16.0,
              fontWeight: FontWeight.normal),
        ),
        color: ColourUtil.getColorFromHex("#D63D41"),
        elevation: 5.0,
        onPressed: () {
          //order(context);
        },
      ),),);
  }
}

class BottomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[GettingStartedButton(), ButtonDescription()],
      ),);
  }
}

class ButtonDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Text(
        "By signing up, you confirm that you agree to our Terms of Use and have read and understand our Privacy Policy",
        textAlign: TextAlign.center,
        style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 10.0,
            fontFamily: 'PTSans',
            fontWeight: FontWeight.normal,
            color: Colors.black),
      ),
    );
  }
}
