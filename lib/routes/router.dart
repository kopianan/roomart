import 'package:get/get.dart';
import 'package:roomart/presentation/auth/auth_page.dart';
import 'package:roomart/presentation/auth/sign_in_page.dart';
import 'package:roomart/presentation/dashboard/dashboard_page.dart';
import 'package:roomart/presentation/splash_screen/splash_screen_page.dart';

List<GetPage> pages = [
  GetPage(name: DashboardPage.TAG, page: () => DashboardPage()),
  GetPage(name: SplashScreenPage.TAG, page: () => SplashScreenPage()),
  GetPage(name: AuthPage.TAG, page: () => AuthPage()),
  GetPage(name: SignInPage.TAG, page: () => SignInPage()),
];
