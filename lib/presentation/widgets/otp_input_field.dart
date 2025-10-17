import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpInputField extends StatelessWidget {
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final Function(String)? onCompleted;

  const OtpInputField({
    super.key,
    this.controller,
    this.onChanged,
    this.onCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 6,
      controller: controller,
      obscureText: true,
      obscuringCharacter: '*',
      blinkWhenObscuring: true,
      animationType: AnimationType.fade,
      enableActiveFill: true,
      cursorColor: Colors.black,
      keyboardType: TextInputType.number,
      animationDuration: const Duration(milliseconds: 300),
      validator: (value) {
        if (value == null || value.length < 6) {
          return "Enter a valid OTP";
        }
        return null;
      },
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(8),
        fieldHeight: 50,
        fieldWidth: 45,
        inactiveColor: Colors.grey.shade300,
        activeColor: AppColors.blue,
        selectedColor: AppColors.blue,
        activeFillColor: Colors.white,
        selectedFillColor: Colors.white,
        inactiveFillColor: Colors.grey.shade100,
      ),
      boxShadows: const [
        BoxShadow(offset: Offset(0, 1), color: Colors.black12, blurRadius: 10),
      ],
      onChanged: onChanged ?? (value) {},
      onCompleted: onCompleted ?? (value) {},
      beforeTextPaste: (text) {
        debugPrint("Pasting: $text");
        return true;
      },
    );
  }
}
