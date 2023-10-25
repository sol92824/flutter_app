import 'package:flutter/material.dart';

class PomodoroScreen extends StatelessWidget {
  const PomodoroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'POMOTIMER',
        ),
        backgroundColor: Colors.red.shade500,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.red.shade500,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 80,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '04',
                        style: TextStyle(
                            color: Colors.red.shade400,
                            fontSize: 50,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.circle,
                        color: Colors.red.shade200,
                        size: 8,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.circle,
                        color: Colors.red.shade200,
                        size: 8,
                      ),
                    ],
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '59',
                        style: TextStyle(
                            color: Colors.red.shade500,
                            fontSize: 50,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
