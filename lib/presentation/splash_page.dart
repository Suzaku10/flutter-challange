import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_challange/domain/core/const_assets.dart';
import 'package:flutter_challange/domain/core/router.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    _goToLoginPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Image.asset(AppAssets.headerSplash),
              Expanded(
                child: Center(
                  child: Image.asset(AppAssets.logo),
                ),
              ),
              Image.asset(AppAssets.footerSplash),
            ],
          ),
        ),
      ),
    );
  }

  void _goToLoginPage() {
    Timer(const Duration(seconds: 2), (() {
      Get.toNamed(Routers.login);
    }));
  }
}
