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
  final CartController cartController = Get.put(CartController());
  int bottomSelectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final authController = Get.put(AuthController());
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;

      // pageController.animateToPage(index,
      //     duration: Duration(milliseconds: 500), curve: Curves.ease);
      pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,

      appBar: AppBar(),
      drawer: Drawer(),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: (index) {
          pageChanged(index);
        },
        children: <Widget>[
          HomePage(),
          CategoryPage(),

          GetX<AuthController>(builder: (auth) {
            if (auth.getUserDataModel.userId == null) {
              return AuthPage();
            } else {
              return MePage();
            }
          }),
          // MePage()
        ],
      ),
      //  _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: bottomTapped,
        currentIndex: bottomSelectedIndex,
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
