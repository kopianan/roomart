import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:roomart/application/auth/auth_controller.dart';
import 'package:roomart/application/core/cart_controller.dart';
import 'package:roomart/application/home/home_controller.dart';
import 'package:roomart/domain/user/user_data_model.dart';
import 'package:roomart/presentation/auth/auth_page.dart';
import 'package:roomart/presentation/category/category_page.dart';
import 'package:roomart/presentation/dashboard/contact_us_page.dart';
import 'package:roomart/presentation/dashboard/widget/cart_icon.dart';
import 'package:roomart/presentation/dashboard/widget/search_product_page.dart';
import 'package:roomart/presentation/home/home_page.dart';
import 'package:roomart/presentation/me/me_page.dart';
import 'package:roomart/presentation/update/update_page.dart';
import 'package:roomart/utils/constants.dart';
import 'package:roomart/utils/my_color.dart';
import 'package:roomart/utils/notification_helper.dart';

class DashboardPage extends StatefulWidget {
  static final String TAG = '/dashboard_page';
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final CartController cartController = Get.put(CartController());
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final homeController = Get.put(HomeController());
  final authController = Get.put(AuthController());
  PageController? pageController;

  void pageChanged(int index) {
    homeController.pageChanged(index);
  }

  void bottomTapped(int index) {
    setState(() {
      homeController.pageChanged(index);
      homeController.onBottomTap(index);
    });
  }

  @override
  void initState() {
    pageController = homeController.getPageController;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: InkWell(
              child: Text(Constants.title_appbar),
              onTap: () async {
                // NotificationHelper.showNotification("Title", "Description");
              }),
          actions: [
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  Get.toNamed(SearchProductPage.TAG);
                }),
            CartIcon(),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  Constants.title_appbar,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                decoration: BoxDecoration(
                  color: button1,
                ),
              ),
              ListTile(
                  title: Text(
                    'Contact Us',
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    Get.toNamed(ContactUsPage.TAG);
                  }),
              Divider()
            ],
          ),
        ),
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: homeController.getPageController,
          onPageChanged: (index) {
            pageChanged(index);
          },
          children: <Widget>[
            HomePage(),
            CategoryPage(),
            UpdatePage(),
            GetX<AuthController>(builder: (auth) {
              if (auth.getUserDataModel == UserDataModel()) {
                return AuthPage();
              } else {
                return MePage();
              }
            }),
            // MePage()
          ],
        ),
        //  _children[_currentIndex],
        bottomNavigationBar: GetX<HomeController>(
          builder: (_home) => BottomNavigationBar(
            onTap: bottomTapped,
            currentIndex: _home.getSelectedIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  label: "Category", icon: Icon(Icons.timeline)),
              BottomNavigationBarItem(
                  label: "Update", icon: Icon(Icons.mail_outlined)),
              BottomNavigationBarItem(label: "Me", icon: Icon(Icons.person)),
            ],
          ),
        ));
  }
}
