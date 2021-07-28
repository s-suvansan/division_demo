import 'package:division/division.dart';
import 'package:flutter/material.dart';

class ListPageView extends StatefulWidget {
  const ListPageView({Key key}) : super(key: key);

  @override
  _ListPageViewState createState() => _ListPageViewState();
}

class _ListPageViewState extends State<ListPageView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _BoxOne(),
            SizedBox(height: 16.0),
            _BoxTwo(),
          ],
        ),
      ),
    );
  }
}

class _BoxOne extends StatelessWidget {
  _BoxOne({Key key}) : super(key: key);

  final topBannerStyle = ParentStyle()
    ..height(200.0)
    ..width(200.0)
    // ..alignmentContent.bottomCenter()
    ..alignment.center()
    ..background.color(Colors.grey[300])
    ..boxShadows(shadows: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2),
        offset: Offset(3, 3),
        blurRadius: 7.0,
      ),
      BoxShadow(
        color: Colors.white,
        offset: Offset(-3, -3),
        blurRadius: 7.0,
      ),
    ])
    ..borderRadius(all: 8.0);
  @override
  Widget build(BuildContext context) {
    return Parent(
      style: topBannerStyle,
    );
  }
}

class _BoxTwo extends StatelessWidget {
  _BoxTwo({Key key}) : super(key: key);

  ParentStyle topBannerStyle({
    double height = 200.0,
    double width = 200.0,
    double padding = 0.0,
    double offsetValue = 3.0,
    double blurRadius = 7.0,
    Color topShadowColor,
    Color bottomShadowColor,
  }) =>
      ParentStyle()
        ..height(height)
        ..width(width)
        // ..alignmentContent.bottomCenter()
        ..padding(all: padding)
        ..alignment.center()
        ..background.color(Colors.grey[300])
        ..boxShadows(shadows: [
          BoxShadow(
            color: bottomShadowColor ?? Colors.black.withOpacity(0.2),
            offset: Offset(offsetValue, offsetValue),
            blurRadius: blurRadius,
          ),
          BoxShadow(
            color: topShadowColor ?? Colors.white,
            offset: Offset(-offsetValue, -offsetValue),
            blurRadius: blurRadius,
          ),
        ])
        ..borderRadius(all: 8.0);
  @override
  Widget build(BuildContext context) {
    return Parent(
      style: topBannerStyle(padding: 8.0),
      child: Parent(
        style: topBannerStyle(
          topShadowColor: Colors.black.withOpacity(0.2),
          bottomShadowColor: Colors.white,
        ),
      ),
    );
  }
}
