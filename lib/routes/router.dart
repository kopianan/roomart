import 'package:get/get.dart';
import 'package:roomart/presentation/address/add_address_page.dart';
import 'package:roomart/presentation/auth/auth_page.dart';
import 'package:roomart/presentation/cart/cart_page.dart';
import 'package:roomart/presentation/category/category_end_page.dart';
import 'package:roomart/presentation/category/sub_cotegory_page.dart';
import 'package:roomart/presentation/dashboard/contact_us_page.dart';
import 'package:roomart/presentation/dashboard/dashboard_page.dart'; 
import 'package:roomart/presentation/dashboard/widget/search_product_page.dart';
import 'package:roomart/presentation/delivery/delivery_page.dart';
import 'package:roomart/presentation/discount/discount_page.dart';
import 'package:roomart/presentation/item_detail/item_detail_page.dart';
import 'package:roomart/presentation/me/change_password_page.dart';
import 'package:roomart/presentation/me/order_page.dart';
import 'package:roomart/presentation/me/payment_confirmation_page.dart';
import 'package:roomart/presentation/me/profile_page.dart';
import 'package:roomart/presentation/me/widgets/transaction_history_detail_page.dart';
import 'package:roomart/presentation/me/widgets/transaction_history_detail_page_finished.dart';
import 'package:roomart/presentation/me/widgets/transaction_history_detail_page_full.dart';
import 'package:roomart/presentation/me/widgets2/new_history_transaction_detail_page.dart';
import 'package:roomart/presentation/payment/payment_page.dart';
import 'package:roomart/presentation/payment/payment_midtrans_page.dart';
import 'package:roomart/presentation/payment/payment_progress_page.dart';
import 'package:roomart/presentation/payment/payment_status_page.dart';
import 'package:roomart/presentation/payment_method/payment_method_page.dart';
import 'package:roomart/presentation/photo_view_page.dart';
import 'package:roomart/presentation/splash_screen/splash_screen_page.dart';
import 'package:roomart/presentation/auth/forgot_password_page.dart';
import 'package:roomart/presentation/update/update_detail_page.dart';
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
      name: TransactionHistoryDetailPageFinished.TAG,
      page: () => TransactionHistoryDetailPageFinished()),
  GetPage(
      name: TransactionHistoryDetailPageFull.TAG,
      page: () => TransactionHistoryDetailPageFull()),
  GetPage(name: SubCategoryPage.TAG, page: () => SubCategoryPage()),
  GetPage(name: CategoryEndPage.TAG, page: () => CategoryEndPage()),
  GetPage(name: ForgotPasswordPage.TAG, page: () => ForgotPasswordPage()),
  GetPage(name: ContactUsPage.TAG, page: () => ContactUsPage()),
  GetPage(name: ItemDetailPage.TAG, page: () => ItemDetailPage()),
  GetPage(name: OrderPage.TAG, page: () => OrderPage()),
  GetPage(name: CartPage.TAG, page: () => CartPage()),
  GetPage(name: PaymentPage.TAG, page: () => PaymentPage()), 
  GetPage(name: AddAddressPage.TAG, page: () => AddAddressPage()),
  GetPage(name: PaymentStatusPage.TAG, page: () => PaymentStatusPage()),
  GetPage(name: SearchProductPage.TAG, page: () => SearchProductPage()),
  GetPage(name: UpdateDetailPage.TAG, page: () => UpdateDetailPage()),
  GetPage(name: PaymentProgressPage.TAG, page: () => PaymentProgressPage()),
  GetPage(name: PaymentMethodPage.TAG, page: () => PaymentMethodPage()),
  GetPage(name: ChangePasswordPage.TAG, page: () => ChangePasswordPage()),
  GetPage(name: DiscountPage.TAG, page: () => DiscountPage()),
  GetPage(
      name: PaymentConfirmationPage.TAG, page: () => PaymentConfirmationPage()),
  GetPage(name: ProfilePage.TAG, page: () => ProfilePage()),
  GetPage(name: DeliveryPage.TAG, page: () => DeliveryPage()),
  GetPage(
      name: NewHistoryTransactionDetailPage.TAG,
      page: () => NewHistoryTransactionDetailPage()),
  GetPage(name: PaymentMidtransPage.TAG, page: () => PaymentMidtransPage()),
  GetPage(name: PhotoViewPage.TAG, page: () => PhotoViewPage()),
  // GetPage(
  //     name: DetailTransactionHistoryPage.TAG,
  //     page: () => DetailTransactionHistoryPage()),
];
