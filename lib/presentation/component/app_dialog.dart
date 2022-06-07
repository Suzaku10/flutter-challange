import 'package:flutter/material.dart';
import 'package:flutter_challange/domain/core/const_style.dart';
import 'package:flutter_challange/domain/core/i10n/l10n.dart';
import 'package:flutter_challange/presentation/component/button.dart';
import 'package:get/get.dart';

class AppDialog {
  AppDialog._();

  static Future<bool> confirmDialog() async {
    final result = await Get.dialog(const BasicDialog()) ?? false;
    return result;
  }
}

class BasicDialog extends StatelessWidget {
  const BasicDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  I10n.current.dialog_login_failed,
                  style: AppStyle.bold14,
                  textAlign: TextAlign.center,
                ),
              ),
              AppButton.normal(
                I10n.current.ok.toUpperCase(),
                onPressed: () => Get.back(result: true),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
