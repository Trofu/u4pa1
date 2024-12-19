import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:u4pa1/config/router/routes.dart';

import 'injection_container.dart' as injection_container;

void main() async {
  await injection_container.init();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}