import 'dart:ui';

import 'package:flutter/material.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final String label;
  final IconData? icon;
  final GestureTapCallback onTap;

  const PrimaryButtonWidget({
    super.key,
    required this.label,
    this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 26),
        decoration: BoxDecoration(
          color: const Color(0XFFb370ff),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: const TextStyle(
                color: Color(0XFF1D0E44),
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            Icon(icon, color: const Color(0XFF1D0E44)),
          ],
        ),
      ),
    );
  }
}
