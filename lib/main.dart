import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:roomart/presentation/app_widget.dart';

import 'injection.dart';

void main() async {
  configureDependencies();
  await GetStorage.init();
  runApp(AppWidget());
}
