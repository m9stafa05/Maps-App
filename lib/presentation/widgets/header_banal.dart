import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class Headerbanal extends StatelessWidget {
  const Headerbanal({
    super.key,
    required this.title,
    required this.subtitle,
    this.phoneNumber,
  });

  final String title;
  final String subtitle;
  final String? phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 60),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        const SizedBox(height: 16),
        // Subtitle and phone number on separate lines
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              subtitle,
              style: const TextStyle(color: Colors.black, fontSize: 16),
            ),
            if (phoneNumber != null)
              Text(
                '+20 $phoneNumber',
                style: const TextStyle(
                  color: AppColors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
          ],
        ),
      ],
    );
  }
}
