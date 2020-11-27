import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getxproject/controllers/binding/SampleBind.dart';
import 'package:getxproject/screens/MainPage.dart';
import 'package:getxproject/screens/third.dart';
import 'package:getxproject/utils/MyTranslations.dart';

void main() async {
  await GetStorage.init();

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    debugShowMaterialGrid: false,
    initialRoute: '/main',
    theme: ThemeData(accentColor: Colors.teal, primaryColor: Colors.blueAccent),
    defaultTransition: Transition.zoom,
    translations: MyTranslations(),
    locale: Locale('fr'),
    // locale: Get.deviceLocale,
    fallbackLocale: Locale('fr'),
    getPages: [
      GetPage(name: '/main', page: () => MainPage()),
      GetPage(
          name: '/thirdPage', page: () => ThirdPage(), binding: SampleBind()),
    ],
  ));
}
