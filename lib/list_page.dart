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
            _TopBanner(),
          ],
        ),
      ),
    );
  }
}

class _TopBanner extends StatelessWidget {
  _TopBanner({Key key}) : super(key: key);

  final topBannerStyle = ParentStyle()
    ..height(200.0)
    ..width(200.0)
    // ..alignmentContent.bottomCenter()
    ..alignment.center()
    ..background.color(Colors.grey[300])
    ..boxShadows(shadows: [
      BoxShadow(color: Colors.white70, offset: Offset(-2.0, -2.0)),
      BoxShadow(color: Colors.black12, offset: Offset(2.0, 2.0)),
    ])
    ..borderRadius(all: 8.0);
  @override
  Widget build(BuildContext context) {
    return Parent(
      style: topBannerStyle,
    );
  }
}
