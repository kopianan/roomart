import 'package:flutter/material.dart';
import 'package:roomart/presentation/auth/auth_page.dart';
import 'package:roomart/presentation/auth/register_page.dart';
import 'package:roomart/presentation/category/category_page.dart';
import 'package:roomart/presentation/home/home_page.dart';

class DashboardPage extends StatefulWidget {
  static final String TAG = '/dashboard_page';
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  // List<Widget> _children = <Widget>[HomePage(), Category(), PageMe()];
  List<Widget> _children = <Widget>[
    HomePage(),
    CategoryPage(),
    AuthPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTabTapped,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: "Category", icon: Icon(Icons.timeline)),
          BottomNavigationBarItem(label: "Me", icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
