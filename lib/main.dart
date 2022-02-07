import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:localization/pages/home_assignment1.dart';
import 'package:localization/pages/home_assignment2.dart';

import 'home_page.dart';

void main() async {
  // Needs to be called so that we can await for EasyLocalization.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        /// What Languages?
        supportedLocales: const [
          Locale('en', 'US'),
          Locale('fr', 'FRA'),
          Locale('ru', 'RU'),
          Locale('uz', 'UZB'),
          Locale('jp', 'JPN'),
          Locale('kr', 'KOR'),
        ],
        /// Where?
        path: 'assets/translations', // <-- change the path of the translation files
        /// Default one?
        fallbackLocale: const Locale('en', 'US'),
        child: const MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const HomePage(),
      routes: {
        HomeAssignment1.id: (context) => const HomeAssignment1(),
        HomeAssignment2.id: (context) => const HomeAssignment2(),
      },
    );
  }
}
