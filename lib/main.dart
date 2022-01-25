import 'package:flutter/material.dart';
import 'package:mqtt_project/views/splashScreen.dart';
import 'views/login.dart';
import 'package:flutter_locales/flutter_locales.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Locales.init(['en', 'fr', 'it']);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LocaleBuilder(builder: (context) {
      return MaterialApp(
        locale: context,
        localizationsDelegates: Locales.delegates,
        supportedLocales: Locales.supportedLocales,
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      );
    });
  }
}
