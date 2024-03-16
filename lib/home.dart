import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'pages/recipes_page.dart';
import 'pages/blog_page.dart';
import 'pages/fasting_page.dart';
import "pages/charts_page.dart";
import "pages/personel_page.dart";

class Home extends StatefulWidget {
  const Home({required Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    RecipesPage(),
    BlogPage(),
    FastingPage(),
    ChartsPage(),
    PersonalPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "WİNK",
            style: TextStyle(
              color: Colors.orange[300],
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.orangeAccent,
        index: _currentIndex,
        height: 50.0,
        items: <Widget>[
          Icon(Icons.local_dining, size: 30),
          Icon(Icons.article, size: 30),
          Icon(Icons.stacked_line_chart, size: 30),
          Icon(Icons.pie_chart, size: 30),
          Icon(Icons.person, size: 30),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
