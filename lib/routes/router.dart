import 'package:get/get.dart';
import 'package:roomart/presentation/address/add_address_page.dart';
import 'package:roomart/presentation/auth/auth_page.dart';
import 'package:roomart/presentation/cart/cart_page.dart';
import 'package:roomart/presentation/category/category_end_page.dart';
import 'package:roomart/presentation/category/sub_cotegory_page.dart';
import 'package:roomart/presentation/dashboard/contact_us_page.dart';
import 'package:roomart/presentation/dashboard/dashboard_page.dart';
import 'package:roomart/presentation/delivery/delivery_page.dart';
import 'package:roomart/presentation/discount/discount_page.dart';
import 'package:roomart/presentation/item_detail/item_detail_page.dart';
import 'package:roomart/presentation/me/order_page.dart';
import 'package:roomart/presentation/me/widgets/detail_transaction_history_page.dart';
import 'package:roomart/presentation/me/widgets/transaction_history_detail_page.dart';
import 'package:roomart/presentation/me/widgets/transaction_history_detail_pageV2.dart';
import 'package:roomart/presentation/payment/payment_page.dart';
import 'package:roomart/presentation/payment/payment_midtrans_page.dart';
import 'package:roomart/presentation/payment/payment_status_page.dart';
import 'package:roomart/presentation/payment_method/payment_method_page.dart';
import 'package:roomart/presentation/splash_screen/splash_screen_page.dart';

import '../presentation/auth/sign_up/register_page.dart';

List<GetPage> pages = [
  GetPage(name: DashboardPage.TAG, page: () => DashboardPage()),
  GetPage(name: SplashScreenPage.TAG, page: () => SplashScreenPage()),
  GetPage(name: AuthPage.TAG, page: () => AuthPage()),
  GetPage(name: RegisterPage.TAG, page: () => RegisterPage()),
  GetPage(
      name: TransactionHistoryDetailPage.TAG,
      page: () => TransactionHistoryDetailPage()),
  GetPage(
      name: TransactionHistoryDetailPageV2.TAG,
      page: () => TransactionHistoryDetailPageV2()),
  GetPage(name: SubCategoryPage.TAG, page: () => SubCategoryPage()),
  GetPage(name: CategoryEndPage.TAG, page: () => CategoryEndPage()),
  GetPage(name: ContactUsPage.TAG, page: () => ContactUsPage()),
  GetPage(name: ItemDetailPage.TAG, page: () => ItemDetailPage()),
  GetPage(name: OrderPage.TAG, page: () => OrderPage()),
  GetPage(name: CartPage.TAG, page: () => CartPage()),
  GetPage(name: PaymentPage.TAG, page: () => PaymentPage()),
  GetPage(name: AddAddressPage.TAG, page: () => AddAddressPage()),
  GetPage(name: PaymentStatusPage.TAG, page: () => PaymentStatusPage()),
  GetPage(name: PaymentMethodPage.TAG, page: () => PaymentMethodPage()),
  GetPage(name: DiscountPage.TAG, page: () => DiscountPage()),
  GetPage(name: DeliveryPage.TAG, page: () => DeliveryPage()),
  GetPage(name: PaymentMidtransPage.TAG, page: () => PaymentMidtransPage()),
  GetPage(
      name: DetailTransactionHistoryPage.TAG,
      page: () => DetailTransactionHistoryPage()),
];
