import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  final Color cardColor;
  final String startHour, startMinutes, endHour, endMinutes;

  const ScheduleCard(
      {super.key,
      required this.cardColor,
      required this.startHour,
      required this.startMinutes,
      required this.endHour,
      required this.endMinutes});

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
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 15,
                  ),
                  child: Column(children: [
                    Text(
                      startHour,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(startMinutes,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        )),
                    // Divider / VerticalDivider 는 각각 너비 / 높이를 알아야 함
                    // 따라서, 해당 정보를 강제해줄 수 있는 위젯으로 감싸야 정상적으로 노출됨
                    SizedBox(
                      height: 20,
                      child: VerticalDivider(
                        thickness: 1,
                        width: 10,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    Text(
                      endHour,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(endMinutes,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        )),
                  ]),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
