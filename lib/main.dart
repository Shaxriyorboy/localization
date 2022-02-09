import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localithation/pages/home_page.dart';
import 'package:localithation/pages/homework_page.dart';
import 'package:localithation/pages/selection_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      child: MyApp(),
      supportedLocales: [
        Locale("en", "US"),
        Locale("ru", "RU"),
        Locale("uz", "UZ"),
        Locale("fr", "FR"),
        Locale("ko", "KP"),
        Locale("ja", "JP"),
      ],
      path: "assets/translations",
      fallbackLocale: Locale("en", "US"),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SelectionPage(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id: (context) => HomePage(),
        HomeworkPage.id:(context) => HomeworkPage(),
      },
    );
  }
}
