import 'package:flutter/material.dart';

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
              )
            ],
          ),
        ));
  }
}
