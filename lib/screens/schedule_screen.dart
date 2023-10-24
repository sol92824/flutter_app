import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/schedule_card.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  final int today = 16;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 31, 30, 30),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child: Image.asset(
                      'images/flutter.png',
                      width: 40,
                    ),
                  ),
                  const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text(
                    'MONDAY $today',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text(
                    'TODAY',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: Icon(
                      Icons.circle,
                      color: Colors.redAccent.shade700,
                      size: 8,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int i = 1; i <= 4; i++)
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 10,
                          ),
                          child: Text(
                            '${today + i}',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 32,
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ScheduleCard(
                cardColor: Colors.yellow.shade400,
                startHour: '11',
                startMinutes: '30',
                endHour: '12',
                endMinutes: '20',
                cardName: 'DESIGN METTING',
              ),
              ScheduleCard(
                cardColor: Colors.purple.shade400,
                startHour: '12',
                startMinutes: '35',
                endHour: '14',
                endMinutes: '10',
                cardName: 'DAILY PROJECT',
              ),
              ScheduleCard(
                cardColor: Colors.green.shade400,
                startHour: '15',
                startMinutes: '00',
                endHour: '16',
                endMinutes: '30',
                cardName: 'WEEKLY PLANNING',
              ),
            ],
          ),
        ));
  }
}
