import 'package:bottombar/screens/download.dart';
import 'package:bottombar/screens/favorite.dart';
import 'package:bottombar/screens/history.dart';
import 'package:bottombar/screens/music.dart';
import 'package:bottombar/screens/search.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 4;

  final screens = [
    Download(),
    Favorite(),
    History(),
    Music(),
    Search(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.download),
      Icon(Icons.favorite),
      Icon(Icons.history),
      Icon(Icons.music_note),
      Icon(Icons.search),
    ];
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.orange,
      body: screens[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(color: Colors.blue),
        ),
        child: CurvedNavigationBar(
          key: navigationKey,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.transparent,
          index: index,
          items: items,
          onTap: (index) => setState(() {
            this.index = index;
          }),
        ),
      ),
    );
  }
}
