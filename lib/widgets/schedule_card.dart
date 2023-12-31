import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  final Color cardColor;
  final String startHour, startMinutes, endHour, endMinutes;
  final String cardName;
  final List<String> attendeesList;

  const ScheduleCard(
      {super.key,
      required this.cardColor,
      required this.startHour,
      required this.startMinutes,
      required this.endHour,
      required this.endMinutes,
      required this.cardName,
      required this.attendeesList});

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
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
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
                ),
                // child 요소를 렌더링 영역의 최대 사이즈까지 확장시켜주는 위젯
                Expanded(
                  child: Text(
                    cardName,
                    style: const TextStyle(
                      fontSize: 47,
                      fontWeight: FontWeight.w500,
                      // 텍스트 줄간 간격 조정
                      height: 0.9,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 55,
              ),
              child: Row(
                children: [
                  for (String attendee in attendeesList)
                    if (attendeesList.indexOf(attendee) < 3)
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 20,
                        ),
                        child: Text(
                          attendee,
                          style: TextStyle(
                              color: attendee == "ME"
                                  ? Colors.black
                                  : Colors.black38,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                  // 참석자가 3명 이상일 때는 +{추가되는 인원} 텍스트 노출
                  if (attendeesList.length > 3)
                    Text(
                      "+${attendeesList.length - 3}",
                      style: const TextStyle(
                          color: Colors.black38,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
