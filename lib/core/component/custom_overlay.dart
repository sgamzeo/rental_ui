import 'package:flutter/material.dart';

class CustomOverlay extends StatelessWidget {
  const CustomOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.16, 0.57, 0.93],
          colors: [
            Color(0x00FBFBFB), // %0
            Color(0x00FBFBFB), // %0
            Color(0xFFFCFCFC), // %100
          ],
        ),
      ),
    );
  }
}
