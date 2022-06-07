import 'package:flutter/material.dart';
import 'package:flutter_challange/domain/core/const_style.dart';

class AppTextField {
  AppTextField._();

  static normalTextField({
    required String label,
    required TextEditingController controller,
    String? hint,
    bool? obscureText,
    bool isPassword = false,
    Function(bool)? showPassCallback,
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
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              border: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              suffixIcon: isPassword
                  ? InkWell(
                      child: const Icon(Icons.remove_red_eye),
                      onTap: () {
                        if (showPassCallback != null) {
                          showPassCallback(!(obscureText!));
                        }
                      },
                    )
                  : null,
            ),
            obscureText: obscureText ?? false,
            controller: controller,
          )
        ],
      ),
    );
  }
}
