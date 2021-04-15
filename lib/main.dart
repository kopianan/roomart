import 'package:flutter/material.dart';
import 'package:roomart/presentation/app_widget.dart';

import 'injection.dart';

void main() {
  configureDependencies();

  runApp(AppWidget());
}
