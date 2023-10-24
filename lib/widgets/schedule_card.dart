import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  final Color cardColor;

  const ScheduleCard({super.key, required this.cardColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: cardColor,
        ),
        // 화면의 최대로 채우려면 double.infinity
        width: double.infinity,
        height: 155,
      ),
    );
  }
}
