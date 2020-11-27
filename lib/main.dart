import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getxproject/screens/MainPage.dart';
import 'package:getxproject/utils/MyTranslations.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    debugShowMaterialGrid: false,
    initialRoute: '/main',
    theme: ThemeData(accentColor: Colors.teal, primaryColor: Colors.blueAccent),
    defaultTransition: Transition.zoom,
    translations: MyTranslations(),
    locale: Locale('fr'),
    fallbackLocale: Locale('fr'),
    getPages: [GetPage(name: '/main', page: () => MainPage())],
  ));
}
