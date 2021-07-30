import 'package:flutter/material.dart';

class BgScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF43978D),
            Color(0xFFF8F8F8),
          ],
        ),
      ),
    );
  }
}
