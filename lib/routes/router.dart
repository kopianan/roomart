import 'package:get/get.dart';
import 'package:roomart/presentation/dashboard/dashboard_page.dart';
import 'package:roomart/presentation/splash_screen/splash_screen_page.dart';

List<GetPage> pages = [
  GetPage(name: DashboardPage.TAG, page: () => DashboardPage()),
  GetPage(name: SplashScreenPage.TAG, page: () => SplashScreenPage())
];
