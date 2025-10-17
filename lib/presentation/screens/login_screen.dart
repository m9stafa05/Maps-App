import 'package:flutter/material.dart';

import '../../core/router/routes_name.dart';
import '../widgets/custom_text_button.dart';
import '../widgets/header_banal.dart';
import '../widgets/phone_form_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _phoneFormKey = GlobalKey<FormState>();
  final TextEditingController phoneController = TextEditingController();

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _phoneFormKey,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Headerbanal(
                  title: 'What is your phone number?',
                  subtitle: 'We will send you a verification code',
                ),
                const SizedBox(height: 100),
                PhoneFormInput(phoneController: phoneController),
                const Spacer(),
                Align(
                  alignment: Alignment.centerRight,
                  child: CustomTextButton(
                    width: 160,
                    text: 'Next',
                    onPressed: () {
                      if (_phoneFormKey.currentState!.validate()) {
                        Navigator.pushNamed(
                          context,
                          RoutesName.otpScreen,
                          arguments: phoneController.text,
                        );
                      }
                    },
                  ),
                ),
                const SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
