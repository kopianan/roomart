import 'package:get/get.dart';
import 'package:roomart/presentation/auth/auth_page.dart';
import 'package:roomart/presentation/category/category_end_page.dart';
import 'package:roomart/presentation/category/sub_cotegory_page.dart';
import 'package:roomart/presentation/dashboard/dashboard_page.dart';
import 'package:roomart/presentation/item_detail/item_detail_page.dart';
import 'package:roomart/presentation/splash_screen/splash_screen_page.dart';

import '../presentation/auth/sign_up/register_page.dart';

List<GetPage> pages = [
  GetPage(name: DashboardPage.TAG, page: () => DashboardPage()),
  GetPage(name: SplashScreenPage.TAG, page: () => SplashScreenPage()),
  GetPage(name: AuthPage.TAG, page: () => AuthPage()),
  GetPage(name: RegisterPage.TAG, page: () => RegisterPage()),
  GetPage(name: SubCategoryPage.TAG, page: () => SubCategoryPage()),
  GetPage(name: CategoryEndPage.TAG, page: () => CategoryEndPage()),
  GetPage(name: ItemDetailPage.TAG, page: () => ItemDetailPage()),
];
