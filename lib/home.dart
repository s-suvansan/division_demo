import 'package:division/division.dart';
import 'package:division_demo/list_page.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({Key key}) : super(key: key);

  final _textStyle = TxtStyle()
    ..alignment.center()
    ..textAlign.center()
    ..fontSize(50.0)
    ..bold()
    ..rotate(1.0)
    ..textColor(Colors.white)
    // ..elevation(.1, color: Colors.grey)
    ..border(all: 4.0, color: Colors.green)
    ..borderRadius(all: 8.0)
    ..padding(horizontal: 8.0)
    ..ripple(true, splashColor: Colors.red, highlightColor: Colors.black)
    // ..editable(enable: true)
    ..animate(200, Curves.bounceIn)
    ..letterSpacing(1.2)
    ..linearGradient(colors: [Colors.green, Colors.greenAccent])
    ..textShadow(color: Colors.black.withOpacity(0.8), offset: Offset(2, 2), blur: 10.0);

  Gestures textClick(BuildContext context) => Gestures()
    ..onTap(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => ListPageView()));
    });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Parent(
          child: Txt(
            "Let's Start",
            style: _textStyle,
            gesture: textClick(context),
          ),
        ),
      ),
    );
  }
}
