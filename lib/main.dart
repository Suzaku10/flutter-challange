import 'package:flutter/material.dart';
import 'package:flutter_challange/domain/core/const_string.dart';
import 'package:flutter_challange/domain/core/i10n/l10n.dart';
import 'package:flutter_challange/domain/core/router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        I10n.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: I10n.delegate.supportedLocales,
      locale: const Locale(AppStrings.en),
      fallbackLocale: const Locale(AppStrings.en),
      initialRoute: Routers.splash,
      getPages: Routers().routers,
    );
  }
}
