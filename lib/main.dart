

import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/core/localization/translation.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:ecommerce_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/localization/changelocal.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      theme: ThemeData(
        fontFamily: "PlayfairDisplay",
        textTheme: const TextTheme(
            headlineLarge: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: AppColor.black),
            headlineMedium: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: AppColor.black),
            bodyLarge: TextStyle(
                height: 2,
                color: AppColor.grey,
                fontWeight: FontWeight.bold,
                fontSize: 14),
            bodyMedium: TextStyle(
                height: 2,
                color: AppColor.grey,
                fontSize: 14)),
        primarySwatch: Colors.blue,
      ),
      
      getPages: routes,
    );
  }
}

