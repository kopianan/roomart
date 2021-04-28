import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roomart/application/auth/auth_controller.dart';
import 'package:roomart/application/core/cart_controller.dart';
import 'package:roomart/infrastructure/core/pref.dart';
import 'package:roomart/presentation/auth/auth_page.dart';
import 'package:roomart/presentation/auth/sign_up/register_page.dart';
import 'package:roomart/presentation/category/category_page.dart';
import 'package:roomart/presentation/home/home_page.dart';
import 'package:roomart/presentation/me/me_page.dart';

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

  final CartController cartController = Get.put(CartController());
  List<Widget> _children = <Widget>[
    HomePage(),
    CategoryPage(),
    AuthPage(),
    // MePage()
  ];
  final authController = Get.put(AuthController());
  @override
  void initState() {
    super.initState();
  }

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
