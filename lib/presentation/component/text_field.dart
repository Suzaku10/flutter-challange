import 'package:flutter/material.dart';
import 'package:flutter_challange/domain/core/const_style.dart';

class AppTextField {
  AppTextField._();

  static normalTextField({
    required String label,
    required TextEditingController controller,
    String? hint,
    bool? obscureText,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: AppStyle.normal12,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: AppStyle.italic10,
              enabledBorder: const UnderlineInputBorder(
                borderSide:  BorderSide(color: Colors.grey),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide:  BorderSide(color: Colors.black),
              ),
              border: const UnderlineInputBorder(
                borderSide:  BorderSide(color: Colors.grey),
              ),
            ),
            obscureText: obscureText ?? false,
            controller: controller,
          )
        ],
      ),
    );
  }
}
