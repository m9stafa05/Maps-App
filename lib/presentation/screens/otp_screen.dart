import 'package:flutter/material.dart';
import '../widgets/custom_text_button.dart';
import '../widgets/header_banal.dart';
import '../widgets/otp_input_field.dart';


class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key, required this.phoneNumber});
  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Headerbanal(
                  title: 'Verify your phone number',
                  subtitle: 'Enter your 6 digit code numbers sent to you at ',
                  phoneNumber: phoneNumber,
                ),
                SizedBox(height: 100),
                OtpInputField(),
                const Spacer(),
                Align(
                  alignment: Alignment.centerRight,
                  child: CustomTextButton(
                    width: 160,
                    text: 'Verify',
                    onPressed: () {},
                  ),
                ),
                SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
