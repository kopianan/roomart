import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:roomart/application/auth/auth_controller.dart';
import 'package:roomart/application/auth/auth_cubit.dart';
import 'package:roomart/presentation/dashboard/dashboard_page.dart';

import '../../injection.dart';

class SplashScreenPage extends StatefulWidget {
  static final String TAG = '/splash_screen_page';

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  final authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
          create: (context) => getIt<AuthCubit>()..checkAuthentication(),
          child: BlocConsumer<AuthCubit, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                  orElse: () {},
                  error: (e) {
                    print("SPLASH SCREEN" + e.error);
                    Get.offNamed(DashboardPage.TAG);
                  },
                  onAuthenticated: (e) {
                    authController.setDataModel(e.user); 
                    Get.offNamed(DashboardPage.TAG);
                  });
            },
            builder: (context, state) {
              return Container(
                  child: Center(child: CircularProgressIndicator()));
            },
          )),
    );
  }
}
