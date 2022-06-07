import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challange/domain/core/const_assets.dart';
import 'package:flutter_challange/domain/core/const_style.dart';
import 'package:flutter_challange/domain/core/i10n/l10n.dart';
import 'package:flutter_challange/presentation/component/app_dialog.dart';
import 'package:flutter_challange/presentation/component/button.dart';
import 'package:flutter_challange/presentation/component/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController _userIDController;
  late TextEditingController _passwordController;
  bool showPassword = false;

  @override
  initState() {
    _userIDController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(AppAssets.headerLogin),
                Image.asset(AppAssets.logo),
              ],
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(minHeight: 50),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          I10n.current.login,
                          style: AppStyle.bold16,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 8.0, bottom: 10.0),
                          child: Text(
                            I10n.current.login_info,
                            style: AppStyle.normal12,
                          ),
                        ),
                        AppTextField.normalTextField(
                          label: I10n.current.user_id,
                          controller: _userIDController,
                          hint: I10n.current.user_id_hint,
                        ),
                        AppTextField.normalTextField(
                          label: I10n.current.password,
                          controller: _passwordController,
                          hint: I10n.current.password_hint,
                          obscureText: !showPassword,
                          isPassword: true,
                          showPassCallback: (value) {
                            setState(() => showPassword = !value);
                          },
                        ),
                      ],
                    ),
                    AppButton.normal(
                      I10n.current.login.toUpperCase(),
                      onPressed: () {
                        FocusScope.of(context).unfocus();
                        final success = _validation();
                        if (!success) {
                          AppDialog.confirmDialog();
                        } else {
                          AppDialog.info().then(
                            (value) {
                              if (value) {
                                _clearAllController();
                              }
                            },
                          );
                        }
                      },
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: I10n.current.non_member_info),
                      const TextSpan(text: " "),
                      TextSpan(
                        text: I10n.current.sign_up,
                        style: AppStyle.bold12red,
                        recognizer: TapGestureRecognizer()
                          ..onTap =
                              () => ScaffoldMessenger.of(context).showSnackBar(
                                    _snackBar(),
                                  ),
                      ),
                    ],
                    style: AppStyle.normal12.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  SnackBar _snackBar() {
    return SnackBar(
      content: Text(I10n.current.feature_coming_soon),
    );
  }

  void _clearAllController() {
    _userIDController.clear();
    _passwordController.clear();
  }

  bool _validation() {
    if (_userIDController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }
}
