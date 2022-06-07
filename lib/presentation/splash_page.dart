import 'dart:async';

import 'package:flutter/material.dart';
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(height: 100, width: double.infinity, color: Colors.blue,),
              Container(height: 100, width: double.infinity, color: Colors.green,),
              Container(height: 100, width: double.infinity, color: Colors.red,),
            ],
          )
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
