import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/utils/functions/generate_country_flag.dart';

class PhoneFormInput extends StatelessWidget {
  const PhoneFormInput({super.key, this.phoneController});
  final TextEditingController? phoneController;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(8);

    return Row(
      children: [
        // Country code container
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.lightGrey, width: 1),
            borderRadius: borderRadius,
          ),
          child: Text(
            '${generateFlag('eg')} +20',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.2,
            ),
          ),
        ),

        const SizedBox(width: 12),

        // Phone number field
        Expanded(
          child: TextFormField(
            autofocus: true,
            controller: phoneController,
            keyboardType: TextInputType.phone,
            cursorColor: AppColors.blue,
            style: const TextStyle(fontSize: 16, letterSpacing: 1.2),
            decoration: InputDecoration(
              hintText: 'Enter your phone number',
              hintStyle: const TextStyle(color: Colors.grey, fontSize: 15),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 14,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: borderRadius,
                borderSide: BorderSide(color: AppColors.lightGrey, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: borderRadius,
                borderSide: BorderSide(color: AppColors.blue, width: 1.5),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: borderRadius,
                borderSide: const BorderSide(color: Colors.red, width: 1.5),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: borderRadius,
                borderSide: const BorderSide(color: Colors.red, width: 1.5),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your phone number';
              } else if (value.length < 10 || value.length > 10) {
                return ' [1xxxxxxxxx] The number must be 10 digits ex';
              }
              return null;
            },
          ),
        ),
      ],
    );
  }
}
